
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_map {unsigned int hash; } ;



unsigned int
tree_map_hash (const void *item)
{
  return (((const struct tree_map *) item)->hash);
}
