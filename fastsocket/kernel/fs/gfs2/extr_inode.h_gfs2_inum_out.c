
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_inode {int i_no_addr; int i_no_formal_ino; } ;
struct TYPE_2__ {void* no_addr; void* no_formal_ino; } ;
struct gfs2_dirent {TYPE_1__ de_inum; } ;


 void* cpu_to_be64 (int ) ;

__attribute__((used)) static inline void gfs2_inum_out(const struct gfs2_inode *ip,
     struct gfs2_dirent *dent)
{
 dent->de_inum.no_formal_ino = cpu_to_be64(ip->i_no_formal_ino);
 dent->de_inum.no_addr = cpu_to_be64(ip->i_no_addr);
}
