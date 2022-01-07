
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int dt_errtag_t ;
struct TYPE_2__ {scalar_t__ pcb_fileptr; int pcb_filetag; int pcb_region; int pcb_hdl; } ;


 int dt_errtag (int ) ;
 int dt_set_errmsg (int ,int ,int ,int ,int ,char const*,int ) ;
 int yylineno ;
 TYPE_1__* yypcb ;

void
xyvwarn(dt_errtag_t tag, const char *format, va_list ap)
{
 if (yypcb == ((void*)0))
  return;

 dt_set_errmsg(yypcb->pcb_hdl, dt_errtag(tag), yypcb->pcb_region,
     yypcb->pcb_filetag, yypcb->pcb_fileptr ? yylineno : 0, format, ap);
}
