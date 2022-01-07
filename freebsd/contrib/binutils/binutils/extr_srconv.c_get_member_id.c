
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int base2 ;
 int* ids2 ;

__attribute__((used)) static int
get_member_id (int x)
{
  if (ids2[x])
    return ids2[x];

  ids2[x] = base2++;
  return ids2[x];
}
