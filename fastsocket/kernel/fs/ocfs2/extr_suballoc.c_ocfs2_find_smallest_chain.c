
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u16 ;
struct ocfs2_chain_list {TYPE_1__* cl_recs; int cl_count; } ;
struct TYPE_2__ {int c_total; } ;


 size_t le16_to_cpu (int ) ;
 scalar_t__ le32_to_cpu (int ) ;

__attribute__((used)) static inline u16 ocfs2_find_smallest_chain(struct ocfs2_chain_list *cl)
{
 u16 curr, best;

 best = curr = 0;
 while (curr < le16_to_cpu(cl->cl_count)) {
  if (le32_to_cpu(cl->cl_recs[best].c_total) >
      le32_to_cpu(cl->cl_recs[curr].c_total))
   best = curr;
  curr++;
 }
 return best;
}
