
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pohmelfs_name {scalar_t__ hash; } ;



__attribute__((used)) static int pohmelfs_cmp_hash(struct pohmelfs_name *n, u32 hash)
{
 if (n->hash > hash)
  return -1;
 if (n->hash < hash)
  return 1;

 return 0;
}
