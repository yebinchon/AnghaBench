
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base1 ;
 int* ids1 ;

__attribute__((used)) static int
get_ordinary_id (int x)
{
  if (ids1[x])
    return ids1[x];

  ids1[x] = base1++;
  return ids1[x];
}
