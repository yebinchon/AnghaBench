
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ next; } ;
struct TYPE_5__ {TYPE_1__ list; } ;
struct carlfw_list_entry {TYPE_2__ h; } ;
struct carlfw {int desc_list; } ;
struct carl9170fw_desc_head {int dummy; } ;
struct TYPE_6__ {int list; } ;


 struct carlfw_list_entry* carlfw_desc_to_entry (struct carl9170fw_desc_head*) ;
 void* carlfw_entry_to_desc (struct carlfw_list_entry*) ;
 TYPE_3__ h ;
 scalar_t__ list_at_tail (struct carlfw_list_entry*,int *,int ) ;

void *carlfw_desc_next(struct carlfw *fw,
         struct carl9170fw_desc_head *pos)
{
 struct carlfw_list_entry *entry;

 if (!pos)
  entry = (struct carlfw_list_entry *) &fw->desc_list;
 else
  entry = carlfw_desc_to_entry(pos);

 if (list_at_tail(entry, &fw->desc_list, h.list))
  return ((void*)0);

 entry = (struct carlfw_list_entry *) entry->h.list.next;

 return carlfw_entry_to_desc(entry);
}
