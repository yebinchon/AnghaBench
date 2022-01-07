
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int * l_recs; int l_count; int l_next_free_rec; } ;


 int BUG_ON (int) ;
 int le16_to_cpu (int ) ;
 int memmove (int *,int *,unsigned int) ;

__attribute__((used)) static void ocfs2_shift_records_right(struct ocfs2_extent_list *el)
{
 int next_free = le16_to_cpu(el->l_next_free_rec);
 int count = le16_to_cpu(el->l_count);
 unsigned int num_bytes;

 BUG_ON(!next_free);

 BUG_ON(next_free >= count);

 num_bytes = sizeof(struct ocfs2_extent_rec) * next_free;

 memmove(&el->l_recs[1], &el->l_recs[0], num_bytes);
}
