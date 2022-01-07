
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* dt_errmsg; char* dt_filetag; char const* dt_errtag; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_5__ {int pcb_cflags; } ;


 int DTRACE_C_ETAGS ;
 int snprintf (char*,size_t,char*,...) ;
 size_t strlen (char*) ;
 char* strrchr (char*,char) ;
 int vsnprintf (char*,size_t,char const*,int ) ;
 TYPE_2__* yypcb ;

void
dt_set_errmsg(dtrace_hdl_t *dtp, const char *errtag, const char *region,
    const char *filename, int lineno, const char *format, va_list ap)
{
 size_t len, n;
 char *p, *s;

 s = dtp->dt_errmsg;
 n = sizeof (dtp->dt_errmsg);

 if (errtag != ((void*)0) && (yypcb->pcb_cflags & DTRACE_C_ETAGS))
  (void) snprintf(s, n, "[%s] ", errtag);
 else
  s[0] = '\0';

 len = strlen(dtp->dt_errmsg);
 s = dtp->dt_errmsg + len;
 n = sizeof (dtp->dt_errmsg) - len;

 if (filename == ((void*)0))
  filename = dtp->dt_filetag;

 if (filename != ((void*)0))
  (void) snprintf(s, n, "\"%s\", line %d: ", filename, lineno);
 else if (lineno != 0)
  (void) snprintf(s, n, "line %d: ", lineno);
 else if (region != ((void*)0))
  (void) snprintf(s, n, "in %s: ", region);

 len = strlen(dtp->dt_errmsg);
 s = dtp->dt_errmsg + len;
 n = sizeof (dtp->dt_errmsg) - len;
 (void) vsnprintf(s, n, format, ap);

 if ((p = strrchr(dtp->dt_errmsg, '\n')) != ((void*)0))
  *p = '\0';

 dtp->dt_errtag = errtag;
}
