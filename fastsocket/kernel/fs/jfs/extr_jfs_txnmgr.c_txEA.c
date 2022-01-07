
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tid_t ;
struct tlock {int lock; } ;
struct pxd_lock {int index; int pxd; int flag; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {int flag; } ;
typedef TYPE_1__ dxd_t ;


 int COMMIT_Inlineea ;
 int COMMIT_Nolink ;
 int DXD_EXTENT ;
 int DXD_INLINE ;
 int PXDaddress (int *,int ) ;
 int PXDlength (int *,int ) ;
 int addressDXD (TYPE_1__*) ;
 int lengthDXD (TYPE_1__*) ;
 int mlckALLOCPXD ;
 int mlckFREEPXD ;
 int set_cflag (int ,struct inode*) ;
 int test_cflag (int ,struct inode*) ;
 int tlckMAP ;
 struct tlock* txMaplock (int ,struct inode*,int ) ;

void txEA(tid_t tid, struct inode *ip, dxd_t * oldea, dxd_t * newea)
{
 struct tlock *tlck = ((void*)0);
 struct pxd_lock *maplock = ((void*)0), *pxdlock = ((void*)0);




 if (newea) {




  if (newea->flag & DXD_EXTENT) {
   tlck = txMaplock(tid, ip, tlckMAP);
   maplock = (struct pxd_lock *) & tlck->lock;
   pxdlock = (struct pxd_lock *) maplock;
   pxdlock->flag = mlckALLOCPXD;
   PXDaddress(&pxdlock->pxd, addressDXD(newea));
   PXDlength(&pxdlock->pxd, lengthDXD(newea));
   pxdlock++;
   maplock->index = 1;
  } else if (newea->flag & DXD_INLINE) {
   tlck = ((void*)0);

   set_cflag(COMMIT_Inlineea, ip);
  }
 }




 if (!test_cflag(COMMIT_Nolink, ip) && oldea->flag & DXD_EXTENT) {
  if (tlck == ((void*)0)) {
   tlck = txMaplock(tid, ip, tlckMAP);
   maplock = (struct pxd_lock *) & tlck->lock;
   pxdlock = (struct pxd_lock *) maplock;
   maplock->index = 0;
  }
  pxdlock->flag = mlckFREEPXD;
  PXDaddress(&pxdlock->pxd, addressDXD(oldea));
  PXDlength(&pxdlock->pxd, lengthDXD(oldea));
  maplock->index++;
 }
}
