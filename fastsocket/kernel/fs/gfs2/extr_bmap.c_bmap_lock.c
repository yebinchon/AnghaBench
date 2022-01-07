
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gfs2_inode {int i_rw_mutex; } ;


 int down_read (int *) ;
 int down_write (int *) ;

__attribute__((used)) static inline void bmap_lock(struct gfs2_inode *ip, int create)
{
 if (create)
  down_write(&ip->i_rw_mutex);
 else
  down_read(&ip->i_rw_mutex);
}
