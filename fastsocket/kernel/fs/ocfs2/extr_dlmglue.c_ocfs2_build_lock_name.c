
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u64 ;
typedef int u32 ;
typedef enum ocfs2_lock_type { ____Placeholder_ocfs2_lock_type } ocfs2_lock_type ;


 int BUG_ON (int) ;
 int OCFS2_LOCK_ID_MAX_LEN ;
 int OCFS2_LOCK_ID_PAD ;
 int OCFS2_NUM_LOCK_TYPES ;
 int mlog (int ,char*,char*) ;
 int mlog_entry_void () ;
 int mlog_exit_void () ;
 int ocfs2_lock_type_char (int) ;
 int snprintf (char*,int,char*,int,int ,long long,int ) ;

__attribute__((used)) static void ocfs2_build_lock_name(enum ocfs2_lock_type type,
      u64 blkno,
      u32 generation,
      char *name)
{
 int len;

 mlog_entry_void();

 BUG_ON(type >= OCFS2_NUM_LOCK_TYPES);

 len = snprintf(name, OCFS2_LOCK_ID_MAX_LEN, "%c%s%016llx%08x",
         ocfs2_lock_type_char(type), OCFS2_LOCK_ID_PAD,
         (long long)blkno, generation);

 BUG_ON(len != (OCFS2_LOCK_ID_MAX_LEN - 1));

 mlog(0, "built lock resource with name: %s\n", name);

 mlog_exit_void();
}
