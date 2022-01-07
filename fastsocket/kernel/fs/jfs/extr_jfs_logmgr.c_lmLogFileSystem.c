
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct logsuper {TYPE_1__* active; } ;
struct lbuf {scalar_t__ l_ldata; } ;
struct jfs_sb_info {char* uuid; int aggregate; } ;
struct jfs_log {int dummy; } ;
struct TYPE_2__ {int uuid; } ;


 int EIO ;
 int EMFILE ;
 int MAX_ACTIVE ;
 char* NULL_UUID ;
 int jfs_warn (char*) ;
 int lbmDirectWrite (struct jfs_log*,struct lbuf*,int) ;
 int lbmFREE ;
 int lbmFree (struct lbuf*) ;
 int lbmIOWait (struct lbuf*,int ) ;
 int lbmRELEASE ;
 int lbmRead (struct jfs_log*,int,struct lbuf**) ;
 int lbmSYNC ;
 int lbmWRITE ;
 int memcmp (int ,char*,int) ;
 int memcpy (int ,char*,int) ;

__attribute__((used)) static int lmLogFileSystem(struct jfs_log * log, struct jfs_sb_info *sbi,
      int activate)
{
 int rc = 0;
 int i;
 struct logsuper *logsuper;
 struct lbuf *bpsuper;
 char *uuid = sbi->uuid;




 if ((rc = lbmRead(log, 1, &bpsuper)))
  return rc;

 logsuper = (struct logsuper *) bpsuper->l_ldata;
 if (activate) {
  for (i = 0; i < MAX_ACTIVE; i++)
   if (!memcmp(logsuper->active[i].uuid, NULL_UUID, 16)) {
    memcpy(logsuper->active[i].uuid, uuid, 16);
    sbi->aggregate = i;
    break;
   }
  if (i == MAX_ACTIVE) {
   jfs_warn("Too many file systems sharing journal!");
   lbmFree(bpsuper);
   return -EMFILE;
  }
 } else {
  for (i = 0; i < MAX_ACTIVE; i++)
   if (!memcmp(logsuper->active[i].uuid, uuid, 16)) {
    memcpy(logsuper->active[i].uuid, NULL_UUID, 16);
    break;
   }
  if (i == MAX_ACTIVE) {
   jfs_warn("Somebody stomped on the journal!");
   lbmFree(bpsuper);
   return -EIO;
  }

 }
 lbmDirectWrite(log, bpsuper, lbmWRITE | lbmRELEASE | lbmSYNC);
 rc = lbmIOWait(bpsuper, lbmFREE);

 return rc;
}
