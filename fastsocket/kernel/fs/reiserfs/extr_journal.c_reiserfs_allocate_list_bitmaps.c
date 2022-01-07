
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct reiserfs_list_bitmap {int bitmaps; int * journal_list; } ;
struct reiserfs_bitmap_node {int dummy; } ;


 int JOURNAL_NUM_BITMAPS ;
 int free_list_bitmaps (struct super_block*,struct reiserfs_list_bitmap*) ;
 int memset (int ,int ,int) ;
 int reiserfs_warning (struct super_block*,char*,char*) ;
 int vmalloc (int) ;

int reiserfs_allocate_list_bitmaps(struct super_block *sb,
       struct reiserfs_list_bitmap *jb_array,
       unsigned int bmap_nr)
{
 int i;
 int failed = 0;
 struct reiserfs_list_bitmap *jb;
 int mem = bmap_nr * sizeof(struct reiserfs_bitmap_node *);

 for (i = 0; i < JOURNAL_NUM_BITMAPS; i++) {
  jb = jb_array + i;
  jb->journal_list = ((void*)0);
  jb->bitmaps = vmalloc(mem);
  if (!jb->bitmaps) {
   reiserfs_warning(sb, "clm-2000", "unable to "
      "allocate bitmaps for journal lists");
   failed = 1;
   break;
  }
  memset(jb->bitmaps, 0, mem);
 }
 if (failed) {
  free_list_bitmaps(sb, jb_array);
  return -1;
 }
 return 0;
}
