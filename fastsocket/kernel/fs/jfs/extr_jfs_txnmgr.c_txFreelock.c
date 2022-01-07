
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tlock {int flag; scalar_t__ next; } ;
struct jfs_inode_info {int anon_inode_list; scalar_t__ atltail; scalar_t__ atlhead; } ;
struct inode {int dummy; } ;
typedef scalar_t__ lid_t ;


 struct jfs_inode_info* JFS_IP (struct inode*) ;
 int TXN_LOCK () ;
 int TXN_UNLOCK () ;
 struct tlock* lid_to_tlock (scalar_t__) ;
 int list_del_init (int *) ;
 int tlckFREELOCK ;
 int txLockFree (scalar_t__) ;

void txFreelock(struct inode *ip)
{
 struct jfs_inode_info *jfs_ip = JFS_IP(ip);
 struct tlock *xtlck, *tlck;
 lid_t xlid = 0, lid;

 if (!jfs_ip->atlhead)
  return;

 TXN_LOCK();
 xtlck = (struct tlock *) &jfs_ip->atlhead;

 while ((lid = xtlck->next) != 0) {
  tlck = lid_to_tlock(lid);
  if (tlck->flag & tlckFREELOCK) {
   xtlck->next = tlck->next;
   txLockFree(lid);
  } else {
   xtlck = tlck;
   xlid = lid;
  }
 }

 if (jfs_ip->atlhead)
  jfs_ip->atltail = xlid;
 else {
  jfs_ip->atltail = 0;



  list_del_init(&jfs_ip->anon_inode_list);
 }
 TXN_UNLOCK();
}
