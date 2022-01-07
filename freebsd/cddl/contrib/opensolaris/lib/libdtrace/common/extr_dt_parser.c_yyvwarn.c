
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_4__ {char* dt_errmsg; } ;
typedef TYPE_1__ dtrace_hdl_t ;
struct TYPE_5__ {TYPE_1__* pcb_hdl; scalar_t__ pcb_fileptr; int pcb_filetag; int pcb_region; } ;


 int D_SYNTAX ;
 int dt_errtag (int ) ;
 int dt_set_errmsg (TYPE_1__*,int ,int ,int ,int ,char const*,int ) ;
 int snprintf (char*,size_t,char*,...) ;
 char* strchr (char const*,char) ;
 size_t strlen (char*) ;
 int yylineno ;
 TYPE_2__* yypcb ;
 char* yytext ;

void
yyvwarn(const char *format, va_list ap)
{
 if (yypcb == ((void*)0))
  return;

 dt_set_errmsg(yypcb->pcb_hdl, dt_errtag(D_SYNTAX), yypcb->pcb_region,
     yypcb->pcb_filetag, yypcb->pcb_fileptr ? yylineno : 0, format, ap);

 if (strchr(format, '\n') == ((void*)0)) {
  dtrace_hdl_t *dtp = yypcb->pcb_hdl;
  size_t len = strlen(dtp->dt_errmsg);
  char *p, *s = dtp->dt_errmsg + len;
  size_t n = sizeof (dtp->dt_errmsg) - len;

  if (yytext[0] == '\0')
   (void) snprintf(s, n, " near end of input");
  else if (yytext[0] == '\n')
   (void) snprintf(s, n, " near end of line");
  else {
   if ((p = strchr(yytext, '\n')) != ((void*)0))
    *p = '\0';
   (void) snprintf(s, n, " near \"%s\"", yytext);
  }
 }
}
