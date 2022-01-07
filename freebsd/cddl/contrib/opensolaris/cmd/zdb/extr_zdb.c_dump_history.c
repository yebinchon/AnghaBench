
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef unsigned int uint_t ;
typedef scalar_t__ uint64_t ;
typedef scalar_t__ time_t ;
typedef int tbuf ;
struct tm {int dummy; } ;
typedef int spa_t ;
typedef int nvlist_t ;
typedef int internalstr ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 scalar_t__ HIS_BUF_LEN_DEF ;
 scalar_t__ HIS_BUF_LEN_MAX ;
 int MAXPATHLEN ;
 scalar_t__ ZFS_NUM_LEGACY_HISTORY_EVENTS ;
 int ZPOOL_HIST_CMD ;
 int ZPOOL_HIST_INT_EVENT ;
 int ZPOOL_HIST_INT_STR ;
 int ZPOOL_HIST_TIME ;
 int ZPOOL_HIST_TXG ;
 int dump_nvlist (int *,int) ;
 int* dump_opt ;
 int fprintf (int ,char*,...) ;
 int free (char*) ;
 int localtime_r (scalar_t__*,struct tm*) ;
 char* malloc (scalar_t__) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,scalar_t__*) ;
 int printf (char*,...) ;
 int snprintf (char*,int,char*,char*,int ,char*) ;
 int spa_history_get (int *,scalar_t__*,scalar_t__*,char*) ;
 int stderr ;
 int strftime (char*,int,char*,struct tm*) ;
 int verify (int) ;
 char** zfs_history_event_names ;
 scalar_t__ zpool_history_unpack (char*,scalar_t__,scalar_t__*,int ***,unsigned int*) ;

__attribute__((used)) static void
dump_history(spa_t *spa)
{
 nvlist_t **events = ((void*)0);
 char *buf = ((void*)0);
 uint64_t bufsize = HIS_BUF_LEN_DEF;
 uint64_t resid, len, off = 0;
 uint_t num = 0;
 int error;
 time_t tsec;
 struct tm t;
 char tbuf[30];
 char internalstr[MAXPATHLEN];

 if ((buf = malloc(bufsize)) == ((void*)0))
  (void) fprintf(stderr, "Unable to read history: "
      "out of memory\n");
 do {
  len = bufsize;

  if ((error = spa_history_get(spa, &off, &len, buf)) != 0) {
   (void) fprintf(stderr, "Unable to read history: "
       "error %d\n", error);
   return;
  }

  if (zpool_history_unpack(buf, len, &resid, &events, &num) != 0)
   break;
  off -= resid;





  if (resid == len) {
   free(buf);
   buf = ((void*)0);

   bufsize <<= 1;
   if ((bufsize >= HIS_BUF_LEN_MAX) ||
       ((buf = malloc(bufsize)) == ((void*)0))) {
    (void) fprintf(stderr, "Unable to read history: "
        "out of memory\n");
    return;
   }
  }
 } while (len != 0);
 free(buf);

 (void) printf("\nHistory:\n");
 for (unsigned i = 0; i < num; i++) {
  uint64_t time, txg, ievent;
  char *cmd, *intstr;
  boolean_t printed = B_FALSE;

  if (nvlist_lookup_uint64(events[i], ZPOOL_HIST_TIME,
      &time) != 0)
   goto next;
  if (nvlist_lookup_string(events[i], ZPOOL_HIST_CMD,
      &cmd) != 0) {
   if (nvlist_lookup_uint64(events[i],
       ZPOOL_HIST_INT_EVENT, &ievent) != 0)
    goto next;
   verify(nvlist_lookup_uint64(events[i],
       ZPOOL_HIST_TXG, &txg) == 0);
   verify(nvlist_lookup_string(events[i],
       ZPOOL_HIST_INT_STR, &intstr) == 0);
   if (ievent >= ZFS_NUM_LEGACY_HISTORY_EVENTS)
    goto next;

   (void) snprintf(internalstr,
       sizeof (internalstr),
       "[internal %s txg:%ju] %s",
       zfs_history_event_names[ievent], (uintmax_t)txg,
       intstr);
   cmd = internalstr;
  }
  tsec = time;
  (void) localtime_r(&tsec, &t);
  (void) strftime(tbuf, sizeof (tbuf), "%F.%T", &t);
  (void) printf("%s %s\n", tbuf, cmd);
  printed = B_TRUE;

next:
  if (dump_opt['h'] > 1) {
   if (!printed)
    (void) printf("unrecognized record:\n");
   dump_nvlist(events[i], 2);
  }
 }
}
