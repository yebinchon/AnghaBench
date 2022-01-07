
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {int dummy; } ;
struct inomap {struct inode* im_ipimap; } ;
struct inode {int i_sb; } ;
typedef int s64 ;
struct TYPE_2__ {int l2nbperpage; } ;


 int EIO ;
 int IAGTOLBLK (int,int ) ;
 TYPE_1__* JFS_SBI (int ) ;
 int PSIZE ;
 struct metapage* read_metapage (struct inode*,int ,int ,int ) ;

__attribute__((used)) static int diIAGRead(struct inomap * imap, int iagno, struct metapage ** mpp)
{
 struct inode *ipimap = imap->im_ipimap;
 s64 blkno;


 blkno = IAGTOLBLK(iagno, JFS_SBI(ipimap->i_sb)->l2nbperpage);


 *mpp = read_metapage(ipimap, blkno, PSIZE, 0);
 if (*mpp == ((void*)0)) {
  return -EIO;
 }

 return (0);
}
