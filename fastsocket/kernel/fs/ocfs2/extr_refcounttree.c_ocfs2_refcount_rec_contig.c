
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rl_used; } ;
struct ocfs2_refcount_block {TYPE_1__ rf_records; } ;
typedef enum ocfs2_ref_rec_contig { ____Placeholder_ocfs2_ref_rec_contig } ocfs2_ref_rec_contig ;


 int REF_CONTIG_LEFT ;
 int REF_CONTIG_LEFTRIGHT ;
 int REF_CONTIG_NONE ;
 int REF_CONTIG_RIGHT ;
 int le16_to_cpu (int ) ;
 int ocfs2_refcount_rec_adjacent (struct ocfs2_refcount_block*,int) ;

__attribute__((used)) static enum ocfs2_ref_rec_contig
 ocfs2_refcount_rec_contig(struct ocfs2_refcount_block *rb,
      int index)
{
 enum ocfs2_ref_rec_contig ret = REF_CONTIG_NONE;

 if (index < le16_to_cpu(rb->rf_records.rl_used) - 1)
  ret = ocfs2_refcount_rec_adjacent(rb, index);

 if (index > 0) {
  enum ocfs2_ref_rec_contig tmp;

  tmp = ocfs2_refcount_rec_adjacent(rb, index - 1);

  if (tmp == REF_CONTIG_RIGHT) {
   if (ret == REF_CONTIG_RIGHT)
    ret = REF_CONTIG_LEFTRIGHT;
   else
    ret = REF_CONTIG_LEFT;
  }
 }

 return ret;
}
