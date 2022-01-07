
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {int xcvr_addr; scalar_t__ xcvr_id; } ;
struct et131x_adapter {TYPE_1__ Stats; } ;
struct TYPE_6__ {int value; } ;
typedef TYPE_2__ MI_IDR2_t ;
typedef TYPE_2__ MI_IDR1_t ;


 int ENODEV ;
 int MI_REGS_t ;
 int PhyMiRead (struct et131x_adapter*,int,int,int*) ;
 scalar_t__ offsetof (int ,TYPE_2__) ;

int et131x_xcvr_find(struct et131x_adapter *adapter)
{
 int status = -ENODEV;
 uint8_t xcvr_addr;
 MI_IDR1_t idr1;
 MI_IDR2_t idr2;
 uint32_t xcvr_id;


 for (xcvr_addr = 0; xcvr_addr < 32; xcvr_addr++) {

  PhyMiRead(adapter, xcvr_addr,
     (uint8_t) offsetof(MI_REGS_t, idr1),
     &idr1.value);
  PhyMiRead(adapter, xcvr_addr,
     (uint8_t) offsetof(MI_REGS_t, idr2),
     &idr2.value);

  xcvr_id = (uint32_t) ((idr1.value << 16) | idr2.value);

  if ((idr1.value != 0) && (idr1.value != 0xffff)) {
   adapter->Stats.xcvr_id = xcvr_id;
   adapter->Stats.xcvr_addr = xcvr_addr;

   status = 0;
   break;
  }
 }
 return status;
}
