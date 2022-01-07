
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_long ;
struct inode {int i_size; TYPE_1__* i_sb; } ;
struct TYPE_2__ {int s_blocksize; } ;



__attribute__((used)) static inline u_long
dir_blocks(struct inode *ip)
{
 u_long bsize = ip->i_sb->s_blocksize;
 return (ip->i_size + bsize - 1) & ~(bsize - 1);
}
