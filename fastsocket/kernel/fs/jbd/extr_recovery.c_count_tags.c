
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct buffer_head {char* b_data; } ;
typedef int journal_header_t ;
struct TYPE_2__ {int t_flags; } ;
typedef TYPE_1__ journal_block_tag_t ;


 int JFS_FLAG_LAST_TAG ;
 int JFS_FLAG_SAME_UUID ;
 int cpu_to_be32 (int ) ;

__attribute__((used)) static int count_tags(struct buffer_head *bh, int size)
{
 char * tagp;
 journal_block_tag_t * tag;
 int nr = 0;

 tagp = &bh->b_data[sizeof(journal_header_t)];

 while ((tagp - bh->b_data + sizeof(journal_block_tag_t)) <= size) {
  tag = (journal_block_tag_t *) tagp;

  nr++;
  tagp += sizeof(journal_block_tag_t);
  if (!(tag->t_flags & cpu_to_be32(JFS_FLAG_SAME_UUID)))
   tagp += 16;

  if (tag->t_flags & cpu_to_be32(JFS_FLAG_LAST_TAG))
   break;
 }

 return nr;
}
