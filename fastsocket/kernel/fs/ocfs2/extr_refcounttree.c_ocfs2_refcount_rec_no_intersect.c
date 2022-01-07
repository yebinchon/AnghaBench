
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_refcount_rec {int r_clusters; } ;


 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ ocfs2_get_ref_rec_low_cpos (struct ocfs2_refcount_rec*) ;

__attribute__((used)) static int ocfs2_refcount_rec_no_intersect(struct ocfs2_refcount_rec *prev,
        struct ocfs2_refcount_rec *next)
{
 if (ocfs2_get_ref_rec_low_cpos(prev) + le32_to_cpu(prev->r_clusters) <=
  ocfs2_get_ref_rec_low_cpos(next))
  return 1;

 return 0;
}
