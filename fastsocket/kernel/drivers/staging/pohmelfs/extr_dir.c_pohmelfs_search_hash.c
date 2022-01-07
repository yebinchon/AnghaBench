
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct pohmelfs_name {scalar_t__ hash; } ;
struct pohmelfs_inode {int dummy; } ;


 struct pohmelfs_name* pohmelfs_search_hash_unprecise (struct pohmelfs_inode*,scalar_t__) ;

struct pohmelfs_name *pohmelfs_search_hash(struct pohmelfs_inode *pi, u32 hash)
{
 struct pohmelfs_name *tmp;

 tmp = pohmelfs_search_hash_unprecise(pi, hash);
 if (tmp && (tmp->hash == hash))
  return tmp;

 return ((void*)0);
}
