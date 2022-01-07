
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct tlock {int flag; struct metapage* mp; int ip; } ;
struct tblock {TYPE_3__* sb; } ;
struct metapage {int logical_size; int index; scalar_t__ lid; } ;
struct TYPE_4__ {int pxd; void* l2linesize; void* type; } ;
struct TYPE_5__ {TYPE_1__ redopage; } ;
struct lrd {int backchain; void* type; TYPE_2__ log; } ;
struct jfs_log {int dummy; } ;
typedef int pxd_t ;
struct TYPE_6__ {int s_blocksize_bits; } ;


 int L2DATASLOTSIZE ;
 int LOG_DATA ;
 int LOG_REDOPAGE ;
 int PXDaddress (int *,int ) ;
 int PXDlength (int *,int) ;
 void* cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int discard_metapage (struct metapage*) ;
 int grab_metapage (struct metapage*) ;
 scalar_t__ jfs_dirtable_inline (int ) ;
 int lmLog (struct jfs_log*,struct tblock*,struct lrd*,struct tlock*) ;
 int metapage_homeok (struct metapage*) ;
 int tlckWRITEPAGE ;

__attribute__((used)) static int dataLog(struct jfs_log * log, struct tblock * tblk, struct lrd * lrd,
     struct tlock * tlck)
{
 struct metapage *mp;
 pxd_t *pxd;

 mp = tlck->mp;


 lrd->log.redopage.type = cpu_to_le16(LOG_DATA);
 lrd->log.redopage.l2linesize = cpu_to_le16(L2DATASLOTSIZE);

 pxd = &lrd->log.redopage.pxd;


 lrd->type = cpu_to_le16(LOG_REDOPAGE);

 if (jfs_dirtable_inline(tlck->ip)) {




  mp->lid = 0;
  grab_metapage(mp);
  metapage_homeok(mp);
  discard_metapage(mp);
  tlck->mp = ((void*)0);
  return 0;
 }

 PXDaddress(pxd, mp->index);
 PXDlength(pxd, mp->logical_size >> tblk->sb->s_blocksize_bits);

 lrd->backchain = cpu_to_le32(lmLog(log, tblk, lrd, tlck));


 tlck->flag |= tlckWRITEPAGE;

 return 0;
}
