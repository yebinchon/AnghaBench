
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* u8 ;
typedef scalar_t__ u16 ;
struct timespec {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_11__ {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {void* tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_12__ {int i_mode; TYPE_3__ i_ctime; TYPE_2__ i_mtime; struct timespec i_atime; void* i_gid; void* i_uid; scalar_t__ i_rdev; } ;
struct gfs2_inode {scalar_t__ i_no_addr; TYPE_4__ i_inode; scalar_t__ i_eattr; void* i_entries; void* i_depth; void* i_height; void* i_diskflags; scalar_t__ i_generation; scalar_t__ i_goal; scalar_t__ i_no_formal_ino; } ;
struct TYPE_9__ {int no_formal_ino; int no_addr; } ;
struct gfs2_dinode {int di_eattr; int di_entries; int di_depth; int di_height; int di_flags; int di_generation; int di_goal_meta; int di_ctime_nsec; int di_ctime; int di_mtime_nsec; int di_mtime; int di_atime_nsec; int di_atime; int di_blocks; int di_size; int di_nlink; int di_gid; int di_uid; int di_minor; int di_major; int di_mode; TYPE_1__ di_num; } ;


 int EIO ;
 scalar_t__ GFS2_DIR_MAX_DEPTH ;
 scalar_t__ GFS2_MAX_META_HEIGHT ;
 scalar_t__ MKDEV (void*,void*) ;


 int S_IFMT ;
 scalar_t__ S_ISREG (int) ;
 scalar_t__ be16_to_cpu (int ) ;
 void* be32_to_cpu (int ) ;
 scalar_t__ be64_to_cpu (int ) ;
 scalar_t__ gfs2_consist_inode (struct gfs2_inode*) ;
 int gfs2_dinode_print (struct gfs2_inode*) ;
 int gfs2_set_aops (TYPE_4__*) ;
 int gfs2_set_inode_blocks (TYPE_4__*,scalar_t__) ;
 int gfs2_set_inode_flags (TYPE_4__*) ;
 int gfs2_set_nlink (TYPE_4__*,void*) ;
 int i_size_write (TYPE_4__*,scalar_t__) ;
 scalar_t__ timespec_compare (struct timespec*,struct timespec*) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int gfs2_dinode_in(struct gfs2_inode *ip, const void *buf)
{
 const struct gfs2_dinode *str = buf;
 struct timespec atime;
 u16 height, depth;

 if (unlikely(ip->i_no_addr != be64_to_cpu(str->di_num.no_addr)))
  goto corrupt;
 ip->i_no_formal_ino = be64_to_cpu(str->di_num.no_formal_ino);
 ip->i_inode.i_mode = be32_to_cpu(str->di_mode);
 ip->i_inode.i_rdev = 0;
 switch (ip->i_inode.i_mode & S_IFMT) {
 case 129:
 case 128:
  ip->i_inode.i_rdev = MKDEV(be32_to_cpu(str->di_major),
        be32_to_cpu(str->di_minor));
  break;
 };

 ip->i_inode.i_uid = be32_to_cpu(str->di_uid);
 ip->i_inode.i_gid = be32_to_cpu(str->di_gid);
 gfs2_set_nlink(&ip->i_inode, be32_to_cpu(str->di_nlink));
 i_size_write(&ip->i_inode, be64_to_cpu(str->di_size));
 gfs2_set_inode_blocks(&ip->i_inode, be64_to_cpu(str->di_blocks));
 atime.tv_sec = be64_to_cpu(str->di_atime);
 atime.tv_nsec = be32_to_cpu(str->di_atime_nsec);
 if (timespec_compare(&ip->i_inode.i_atime, &atime) < 0)
  ip->i_inode.i_atime = atime;
 ip->i_inode.i_mtime.tv_sec = be64_to_cpu(str->di_mtime);
 ip->i_inode.i_mtime.tv_nsec = be32_to_cpu(str->di_mtime_nsec);
 ip->i_inode.i_ctime.tv_sec = be64_to_cpu(str->di_ctime);
 ip->i_inode.i_ctime.tv_nsec = be32_to_cpu(str->di_ctime_nsec);

 ip->i_goal = be64_to_cpu(str->di_goal_meta);
 ip->i_generation = be64_to_cpu(str->di_generation);

 ip->i_diskflags = be32_to_cpu(str->di_flags);
 gfs2_set_inode_flags(&ip->i_inode);
 height = be16_to_cpu(str->di_height);
 if (unlikely(height > GFS2_MAX_META_HEIGHT))
  goto corrupt;
 ip->i_height = (u8)height;

 depth = be16_to_cpu(str->di_depth);
 if (unlikely(depth > GFS2_DIR_MAX_DEPTH))
  goto corrupt;
 ip->i_depth = (u8)depth;
 ip->i_entries = be32_to_cpu(str->di_entries);

 ip->i_eattr = be64_to_cpu(str->di_eattr);
 if (S_ISREG(ip->i_inode.i_mode))
  gfs2_set_aops(&ip->i_inode);

 return 0;
corrupt:
 if (gfs2_consist_inode(ip))
  gfs2_dinode_print(ip);
 return -EIO;
}
