
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_pageio_descriptor {int pg_recoalesce; } ;


 int nfs_do_recoalesce (struct nfs_pageio_descriptor*) ;
 int nfs_pageio_doio (struct nfs_pageio_descriptor*) ;

void nfs_pageio_complete(struct nfs_pageio_descriptor *desc)
{
 for (;;) {
  nfs_pageio_doio(desc);
  if (!desc->pg_recoalesce)
   break;
  if (!nfs_do_recoalesce(desc))
   break;
 }
}
