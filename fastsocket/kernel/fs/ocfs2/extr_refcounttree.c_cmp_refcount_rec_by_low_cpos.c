
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct ocfs2_refcount_rec {int dummy; } ;


 scalar_t__ ocfs2_get_ref_rec_low_cpos (struct ocfs2_refcount_rec const*) ;

__attribute__((used)) static int cmp_refcount_rec_by_low_cpos(const void *a, const void *b)
{
 const struct ocfs2_refcount_rec *l = a, *r = b;
 u32 l_cpos = ocfs2_get_ref_rec_low_cpos(l);
 u32 r_cpos = ocfs2_get_ref_rec_low_cpos(r);

 if (l_cpos > r_cpos)
  return 1;
 if (l_cpos < r_cpos)
  return -1;
 return 0;
}
