
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i_mode; } ;
struct gfs2_inode {TYPE_1__ i_inode; } ;


 int S_ISDIR (int ) ;

__attribute__((used)) static inline int gfs2_is_dir(const struct gfs2_inode *ip)
{
 return S_ISDIR(ip->i_inode.i_mode);
}
