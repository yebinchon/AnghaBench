
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t dtrace_probespec_t ;
struct TYPE_11__ {int dtpd_id; } ;
typedef TYPE_1__ dtrace_probedesc_t ;
struct TYPE_12__ {int dt_macros; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_13__ {int di_id; } ;
typedef TYPE_3__ dt_ident_t ;
struct TYPE_15__ {size_t dtps_len; size_t dtps_offset; } ;
struct TYPE_14__ {char* const* pcb_sargv; int * pcb_sflagv; } ;


 int DTRACE_IDNONE ;
 size_t DTRACE_PROBESPEC_NAME ;
 size_t DTRACE_PROBESPEC_NONE ;
 int DT_IDFLG_REF ;
 int EDT_BADSPCV ;
 int EDT_BADSPEC ;
 int EINVAL ;
 int ENAMETOOLONG ;
 char* alloca (size_t) ;
 int bcopy (char const*,char*,size_t) ;
 int bzero (TYPE_1__*,int) ;
 TYPE_3__* dt_idhash_lookup (int ,char*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 TYPE_7__* dtrace_probespecs ;
 scalar_t__ errno ;
 scalar_t__ isdigit (char const) ;
 size_t snprintf (char*,int,char*,int) ;
 char* strchr (char const*,char) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;
 long strtol (char const*,char**,int) ;
 TYPE_4__* yypcb ;

int
dtrace_xstr2desc(dtrace_hdl_t *dtp, dtrace_probespec_t spec,
    const char *s, int argc, char *const argv[], dtrace_probedesc_t *pdp)
{
 size_t off, len, vlen, wlen;
 const char *p, *q, *v, *w;

 char buf[32];

 if (spec < DTRACE_PROBESPEC_NONE || spec > DTRACE_PROBESPEC_NAME)
  return (dt_set_errno(dtp, EINVAL));

 bzero(pdp, sizeof (dtrace_probedesc_t));
 p = s + strlen(s) - 1;

 do {
  for (len = 0; p >= s && *p != ':'; len++)
   p--;

  q = p + 1;
  vlen = 0;
  w = ((void*)0);
  wlen = 0;

  if ((v = strchr(q, '$')) != ((void*)0) && v < q + len) {
   vlen = (size_t)(q + len - v);
   len = (size_t)(v - q);






   if (vlen > 2 && v[1] == '$') {
    vlen--;
    v++;
   }

   if (isdigit(v[1])) {
    long i;

    errno = 0;
    i = strtol(v + 1, (char **)&w, 10);

    wlen = vlen - (w - v);

    if (i < 0 || i >= argc || errno != 0)
     return (dt_set_errno(dtp, EDT_BADSPCV));

    v = argv[i];
    vlen = strlen(v);

    if (yypcb != ((void*)0) && yypcb->pcb_sargv == argv)
     yypcb->pcb_sflagv[i] |= DT_IDFLG_REF;

   } else if (vlen > 1) {
    char *vstr = alloca(vlen);
    dt_ident_t *idp;

    (void) strncpy(vstr, v + 1, vlen - 1);
    vstr[vlen - 1] = '\0';
    idp = dt_idhash_lookup(dtp->dt_macros, vstr);

    if (idp == ((void*)0))
     return (dt_set_errno(dtp, EDT_BADSPCV));

    v = buf;
    vlen = snprintf(buf, 32, "%d", idp->di_id);

   } else
    return (dt_set_errno(dtp, EDT_BADSPCV));
  }

  if (spec == DTRACE_PROBESPEC_NONE)
   return (dt_set_errno(dtp, EDT_BADSPEC));

  if (len + vlen >= dtrace_probespecs[spec].dtps_len)
   return (dt_set_errno(dtp, ENAMETOOLONG));

  off = dtrace_probespecs[spec--].dtps_offset;
  bcopy(q, (char *)pdp + off, len);
  bcopy(v, (char *)pdp + off + len, vlen);
  bcopy(w, (char *)pdp + off + len + vlen, wlen);
 } while (--p >= s);

 pdp->dtpd_id = DTRACE_IDNONE;
 return (0);
}
