
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_super {int dummy; } ;
struct inode {int i_sb; } ;


 struct ocfs2_super* OCFS2_SB (int ) ;
 scalar_t__ ocfs2_meta_ecc (struct ocfs2_super*) ;
 scalar_t__ ocfs2_supports_indexed_dirs (struct ocfs2_super*) ;

__attribute__((used)) static int ocfs2_new_dir_wants_trailer(struct inode *dir)
{
 struct ocfs2_super *osb = OCFS2_SB(dir->i_sb);

 return ocfs2_meta_ecc(osb) ||
  ocfs2_supports_indexed_dirs(osb);
}
