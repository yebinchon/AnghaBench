
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct extent_buffer {int dummy; } ;
struct btrfs_key {int dummy; } ;


 int bin_search (struct extent_buffer*,struct btrfs_key*,int,int*) ;

int btrfs_bin_search(struct extent_buffer *eb, struct btrfs_key *key,
       int level, int *slot)
{
 return bin_search(eb, key, level, slot);
}
