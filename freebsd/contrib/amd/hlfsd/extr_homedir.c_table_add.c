
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ uid; void* home; void* username; void* uname; scalar_t__ last_status; scalar_t__ last_access_time; scalar_t__ child; } ;
typedef TYPE_1__ username2uid_t ;
typedef TYPE_1__ uid2home_t ;
typedef scalar_t__ u_int ;


 int XLOG_INFO ;
 int cur_pwtab_num ;
 int dlog (char*,char const*,scalar_t__,void*) ;
 int max_pwtab_num ;
 int memset (char*,int ,int) ;
 int plog (int ,char*,int) ;
 TYPE_1__* pwtab ;
 TYPE_1__* untab ;
 scalar_t__ xmalloc (int) ;
 scalar_t__ xrealloc (TYPE_1__*,int) ;
 void* xstrdup (char const*) ;

__attribute__((used)) static void
table_add(u_int u, const char *h, const char *n)
{
  int i;

  if (max_pwtab_num <= 0) {
    max_pwtab_num = 1;
    pwtab = (uid2home_t *) xmalloc(max_pwtab_num *
       sizeof(uid2home_t));
    memset((char *) &pwtab[0], 0, max_pwtab_num * sizeof(uid2home_t));
    untab = (username2uid_t *) xmalloc(max_pwtab_num *
           sizeof(username2uid_t));
    memset((char *) &untab[0], 0, max_pwtab_num * sizeof(username2uid_t));
  }


  if (cur_pwtab_num + 1 > max_pwtab_num) {

    max_pwtab_num *= 2;
    plog(XLOG_INFO, "reallocating table spaces to %d entries", max_pwtab_num);
    pwtab = (uid2home_t *) xrealloc(pwtab,
        sizeof(uid2home_t) * max_pwtab_num);
    untab = (username2uid_t *) xrealloc(untab,
     sizeof(username2uid_t) *
     max_pwtab_num);

    for (i=cur_pwtab_num; i<max_pwtab_num; ++i) {
      memset((char *) &pwtab[i], 0, sizeof(uid2home_t));
      memset((char *) &untab[i], 0, sizeof(username2uid_t));
    }
  }


  for (i=0; i<cur_pwtab_num; ++i)
    if (u == pwtab[i].uid && u != 0 ) {
      dlog("ignoring duplicate home %s for uid %d (already %s)",
    h, u, pwtab[i].home);
      return;
    }


  pwtab[cur_pwtab_num].home = xstrdup(h);
  pwtab[cur_pwtab_num].child = 0;
  pwtab[cur_pwtab_num].last_access_time = 0;
  pwtab[cur_pwtab_num].last_status = 0;
  pwtab[cur_pwtab_num].uid = u;


  untab[cur_pwtab_num].username = xstrdup(n);


  pwtab[cur_pwtab_num].uname = untab[cur_pwtab_num].username;
  untab[cur_pwtab_num].uid = u;
  untab[cur_pwtab_num].home = pwtab[cur_pwtab_num].home;


  ++cur_pwtab_num;
}
