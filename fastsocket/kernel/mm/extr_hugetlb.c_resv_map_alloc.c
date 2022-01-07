
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resv_map {int regions; int refs; } ;


 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 struct resv_map* kmalloc (int,int ) ;
 int kref_init (int *) ;

__attribute__((used)) static struct resv_map *resv_map_alloc(void)
{
 struct resv_map *resv_map = kmalloc(sizeof(*resv_map), GFP_KERNEL);
 if (!resv_map)
  return ((void*)0);

 kref_init(&resv_map->refs);
 INIT_LIST_HEAD(&resv_map->regions);

 return resv_map;
}
