
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int prev; } ;
struct nfs_pageio_descriptor {TYPE_1__ pg_list; } ;
struct nfs_page {scalar_t__ wb_index; } ;
typedef scalar_t__ pgoff_t ;


 int list_empty (TYPE_1__*) ;
 struct nfs_page* nfs_list_entry (int ) ;
 int nfs_pageio_complete (struct nfs_pageio_descriptor*) ;

void nfs_pageio_cond_complete(struct nfs_pageio_descriptor *desc, pgoff_t index)
{
 if (!list_empty(&desc->pg_list)) {
  struct nfs_page *prev = nfs_list_entry(desc->pg_list.prev);
  if (index != prev->wb_index + 1)
   nfs_pageio_complete(desc);
 }
}
