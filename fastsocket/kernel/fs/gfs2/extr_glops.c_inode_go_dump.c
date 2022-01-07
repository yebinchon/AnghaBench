
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {int dummy; } ;
struct TYPE_2__ {int i_mode; } ;
struct gfs2_inode {TYPE_1__ i_inode; scalar_t__ i_diskflags; int i_flags; scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; } ;
struct gfs2_glock {struct gfs2_inode* gl_object; } ;


 int IF2DT (int ) ;
 int gfs2_print_dbg (struct seq_file*,char*,unsigned long long,unsigned long long,int ,int ,unsigned int,unsigned long long) ;
 scalar_t__ i_size_read (TYPE_1__*) ;

__attribute__((used)) static int inode_go_dump(struct seq_file *seq, const struct gfs2_glock *gl)
{
 const struct gfs2_inode *ip = gl->gl_object;
 if (ip == ((void*)0))
  return 0;
 gfs2_print_dbg(seq, " I: n:%llu/%llu t:%u f:0x%02lx d:0x%08x s:%llu\n",
    (unsigned long long)ip->i_no_formal_ino,
    (unsigned long long)ip->i_no_addr,
    IF2DT(ip->i_inode.i_mode), ip->i_flags,
    (unsigned int)ip->i_diskflags,
    (unsigned long long)i_size_read(&ip->i_inode));
 return 0;
}
