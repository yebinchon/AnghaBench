
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int dtrace_hdl_t ;
typedef int dt_pfargv_t ;
struct TYPE_2__ {int pcb_jmpbuf; } ;


 int dt_set_errno (int *,int) ;
 int longjmp (int ,int) ;
 TYPE_1__* yypcb ;

__attribute__((used)) static dt_pfargv_t *
dt_printf_error(dtrace_hdl_t *dtp, int err)
{
 if (yypcb != ((void*)0))
  longjmp(yypcb->pcb_jmpbuf, err);

 (void) dt_set_errno(dtp, err);
 return (((void*)0));
}
