
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfs_pageio_descriptor {int pg_error; scalar_t__ pg_base; scalar_t__ pg_count; int pg_list; int pg_bytes_written; TYPE_1__* pg_ops; } ;
struct TYPE_2__ {int (* pg_doio ) (struct nfs_pageio_descriptor*) ;} ;


 scalar_t__ list_empty (int *) ;
 int stub1 (struct nfs_pageio_descriptor*) ;

__attribute__((used)) static void nfs_pageio_doio(struct nfs_pageio_descriptor *desc)
{
 if (!list_empty(&desc->pg_list)) {
  int error = desc->pg_ops->pg_doio(desc);
  if (error < 0)
   desc->pg_error = error;
  else
   desc->pg_bytes_written += desc->pg_count;
 }
 if (list_empty(&desc->pg_list)) {
  desc->pg_count = 0;
  desc->pg_base = 0;
 }
}
