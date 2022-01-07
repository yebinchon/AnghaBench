
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct swap_map_handle {int * cur; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void release_swap_writer(struct swap_map_handle *handle)
{
 if (handle->cur)
  free_page((unsigned long)handle->cur);
 handle->cur = ((void*)0);
}
