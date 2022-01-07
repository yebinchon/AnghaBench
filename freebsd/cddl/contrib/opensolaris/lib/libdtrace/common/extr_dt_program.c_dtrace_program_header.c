
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dt_provlist; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef int dt_provider_t ;
typedef int FILE ;


 char* alloca (scalar_t__) ;
 int dt_header_fmt_macro (char*,char const*) ;
 scalar_t__ dt_header_provider (TYPE_1__*,int *,int *) ;
 int * dt_list_next (int *) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int errno ;
 scalar_t__ fprintf (int *,char*,...) ;
 scalar_t__ strlen (char const*) ;
 char* strrchr (char const*,char) ;

int
dtrace_program_header(dtrace_hdl_t *dtp, FILE *out, const char *fname)
{
 dt_provider_t *pvp;
 char *mfname, *p;

 if (fname != ((void*)0)) {
  if ((p = strrchr(fname, '/')) != ((void*)0))
   fname = p + 1;

  mfname = alloca(strlen(fname) + 1);
  dt_header_fmt_macro(mfname, fname);
  if (fprintf(out, "#ifndef\t_%s\n#define\t_%s\n\n",
      mfname, mfname) < 0)
   return (dt_set_errno(dtp, errno));
 }

 if (fprintf(out, "#include <unistd.h>\n\n") < 0)
  return (-1);

 if (fprintf(out, "#ifdef\t__cplusplus\nextern \"C\" {\n#endif\n\n") < 0)
  return (-1);

 for (pvp = dt_list_next(&dtp->dt_provlist);
     pvp != ((void*)0); pvp = dt_list_next(pvp)) {
  if (dt_header_provider(dtp, pvp, out) != 0)
   return (-1);
 }

 if (fprintf(out, "\n#ifdef\t__cplusplus\n}\n#endif\n") < 0)
  return (dt_set_errno(dtp, errno));

 if (fname != ((void*)0) && fprintf(out, "\n#endif\t/* _%s */\n", mfname) < 0)
  return (dt_set_errno(dtp, errno));

 return (0);
}
