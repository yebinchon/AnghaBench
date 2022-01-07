
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fstrm_item_t ;


 int ENOMEM ;
 int item_zone ;
 int kmem_zone_init (int,char*) ;

int
xfs_filestream_init(void)
{
 item_zone = kmem_zone_init(sizeof(fstrm_item_t), "fstrm_item");
 if (!item_zone)
  return -ENOMEM;

 return 0;
}
