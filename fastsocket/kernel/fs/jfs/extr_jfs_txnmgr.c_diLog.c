
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct tlock {int type; int flag; int lock; struct metapage* mp; } ;
struct tblock {TYPE_2__* sb; } ;
struct pxd_lock {scalar_t__ index; int flag; int pxd; } ;
struct metapage {int logical_size; int index; } ;
struct TYPE_9__ {int pxd; void* nxd; void* type; } ;
struct TYPE_8__ {void* inoext_idx; void* iagnum; } ;
struct TYPE_6__ {int pxd; void* l2linesize; void* type; } ;
struct TYPE_10__ {TYPE_4__ updatemap; TYPE_3__ noredoinoext; TYPE_1__ redopage; } ;
struct lrd {void* backchain; TYPE_5__ log; void* type; } ;
struct jfs_log {int dummy; } ;
struct commit {scalar_t__* iplist; } ;
typedef int pxd_t ;
struct TYPE_7__ {int s_blocksize_bits; } ;


 int L2INODESLOTSIZE ;
 int LOG_ALLOCPXD ;
 int LOG_FREEPXD ;
 int LOG_INODE ;
 int LOG_NOREDOINOEXT ;
 int LOG_REDOPAGE ;
 int LOG_UPDATEMAP ;
 int PXDaddress (int *,int ) ;
 int PXDlength (int *,int) ;
 int assert (int) ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 scalar_t__ i ;
 int jfs_err (char*,struct tlock*) ;
 int lmLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int mlckALLOCPXD ;
 scalar_t__ nlock ;
 int tlckEA ;
 int tlckENTRY ;
 int tlckFREE ;
 int tlckUPDATEMAP ;
 int tlckWRITEPAGE ;

__attribute__((used)) static int diLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
   struct tlock * tlck, struct commit * cd)
{
 int rc = 0;
 struct metapage *mp;
 pxd_t *pxd;
 struct pxd_lock *pxdlock;

 mp = tlck->mp;


 lrd->log.redopage.type = cpu_to_le16(LOG_INODE);
 lrd->log.redopage.l2linesize = cpu_to_le16(L2INODESLOTSIZE);

 pxd = &lrd->log.redopage.pxd;




 if (tlck->type & tlckENTRY) {

  lrd->type = cpu_to_le16(LOG_REDOPAGE);
  PXDaddress(pxd, mp->index);
  PXDlength(pxd,
     mp->logical_size >> tblk->sb->s_blocksize_bits);
  lrd->backchain = cpu_to_le32(lmLog(log, tblk, lrd, tlck));


  tlck->flag |= tlckWRITEPAGE;
 } else if (tlck->type & tlckFREE) {
  lrd->type = cpu_to_le16(LOG_NOREDOINOEXT);







  lrd->log.noredoinoext.iagnum =
      cpu_to_le32((u32) (size_t) cd->iplist[1]);
  lrd->log.noredoinoext.inoext_idx =
      cpu_to_le32((u32) (size_t) cd->iplist[2]);

  pxdlock = (struct pxd_lock *) & tlck->lock;
  *pxd = pxdlock->pxd;
  lrd->backchain = cpu_to_le32(lmLog(log, tblk, lrd, ((void*)0)));


  tlck->flag |= tlckUPDATEMAP;


  tlck->flag |= tlckWRITEPAGE;
 } else
  jfs_err("diLog: UFO type tlck:0x%p", tlck);
 return rc;
}
