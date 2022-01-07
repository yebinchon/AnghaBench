
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_dx_hinfo {int minor_hash; } ;


 unsigned int __ocfs2_dx_dir_hash_idx (struct ocfs2_super*,int ) ;

__attribute__((used)) static inline unsigned int ocfs2_dx_dir_hash_idx(struct ocfs2_super *osb,
       struct ocfs2_dx_hinfo *hinfo)
{
 return __ocfs2_dx_dir_hash_idx(osb, hinfo->minor_hash);
}
