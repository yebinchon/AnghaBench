
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long nr_copy_pages ;
 unsigned long nr_meta_pages ;

unsigned long snapshot_get_image_size(void)
{
 return nr_copy_pages + nr_meta_pages + 1;
}
