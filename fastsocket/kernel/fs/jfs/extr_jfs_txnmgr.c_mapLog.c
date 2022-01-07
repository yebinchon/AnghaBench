
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ulong ;
struct tlock {int type; int flag; int lock; } ;
struct tblock {int dummy; } ;
struct pxd_lock {int index; int flag; int pxd; } ;
struct TYPE_5__ {int pxd; void* nxd; void* type; } ;
struct TYPE_4__ {int pxd; } ;
struct TYPE_6__ {TYPE_2__ updatemap; TYPE_1__ redopage; } ;
struct lrd {void* backchain; TYPE_3__ log; void* type; } ;
struct jfs_log {int dummy; } ;
typedef int pxd_t ;


 int LOG_ALLOCPXD ;
 int LOG_FREEPXD ;
 int LOG_NOREDOPAGE ;
 int LOG_UPDATEMAP ;
 scalar_t__ addressPXD (int *) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int jfs_info (char*,int ,int ) ;
 int lengthPXD (int *) ;
 int lmLog (struct jfs_log*,struct tblock*,struct lrd*,int *) ;
 int mlckALLOCPXD ;
 int tlckRELOCATE ;
 int tlckUPDATEMAP ;

__attribute__((used)) static void mapLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
     struct tlock * tlck)
{
 struct pxd_lock *pxdlock;
 int i, nlock;
 pxd_t *pxd;
 if (tlck->type & tlckRELOCATE) {



  lrd->type = cpu_to_le16(LOG_NOREDOPAGE);
  pxdlock = (struct pxd_lock *) & tlck->lock;
  pxd = &lrd->log.redopage.pxd;
  *pxd = pxdlock->pxd;
  lrd->backchain = cpu_to_le32(lmLog(log, tblk, lrd, ((void*)0)));
  lrd->type = cpu_to_le16(LOG_UPDATEMAP);
  lrd->log.updatemap.type = cpu_to_le16(LOG_FREEPXD);
  lrd->log.updatemap.nxd = cpu_to_le16(1);
  lrd->log.updatemap.pxd = pxdlock->pxd;
  lrd->backchain = cpu_to_le32(lmLog(log, tblk, lrd, ((void*)0)));




  tlck->flag |= tlckUPDATEMAP;
  return;
 }





 else {





  lrd->type = cpu_to_le16(LOG_UPDATEMAP);
  pxdlock = (struct pxd_lock *) & tlck->lock;
  nlock = pxdlock->index;
  for (i = 0; i < nlock; i++, pxdlock++) {
   if (pxdlock->flag & mlckALLOCPXD)
    lrd->log.updatemap.type =
        cpu_to_le16(LOG_ALLOCPXD);
   else
    lrd->log.updatemap.type =
        cpu_to_le16(LOG_FREEPXD);
   lrd->log.updatemap.nxd = cpu_to_le16(1);
   lrd->log.updatemap.pxd = pxdlock->pxd;
   lrd->backchain =
       cpu_to_le32(lmLog(log, tblk, lrd, ((void*)0)));
   jfs_info("mapLog: xaddr:0x%lx xlen:0x%x",
     (ulong) addressPXD(&pxdlock->pxd),
     lengthPXD(&pxdlock->pxd));
  }


  tlck->flag |= tlckUPDATEMAP;
 }
}
