
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ sysv_zone_t ;
struct inode {int i_sb; } ;


 int mark_inode_dirty (struct inode*) ;
 int sysv_free_block (int ,scalar_t__) ;

__attribute__((used)) static inline void free_data(struct inode *inode, sysv_zone_t *p, sysv_zone_t *q)
{
 for ( ; p < q ; p++) {
  sysv_zone_t nr = *p;
  if (nr) {
   *p = 0;
   sysv_free_block(inode->i_sb, nr);
   mark_inode_dirty(inode);
  }
 }
}
