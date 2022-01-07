
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t lid_t ;
struct TYPE_8__ {size_t freelock; scalar_t__ tlocksInUse; int freelockwait; } ;
struct TYPE_7__ {size_t next; } ;
struct TYPE_6__ {int txLockAlloc_freelock; int txLockAlloc; } ;
struct TYPE_5__ {int maxlid; } ;


 int HIGHWATERMARK (int ,size_t) ;
 int INCREMENT (int ) ;
 int TXN_SLEEP (int *) ;
 TYPE_4__ TxAnchor ;
 TYPE_3__* TxLock ;
 scalar_t__ TxLockHWM ;
 TYPE_2__ TxStat ;
 int jfsSyncThread ;
 int jfs_info (char*) ;
 int jfs_tlocks_low ;
 TYPE_1__ stattx ;
 int wake_up_process (int ) ;

__attribute__((used)) static lid_t txLockAlloc(void)
{
 lid_t lid;

 INCREMENT(TxStat.txLockAlloc);
 if (!TxAnchor.freelock) {
  INCREMENT(TxStat.txLockAlloc_freelock);
 }

 while (!(lid = TxAnchor.freelock))
  TXN_SLEEP(&TxAnchor.freelockwait);
 TxAnchor.freelock = TxLock[lid].next;
 HIGHWATERMARK(stattx.maxlid, lid);
 if ((++TxAnchor.tlocksInUse > TxLockHWM) && (jfs_tlocks_low == 0)) {
  jfs_info("txLockAlloc tlocks low");
  jfs_tlocks_low = 1;
  wake_up_process(jfsSyncThread);
 }

 return lid;
}
