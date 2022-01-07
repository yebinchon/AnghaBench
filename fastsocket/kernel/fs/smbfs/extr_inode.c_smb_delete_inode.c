
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_ino; int i_data; } ;


 int DEBUG1 (char*,int ) ;
 int PARANOIA (char*,int ) ;
 int clear_inode (struct inode*) ;
 int lock_kernel () ;
 scalar_t__ smb_close (struct inode*) ;
 int truncate_inode_pages (int *,int ) ;
 int unlock_kernel () ;

__attribute__((used)) static void
smb_delete_inode(struct inode *ino)
{
 DEBUG1("ino=%ld\n", ino->i_ino);
 truncate_inode_pages(&ino->i_data, 0);
 lock_kernel();
 if (smb_close(ino))
  PARANOIA("could not close inode %ld\n", ino->i_ino);
 unlock_kernel();
 clear_inode(ino);
}
