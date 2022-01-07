
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef size_t u32 ;
struct kvm_ioapic {int ioregsel; int id; TYPE_1__* redirtbl; } ;
struct TYPE_2__ {int bits; } ;


 size_t IOAPIC_NUM_PINS ;



 int IOAPIC_VERSION_ID ;

__attribute__((used)) static unsigned long ioapic_read_indirect(struct kvm_ioapic *ioapic,
       unsigned long addr,
       unsigned long length)
{
 unsigned long result = 0;

 switch (ioapic->ioregsel) {
 case 128:
  result = ((((IOAPIC_NUM_PINS - 1) & 0xff) << 16)
     | (IOAPIC_VERSION_ID & 0xff));
  break;

 case 130:
 case 129:
  result = ((ioapic->id & 0xf) << 24);
  break;

 default:
  {
   u32 redir_index = (ioapic->ioregsel - 0x10) >> 1;
   u64 redir_content;

   if (redir_index < IOAPIC_NUM_PINS)
    redir_content =
     ioapic->redirtbl[redir_index].bits;
   else
    redir_content = ~0ULL;

   result = (ioapic->ioregsel & 0x1) ?
       (redir_content >> 32) & 0xffffffff :
       redir_content & 0xffffffff;
   break;
  }
 }

 return result;
}
