
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uchar_t ;
struct TYPE_4__ {scalar_t__* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef scalar_t__ caddr_t ;
typedef int FILE ;


 size_t DTRACEOPT_RAWBYTES ;
 scalar_t__ DTRACEOPT_UNSET ;
 char* alloca (size_t) ;
 int bcopy (char*,char*,size_t) ;
 scalar_t__ dt_printf (TYPE_1__*,int *,char*,...) ;
 scalar_t__ isprint (char) ;
 scalar_t__ isspace (char) ;

__attribute__((used)) static int
dt_print_bytes(dtrace_hdl_t *dtp, FILE *fp, caddr_t addr,
    size_t nbytes, int width, int quiet, int forceraw)
{





 int i, j, margin = 5;
 char *c = (char *)addr;

 if (nbytes == 0)
  return (0);

 if (forceraw)
  goto raw;

 if (dtp->dt_options[DTRACEOPT_RAWBYTES] != DTRACEOPT_UNSET)
  goto raw;

 for (i = 0; i < nbytes; i++) {
  if (isprint(c[i]) || isspace(c[i]) ||
      c[i] == '\b' || c[i] == '\a')
   continue;

  if (c[i] == '\0' && i > 0) {
   for (j = i + 1; j < nbytes; j++) {
    if (c[j] != '\0')
     break;
   }

   if (j != nbytes)
    break;

   if (quiet) {
    return (dt_printf(dtp, fp, "%s", c));
   } else {
    return (dt_printf(dtp, fp, " %s%*s",
        width < 0 ? " " : "", width, c));
   }
  }

  break;
 }

 if (i == nbytes) {





  char *s = alloca(nbytes + 1);
  bcopy(c, s, nbytes);
  s[nbytes] = '\0';
  return (dt_printf(dtp, fp, "  %-*s", width, s));
 }

raw:
 if (dt_printf(dtp, fp, "\n%*s      ", margin, "") < 0)
  return (-1);

 for (i = 0; i < 16; i++)
  if (dt_printf(dtp, fp, "  %c", "0123456789abcdef"[i]) < 0)
   return (-1);

 if (dt_printf(dtp, fp, "  0123456789abcdef\n") < 0)
  return (-1);


 for (i = 0; i < nbytes; i += 16) {
  if (dt_printf(dtp, fp, "%*s%5x:", margin, "", i) < 0)
   return (-1);

  for (j = i; j < i + 16 && j < nbytes; j++) {
   if (dt_printf(dtp, fp, " %02x", (uchar_t)c[j]) < 0)
    return (-1);
  }

  while (j++ % 16) {
   if (dt_printf(dtp, fp, "   ") < 0)
    return (-1);
  }

  if (dt_printf(dtp, fp, "  ") < 0)
   return (-1);

  for (j = i; j < i + 16 && j < nbytes; j++) {
   if (dt_printf(dtp, fp, "%c",
       c[j] < ' ' || c[j] > '~' ? '.' : c[j]) < 0)
    return (-1);
  }

  if (dt_printf(dtp, fp, "\n") < 0)
   return (-1);
 }

 return (0);
}
