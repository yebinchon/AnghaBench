
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
struct gfs2_inode {scalar_t__ i_no_addr; scalar_t__ i_no_formal_ino; } ;



__attribute__((used)) static inline int gfs2_check_inum(const struct gfs2_inode *ip, u64 no_addr,
      u64 no_formal_ino)
{
 return ip->i_no_addr == no_addr && ip->i_no_formal_ino == no_formal_ino;
}
