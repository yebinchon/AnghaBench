
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_extent_rec {int dummy; } ;
struct ocfs2_extent_list {int l_next_free_rec; int * l_recs; } ;


 int BUG_ON (int) ;
 int cpu_to_le16 (int) ;
 int le16_to_cpu (int ) ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 scalar_t__ ocfs2_is_empty_extent (int *) ;

__attribute__((used)) static void ocfs2_remove_empty_extent(struct ocfs2_extent_list *el)
{
 int size, num_recs = le16_to_cpu(el->l_next_free_rec);

 BUG_ON(num_recs == 0);

 if (ocfs2_is_empty_extent(&el->l_recs[0])) {
  num_recs--;
  size = num_recs * sizeof(struct ocfs2_extent_rec);
  memmove(&el->l_recs[0], &el->l_recs[1], size);
  memset(&el->l_recs[num_recs], 0,
         sizeof(struct ocfs2_extent_rec));
  el->l_next_free_rec = cpu_to_le16(num_recs);
 }
}
