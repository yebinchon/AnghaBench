
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct nf_queue_entry {TYPE_1__* elem; TYPE_2__* skb; scalar_t__ outdev; scalar_t__ indev; } ;
struct nf_bridge_info {scalar_t__ physoutdev; scalar_t__ physindev; } ;
struct TYPE_4__ {struct nf_bridge_info* nf_bridge; } ;
struct TYPE_3__ {int owner; } ;


 int dev_put (scalar_t__) ;
 int module_put (int ) ;

__attribute__((used)) static void nf_queue_entry_release_refs(struct nf_queue_entry *entry)
{

 if (entry->indev)
  dev_put(entry->indev);
 if (entry->outdev)
  dev_put(entry->outdev);
 module_put(entry->elem->owner);
}
