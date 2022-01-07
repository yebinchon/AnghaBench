
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jfs_log {int dummy; } ;


 int LOG_LOCK (struct jfs_log*) ;
 int LOG_UNLOCK (struct jfs_log*) ;
 int lmLogSync (struct jfs_log*,int) ;

void jfs_syncpt(struct jfs_log *log, int hard_sync)
{ LOG_LOCK(log);
 lmLogSync(log, hard_sync);
 LOG_UNLOCK(log);
}
