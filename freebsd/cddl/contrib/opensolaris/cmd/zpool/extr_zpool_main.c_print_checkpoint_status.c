
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int time_t ;
typedef int space_buf ;
struct TYPE_3__ {scalar_t__ pcs_state; int pcs_space; int pcs_start_time; } ;
typedef TYPE_1__ pool_checkpoint_stat_t ;


 scalar_t__ CS_CHECKPOINT_DISCARDING ;
 scalar_t__ CS_CHECKPOINT_EXISTS ;
 scalar_t__ CS_NONE ;
 int assert (int) ;
 char* ctime (int *) ;
 char* gettext (char*) ;
 int printf (char*,...) ;
 char* strlen (char*) ;
 int zfs_nicenum (int ,char*,int) ;

__attribute__((used)) static void
print_checkpoint_status(pool_checkpoint_stat_t *pcs)
{
 time_t start;
 char space_buf[7];

 if (pcs == ((void*)0) || pcs->pcs_state == CS_NONE)
  return;

 (void) printf(gettext("checkpoint: "));

 start = pcs->pcs_start_time;
 zfs_nicenum(pcs->pcs_space, space_buf, sizeof (space_buf));

 if (pcs->pcs_state == CS_CHECKPOINT_EXISTS) {
  char *date = ctime(&start);






  (void) printf(gettext("created %.*s, consumes %s\n"),
      strlen(date) - 1, date, space_buf);
  return;
 }

 assert(pcs->pcs_state == CS_CHECKPOINT_DISCARDING);

 (void) printf(gettext("discarding, %s remaining.\n"),
     space_buf);
}
