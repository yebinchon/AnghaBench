
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_15__ {int high; int low; } ;
struct TYPE_10__ {int reg; } ;
struct TYPE_11__ {TYPE_1__ xr0; } ;
struct TYPE_12__ {TYPE_2__ XOP; } ;
struct TYPE_13__ {TYPE_3__ XOP_REGS; } ;
struct TYPE_14__ {TYPE_4__ m_DAAShadowRegs; scalar_t__ XILINXbase; } ;
typedef TYPE_5__ IXJ ;
typedef TYPE_6__ BYTES ;


 int ALISDAA_ID_BYTE ;
 int SCI_Control (TYPE_5__*,int ) ;
 int SCI_Enable_DAA ;
 int SCI_End ;
 int SCI_Prepare (TYPE_5__*) ;
 void* inb_p (scalar_t__) ;
 int ixjdebug ;
 int outb_p (int,scalar_t__) ;
 int printk (char*,int,int) ;

__attribute__((used)) static char daa_int_read(IXJ *j)
{
 BYTES bytes;

 if (!SCI_Prepare(j))
  return 0;

 bytes.high = 0x38;
 bytes.low = 0x00;
 outb_p(bytes.high, j->XILINXbase + 0x03);
 outb_p(bytes.low, j->XILINXbase + 0x02);

 if (!SCI_Control(j, SCI_Enable_DAA))
  return 0;

 bytes.high = inb_p(j->XILINXbase + 0x03);
 bytes.low = inb_p(j->XILINXbase + 0x02);
 if (bytes.low != ALISDAA_ID_BYTE) {
  if (ixjdebug & 0x0001)
   printk("Cannot read DAA ID Byte high = %d low = %d\n", bytes.high, bytes.low);
  return 0;
 }
 if (!SCI_Control(j, SCI_Enable_DAA))
  return 0;
 if (!SCI_Control(j, SCI_End))
  return 0;

 bytes.high = inb_p(j->XILINXbase + 0x03);
 bytes.low = inb_p(j->XILINXbase + 0x02);

 j->m_DAAShadowRegs.XOP_REGS.XOP.xr0.reg = bytes.high;

 return 1;
}
