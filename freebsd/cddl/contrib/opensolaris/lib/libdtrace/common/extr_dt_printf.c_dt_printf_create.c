
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint_t ;
typedef int name ;
struct TYPE_13__ {int dtc_ctfmodel; } ;
struct TYPE_14__ {TYPE_1__ dt_conf; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_15__ {char* pfv_format; scalar_t__ pfv_argc; TYPE_4__* pfv_argv; TYPE_2__* pfv_dtp; scalar_t__ pfv_flags; } ;
typedef TYPE_3__ dt_pfargv_t ;
struct TYPE_16__ {size_t pfd_preflen; char const* pfd_prefix; int pfd_flags; int pfd_prec; int pfd_width; struct TYPE_16__* pfd_next; int * pfd_conv; } ;
typedef TYPE_4__ dt_pfargd_t ;


 int CTF_MODEL_LP64 ;
 int DT_PFCONV_AGG ;
 int DT_PFCONV_ALT ;
 int DT_PFCONV_DYNPREC ;
 int DT_PFCONV_DYNWIDTH ;
 int DT_PFCONV_GROUP ;
 int DT_PFCONV_LEFT ;
 int DT_PFCONV_SPACE ;
 int DT_PFCONV_SPOS ;
 int DT_PFCONV_ZPAD ;
 int EDT_COMPILER ;
 int EDT_NOMEM ;
 int bzero (TYPE_4__*,int) ;
 int * dt_pfdict_lookup (TYPE_2__*,char*) ;
 int dt_printf_destroy (TYPE_3__*) ;
 TYPE_3__* dt_printf_error (TYPE_2__*,int ) ;
 int free (TYPE_3__*) ;
 int isdigit (char) ;
 void* malloc (int) ;
 char* strchr (char const*,char) ;
 char* strdup (char const*) ;
 size_t strlen (char const*) ;
 int yywarn (char*,scalar_t__,...) ;

dt_pfargv_t *
dt_printf_create(dtrace_hdl_t *dtp, const char *s)
{
 dt_pfargd_t *pfd, *nfd = ((void*)0);
 dt_pfargv_t *pfv;
 const char *p, *q;
 char *format;

 if ((pfv = malloc(sizeof (dt_pfargv_t))) == ((void*)0) ||
     (format = strdup(s)) == ((void*)0)) {
  free(pfv);
  return (dt_printf_error(dtp, EDT_NOMEM));
 }

 pfv->pfv_format = format;
 pfv->pfv_argv = ((void*)0);
 pfv->pfv_argc = 0;
 pfv->pfv_flags = 0;
 pfv->pfv_dtp = dtp;

 for (q = format; (p = strchr(q, '%')) != ((void*)0); q = *p ? p + 1 : p) {
  uint_t namelen = 0;
  int digits = 0;
  int dot = 0;

  char name[8];
  char c;
  int n;

  if ((pfd = malloc(sizeof (dt_pfargd_t))) == ((void*)0)) {
   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_NOMEM));
  }

  if (pfv->pfv_argv != ((void*)0))
   nfd->pfd_next = pfd;
  else
   pfv->pfv_argv = pfd;

  bzero(pfd, sizeof (dt_pfargd_t));
  pfv->pfv_argc++;
  nfd = pfd;

  if (p > q) {
   pfd->pfd_preflen = (size_t)(p - q);
   pfd->pfd_prefix = q;
  }

  fmt_switch:
  switch (c = *++p) {
  case '0': case '1': case '2': case '3': case '4':
  case '5': case '6': case '7': case '8': case '9':
   if (dot == 0 && digits == 0 && c == '0') {
    pfd->pfd_flags |= DT_PFCONV_ZPAD;
    pfd->pfd_flags &= ~DT_PFCONV_LEFT;
    goto fmt_switch;
   }

   for (n = 0; isdigit(c); c = *++p)
    n = n * 10 + c - '0';

   if (dot)
    pfd->pfd_prec = n;
   else
    pfd->pfd_width = n;

   p--;
   digits++;
   goto fmt_switch;

  case '#':
   pfd->pfd_flags |= DT_PFCONV_ALT;
   goto fmt_switch;

  case '*':
   n = dot ? DT_PFCONV_DYNPREC : DT_PFCONV_DYNWIDTH;

   if (pfd->pfd_flags & n) {
    yywarn("format conversion #%u has more than "
        "one '*' specified for the output %s\n",
        pfv->pfv_argc, n ? "precision" : "width");

    dt_printf_destroy(pfv);
    return (dt_printf_error(dtp, EDT_COMPILER));
   }

   pfd->pfd_flags |= n;
   goto fmt_switch;

  case '+':
   pfd->pfd_flags |= DT_PFCONV_SPOS;
   goto fmt_switch;

  case '-':
   pfd->pfd_flags |= DT_PFCONV_LEFT;
   pfd->pfd_flags &= ~DT_PFCONV_ZPAD;
   goto fmt_switch;

  case '.':
   if (dot++ != 0) {
    yywarn("format conversion #%u has more than "
        "one '.' specified\n", pfv->pfv_argc);

    dt_printf_destroy(pfv);
    return (dt_printf_error(dtp, EDT_COMPILER));
   }
   digits = 0;
   goto fmt_switch;

  case '?':
   if (dtp->dt_conf.dtc_ctfmodel == CTF_MODEL_LP64)
    pfd->pfd_width = 16;
   else
    pfd->pfd_width = 8;
   goto fmt_switch;

  case '@':
   pfd->pfd_flags |= DT_PFCONV_AGG;
   goto fmt_switch;

  case '\'':
   pfd->pfd_flags |= DT_PFCONV_GROUP;
   goto fmt_switch;

  case ' ':
   pfd->pfd_flags |= DT_PFCONV_SPACE;
   goto fmt_switch;

  case '$':
   yywarn("format conversion #%u uses unsupported "
       "positional format (%%n$)\n", pfv->pfv_argc);

   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_COMPILER));

  case '%':
   if (p[-1] == '%')
    goto default_lbl;

   yywarn("format conversion #%u cannot be combined "
       "with other format flags: %%%%\n", pfv->pfv_argc);

   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_COMPILER));

  case '\0':
   yywarn("format conversion #%u name expected before "
       "end of format string\n", pfv->pfv_argc);

   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_COMPILER));

  case 'h':
  case 'l':
  case 'L':
  case 'w':
   if (namelen < sizeof (name) - 2)
    name[namelen++] = c;
   goto fmt_switch;

  default_lbl:
  default:
   name[namelen++] = c;
   name[namelen] = '\0';
  }

  pfd->pfd_conv = dt_pfdict_lookup(dtp, name);

  if (pfd->pfd_conv == ((void*)0)) {
   yywarn("format conversion #%u is undefined: %%%s\n",
       pfv->pfv_argc, name);
   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_COMPILER));
  }
 }

 if (*q != '\0' || *format == '\0') {
  if ((pfd = malloc(sizeof (dt_pfargd_t))) == ((void*)0)) {
   dt_printf_destroy(pfv);
   return (dt_printf_error(dtp, EDT_NOMEM));
  }

  if (pfv->pfv_argv != ((void*)0))
   nfd->pfd_next = pfd;
  else
   pfv->pfv_argv = pfd;

  bzero(pfd, sizeof (dt_pfargd_t));
  pfv->pfv_argc++;

  pfd->pfd_prefix = q;
  pfd->pfd_preflen = strlen(q);
 }

 return (pfv);
}
