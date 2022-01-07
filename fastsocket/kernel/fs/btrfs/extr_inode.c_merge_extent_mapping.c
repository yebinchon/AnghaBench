
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct extent_map_tree {int dummy; } ;
struct extent_map {scalar_t__ start; scalar_t__ block_start; int block_len; int flags; scalar_t__ len; } ;


 int BUG_ON (int) ;
 int EXTENT_FLAG_COMPRESSED ;
 scalar_t__ EXTENT_MAP_LAST_BYTE ;
 int add_extent_mapping (struct extent_map_tree*,struct extent_map*) ;
 scalar_t__ extent_map_end (struct extent_map*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int merge_extent_mapping(struct extent_map_tree *em_tree,
    struct extent_map *existing,
    struct extent_map *em,
    u64 map_start, u64 map_len)
{
 u64 start_diff;

 BUG_ON(map_start < em->start || map_start >= extent_map_end(em));
 start_diff = map_start - em->start;
 em->start = map_start;
 em->len = map_len;
 if (em->block_start < EXTENT_MAP_LAST_BYTE &&
     !test_bit(EXTENT_FLAG_COMPRESSED, &em->flags)) {
  em->block_start += start_diff;
  em->block_len -= start_diff;
 }
 return add_extent_mapping(em_tree, em);
}
