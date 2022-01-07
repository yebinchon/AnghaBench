
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {TYPE_1__* s_bdev; } ;
struct lrd {int aggregate; scalar_t__ length; int type; scalar_t__ backchain; scalar_t__ logtid; } ;
struct jfs_log {int dummy; } ;
struct TYPE_4__ {struct jfs_log* log; } ;
struct TYPE_3__ {int bd_dev; } ;


 TYPE_2__* JFS_SBI (struct super_block*) ;
 int LOG_MOUNT ;
 int cpu_to_le16 (int ) ;
 int cpu_to_le32 (int ) ;
 int lmLog (struct jfs_log*,int *,struct lrd*,int *) ;
 int new_encode_dev (int ) ;

__attribute__((used)) static int logMOUNT(struct super_block *sb)
{
 struct jfs_log *log = JFS_SBI(sb)->log;
 struct lrd lrd;

 lrd.logtid = 0;
 lrd.backchain = 0;
 lrd.type = cpu_to_le16(LOG_MOUNT);
 lrd.length = 0;
 lrd.aggregate = cpu_to_le32(new_encode_dev(sb->s_bdev->bd_dev));
 lmLog(log, ((void*)0), &lrd, ((void*)0));

 return 0;
}
