
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct carl9170fw_fix_entry {scalar_t__ address; } ;
struct TYPE_2__ {int length; } ;
struct carl9170fw_fix_desc {struct carl9170fw_fix_entry* data; TYPE_1__ head; } ;
typedef scalar_t__ __le32 ;


 int le16_to_cpu (int ) ;

__attribute__((used)) static struct carl9170fw_fix_entry *
scan_for_similar_fix(struct carl9170fw_fix_desc *fix, __le32 address)
{
 unsigned int i, entries;

 entries = (le16_to_cpu(fix->head.length) - sizeof(*fix)) /
     sizeof(struct carl9170fw_fix_entry);

 for (i = 0; i < entries; i++) {
  if (address == fix->data[i].address)
   return &fix->data[i];
 }

 return ((void*)0);
}
