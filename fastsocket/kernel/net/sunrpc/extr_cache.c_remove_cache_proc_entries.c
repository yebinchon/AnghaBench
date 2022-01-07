
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct net {int dummy; } ;
struct TYPE_4__ {int * proc_ent; scalar_t__ content_ent; scalar_t__ channel_ent; scalar_t__ flush_ent; } ;
struct TYPE_3__ {TYPE_2__ procfs; } ;
struct cache_detail {char* name; TYPE_1__ u; } ;


 int * proc_net_rpc ;
 int remove_proc_entry (char*,int *) ;

__attribute__((used)) static void remove_cache_proc_entries(struct cache_detail *cd, struct net *net)
{
 if (cd->u.procfs.proc_ent == ((void*)0))
  return;
 if (cd->u.procfs.flush_ent)
  remove_proc_entry("flush", cd->u.procfs.proc_ent);
 if (cd->u.procfs.channel_ent)
  remove_proc_entry("channel", cd->u.procfs.proc_ent);
 if (cd->u.procfs.content_ent)
  remove_proc_entry("content", cd->u.procfs.proc_ent);
 cd->u.procfs.proc_ent = ((void*)0);
 remove_proc_entry(cd->name, proc_net_rpc);
}
