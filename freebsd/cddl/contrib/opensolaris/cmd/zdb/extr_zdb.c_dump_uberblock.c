
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ub_checkpoint_txg; int ub_rootbp; scalar_t__ ub_timestamp; scalar_t__ ub_guid_sum; scalar_t__ ub_txg; scalar_t__ ub_version; scalar_t__ ub_magic; } ;
typedef TYPE_1__ uberblock_t ;
typedef char const* u_longlong_t ;
typedef scalar_t__ time_t ;
typedef int blkbuf ;


 int BP_SPRINTF_LEN ;
 int asctime (int ) ;
 int* dump_opt ;
 int localtime (scalar_t__*) ;
 int printf (char*,char const*,...) ;
 int snprintf_blkptr (char*,int,int *) ;

__attribute__((used)) static void
dump_uberblock(uberblock_t *ub, const char *header, const char *footer)
{
 time_t timestamp = ub->ub_timestamp;

 (void) printf("%s", header ? header : "");
 (void) printf("\tmagic = %016llx\n", (u_longlong_t)ub->ub_magic);
 (void) printf("\tversion = %llu\n", (u_longlong_t)ub->ub_version);
 (void) printf("\ttxg = %llu\n", (u_longlong_t)ub->ub_txg);
 (void) printf("\tguid_sum = %llu\n", (u_longlong_t)ub->ub_guid_sum);
 (void) printf("\ttimestamp = %llu UTC = %s",
     (u_longlong_t)ub->ub_timestamp, asctime(localtime(&timestamp)));
 if (dump_opt['u'] >= 3) {
  char blkbuf[BP_SPRINTF_LEN];
  snprintf_blkptr(blkbuf, sizeof (blkbuf), &ub->ub_rootbp);
  (void) printf("\trootbp = %s\n", blkbuf);
 }
 (void) printf("\tcheckpoint_txg = %llu\n",
     (u_longlong_t)ub->ub_checkpoint_txg);
 (void) printf("%s", footer ? footer : "");
}
