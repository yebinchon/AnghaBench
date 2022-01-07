
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int list; } ;
struct TYPE_3__ {int length; } ;
struct carlfw_list_entry {TYPE_2__ h; TYPE_1__ head; } ;
struct carlfw {int desc_list_len; int desc_list_entries; } ;


 scalar_t__ le16_to_cpu (int ) ;
 int list_del (int *) ;

__attribute__((used)) static void carlfw_entry_unlink(struct carlfw *fw,
 struct carlfw_list_entry *entry)
{
 fw->desc_list_entries--;
 fw->desc_list_len -= le16_to_cpu(entry->head.length);
 list_del(&entry->h.list);
}
