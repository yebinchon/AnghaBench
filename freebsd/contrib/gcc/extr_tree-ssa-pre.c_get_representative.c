
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * bitmap ;



__attribute__((used)) static bitmap
get_representative (bitmap *map, int id)
{
  if (map[id] != ((void*)0))
    return map[id];
  return ((void*)0);
}
