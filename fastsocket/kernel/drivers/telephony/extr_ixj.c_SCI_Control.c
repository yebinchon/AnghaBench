
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int c0; int c1; } ;
struct TYPE_7__ {int byte; TYPE_1__ bits; } ;
struct TYPE_8__ {int XILINXbase; TYPE_2__ pld_scrw; } ;
typedef TYPE_3__ IXJ ;






 int SCI_WaitHighSCI (TYPE_3__*) ;
 int outb_p (int ,int ) ;

__attribute__((used)) static int SCI_Control(IXJ *j, int control)
{
 switch (control) {
 case 128:
  j->pld_scrw.bits.c0 = 0;

  j->pld_scrw.bits.c1 = 0;

  break;
 case 131:
  j->pld_scrw.bits.c0 = 1;

  j->pld_scrw.bits.c1 = 0;

  break;
 case 129:
  j->pld_scrw.bits.c0 = 0;

  j->pld_scrw.bits.c1 = 1;

  break;
 case 130:
  j->pld_scrw.bits.c0 = 1;

  j->pld_scrw.bits.c1 = 1;

  break;
 default:
  return 0;
  break;
 }
 outb_p(j->pld_scrw.byte, j->XILINXbase);

 switch (control) {
 case 128:
  return 1;
  break;
 case 131:
 case 129:
 case 130:
  if (!SCI_WaitHighSCI(j))
   return 0;
  break;
 default:
  return 0;
  break;
 }
 return 1;
}
