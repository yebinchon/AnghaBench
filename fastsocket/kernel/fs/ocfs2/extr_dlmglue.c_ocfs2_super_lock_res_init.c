
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct ocfs2_lock_res {int l_name; } ;


 int OCFS2_LOCK_TYPE_SUPER ;
 int OCFS2_SUPER_BLOCK_BLKNO ;
 int ocfs2_build_lock_name (int ,int ,int ,int ) ;
 int ocfs2_lock_res_init_common (struct ocfs2_super*,struct ocfs2_lock_res*,int ,int *,struct ocfs2_super*) ;
 int ocfs2_lock_res_init_once (struct ocfs2_lock_res*) ;
 int ocfs2_super_lops ;

__attribute__((used)) static void ocfs2_super_lock_res_init(struct ocfs2_lock_res *res,
          struct ocfs2_super *osb)
{


 ocfs2_lock_res_init_once(res);
 ocfs2_build_lock_name(OCFS2_LOCK_TYPE_SUPER, OCFS2_SUPER_BLOCK_BLKNO,
         0, res->l_name);
 ocfs2_lock_res_init_common(osb, res, OCFS2_LOCK_TYPE_SUPER,
       &ocfs2_super_lops, osb);
}
