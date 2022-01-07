
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs4_pnfs_ds {int ds_node; int ds_count; } ;
struct TYPE_2__ {int deviceid; } ;
struct nfs4_file_layout_dsaddr {int ds_num; struct nfs4_file_layout_dsaddr* stripe_indices; struct nfs4_pnfs_ds** ds_list; TYPE_1__ id_node; } ;


 scalar_t__ atomic_dec_and_lock (int *,int *) ;
 int destroy_ds (struct nfs4_pnfs_ds*) ;
 int kfree (struct nfs4_file_layout_dsaddr*) ;
 int list_del_init (int *) ;
 int nfs4_ds_cache_lock ;
 int nfs4_print_deviceid (int *) ;
 int spin_unlock (int *) ;

void
nfs4_fl_free_deviceid(struct nfs4_file_layout_dsaddr *dsaddr)
{
 struct nfs4_pnfs_ds *ds;
 int i;

 nfs4_print_deviceid(&dsaddr->id_node.deviceid);

 for (i = 0; i < dsaddr->ds_num; i++) {
  ds = dsaddr->ds_list[i];
  if (ds != ((void*)0)) {
   if (atomic_dec_and_lock(&ds->ds_count,
      &nfs4_ds_cache_lock)) {
    list_del_init(&ds->ds_node);
    spin_unlock(&nfs4_ds_cache_lock);
    destroy_ds(ds);
   }
  }
 }
 kfree(dsaddr->stripe_indices);
 kfree(dsaddr);
}
