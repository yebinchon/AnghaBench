
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int msg ;


 int DBG_DATA_MSG ;
 int const TD_STATUS ;
 int const TD_TOTAL_BYTES ;
 int dbg_print (int ,char*,int,char*) ;
 int ffs_nr (int const) ;
 int scnprintf (char*,int,char*,int,int) ;

__attribute__((used)) static void dbg_done(u8 addr, const u32 token, int status)
{
 char msg[DBG_DATA_MSG];

 scnprintf(msg, sizeof(msg), "%d %02X",
    (int)(token & TD_TOTAL_BYTES) >> ffs_nr(TD_TOTAL_BYTES),
    (int)(token & TD_STATUS) >> ffs_nr(TD_STATUS));
 dbg_print(addr, "DONE", status, msg);
}
