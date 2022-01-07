
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int low; int high; } ;
struct TYPE_6__ {scalar_t__ XILINXbase; } ;
typedef TYPE_1__ IXJ ;
typedef TYPE_2__ BYTES ;


 int SCI_Control (TYPE_1__*,int ) ;
 int SCI_Enable_DAA ;
 int outb_p (int ,scalar_t__) ;

__attribute__((used)) static int daa_load(BYTES * p_bytes, IXJ *j)
{
 outb_p(p_bytes->high, j->XILINXbase + 0x03);
 outb_p(p_bytes->low, j->XILINXbase + 0x02);
 if (!SCI_Control(j, SCI_Enable_DAA))
  return 0;
 else
  return 1;
}
