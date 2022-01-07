
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct TYPE_2__ {struct gfs2_sbd* s_fs_info; } ;



__attribute__((used)) static inline struct gfs2_sbd *GFS2_SB(const struct inode *inode)
{
 return inode->i_sb->s_fs_info;
}
