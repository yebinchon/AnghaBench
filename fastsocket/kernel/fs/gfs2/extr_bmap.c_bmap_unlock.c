
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_rw_mutex; } ;


 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static inline void bmap_unlock(struct gfs2_inode *ip, int create)
{
 if (create)
  up_write(&ip->i_rw_mutex);
 else
  up_read(&ip->i_rw_mutex);
}
