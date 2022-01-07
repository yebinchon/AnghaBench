
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot_handle {scalar_t__ cur; scalar_t__ prev; } ;


 int PG_UNSAFE_CLEAR ;
 int copy_last_highmem_page () ;
 int free_highmem_data () ;
 int memory_bm_free (int *,int ) ;
 scalar_t__ nr_copy_pages ;
 scalar_t__ nr_meta_pages ;
 int orig_bm ;

void snapshot_write_finalize(struct snapshot_handle *handle)
{
 copy_last_highmem_page();

 if (handle->prev && handle->cur > nr_meta_pages + nr_copy_pages) {
  memory_bm_free(&orig_bm, PG_UNSAFE_CLEAR);
  free_highmem_data();
 }
}
