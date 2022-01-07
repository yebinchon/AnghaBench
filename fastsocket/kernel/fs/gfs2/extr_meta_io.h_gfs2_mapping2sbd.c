
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {TYPE_1__* i_sb; } ;
struct gfs2_sbd {int dummy; } ;
struct gfs2_glock {struct gfs2_sbd* gl_sbd; } ;
struct address_space {int * a_ops; struct inode* host; } ;
struct TYPE_2__ {struct gfs2_sbd* s_fs_info; } ;


 int gfs2_meta_aops ;

__attribute__((used)) static inline struct gfs2_sbd *gfs2_mapping2sbd(struct address_space *mapping)
{
 struct inode *inode = mapping->host;
 if (mapping->a_ops == &gfs2_meta_aops)
  return (((struct gfs2_glock *)mapping) - 1)->gl_sbd;
 else
  return inode->i_sb->s_fs_info;
}
