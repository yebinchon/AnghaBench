
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udf_bitmap {int s_nr_groups; scalar_t__* s_block_bitmap; } ;
struct buffer_head {int dummy; } ;


 int PAGE_SIZE ;
 int brelse (scalar_t__) ;
 int kfree (struct udf_bitmap*) ;
 int vfree (struct udf_bitmap*) ;

__attribute__((used)) static void udf_sb_free_bitmap(struct udf_bitmap *bitmap)
{
 int i;
 int nr_groups = bitmap->s_nr_groups;
 int size = sizeof(struct udf_bitmap) + (sizeof(struct buffer_head *) *
      nr_groups);

 for (i = 0; i < nr_groups; i++)
  if (bitmap->s_block_bitmap[i])
   brelse(bitmap->s_block_bitmap[i]);

 if (size <= PAGE_SIZE)
  kfree(bitmap);
 else
  vfree(bitmap);
}
