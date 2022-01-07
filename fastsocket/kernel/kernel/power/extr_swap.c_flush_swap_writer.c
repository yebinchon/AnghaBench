
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {scalar_t__ cur_swap; scalar_t__ cur; } ;


 int EINVAL ;
 int write_page (scalar_t__,scalar_t__,int *) ;

__attribute__((used)) static int flush_swap_writer(struct swap_map_handle *handle)
{
 if (handle->cur && handle->cur_swap)
  return write_page(handle->cur, handle->cur_swap, ((void*)0));
 else
  return -EINVAL;
}
