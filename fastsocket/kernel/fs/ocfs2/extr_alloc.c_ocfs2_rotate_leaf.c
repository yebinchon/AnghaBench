
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_extent_rec {int e_cpos; } ;
struct ocfs2_extent_list {struct ocfs2_extent_rec* l_recs; int l_count; int l_next_free_rec; } ;


 int BUG_ON (int) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 int memmove (struct ocfs2_extent_rec*,struct ocfs2_extent_rec*,int) ;
 int mlog (int ,char*,scalar_t__,int,int,int,int) ;
 int ocfs2_is_empty_extent (struct ocfs2_extent_rec*) ;

__attribute__((used)) static void ocfs2_rotate_leaf(struct ocfs2_extent_list *el,
         struct ocfs2_extent_rec *insert_rec)
{
 int i, insert_index, next_free, has_empty, num_bytes;
 u32 insert_cpos = le32_to_cpu(insert_rec->e_cpos);
 struct ocfs2_extent_rec *rec;

 next_free = le16_to_cpu(el->l_next_free_rec);
 has_empty = ocfs2_is_empty_extent(&el->l_recs[0]);

 BUG_ON(!next_free);


 BUG_ON(el->l_next_free_rec == el->l_count && !has_empty);





 if (has_empty) {





  for(i = 0; i < (next_free - 1); i++)
   el->l_recs[i] = el->l_recs[i+1];

  next_free--;
 }




 for(i = 0; i < next_free; i++) {
  rec = &el->l_recs[i];

  if (insert_cpos < le32_to_cpu(rec->e_cpos))
   break;
 }
 insert_index = i;

 mlog(0, "ins %u: index %d, has_empty %d, next_free %d, count %d\n",
      insert_cpos, insert_index, has_empty, next_free, le16_to_cpu(el->l_count));

 BUG_ON(insert_index < 0);
 BUG_ON(insert_index >= le16_to_cpu(el->l_count));
 BUG_ON(insert_index > next_free);




 if (insert_index != next_free) {
  BUG_ON(next_free >= le16_to_cpu(el->l_count));

  num_bytes = next_free - insert_index;
  num_bytes *= sizeof(struct ocfs2_extent_rec);
  memmove(&el->l_recs[insert_index + 1],
   &el->l_recs[insert_index],
   num_bytes);
 }






 next_free++;
 el->l_next_free_rec = cpu_to_le16(next_free);



 BUG_ON(le16_to_cpu(el->l_next_free_rec) > le16_to_cpu(el->l_count));

 el->l_recs[insert_index] = *insert_rec;

}
