
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* dump_opt ;
 int printf (char*) ;
 int zfs_dbgmsg_print (char*) ;

__attribute__((used)) static void
dump_debug_buffer()
{
 if (dump_opt['G']) {
  (void) printf("\n");
  zfs_dbgmsg_print("zdb");
 }
}
