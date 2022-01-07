
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_sb_info {int nr_erasing_blocks; int nr_free_blocks; int free_list; int erase_pending_list; int erasable_list; int dirty_list; int very_dirty_list; int clean_list; } ;


 int count_list (int *) ;
 int pseudo_random ;
 int rotate_list (int *,int) ;

void jffs2_rotate_lists(struct jffs2_sb_info *c)
{
 uint32_t x;
 uint32_t rotateby;

 x = count_list(&c->clean_list);
 if (x) {
  rotateby = pseudo_random % x;
  rotate_list((&c->clean_list), rotateby);
 }

 x = count_list(&c->very_dirty_list);
 if (x) {
  rotateby = pseudo_random % x;
  rotate_list((&c->very_dirty_list), rotateby);
 }

 x = count_list(&c->dirty_list);
 if (x) {
  rotateby = pseudo_random % x;
  rotate_list((&c->dirty_list), rotateby);
 }

 x = count_list(&c->erasable_list);
 if (x) {
  rotateby = pseudo_random % x;
  rotate_list((&c->erasable_list), rotateby);
 }

 if (c->nr_erasing_blocks) {
  rotateby = pseudo_random % c->nr_erasing_blocks;
  rotate_list((&c->erase_pending_list), rotateby);
 }

 if (c->nr_free_blocks) {
  rotateby = pseudo_random % c->nr_free_blocks;
  rotate_list((&c->free_list), rotateby);
 }
}
