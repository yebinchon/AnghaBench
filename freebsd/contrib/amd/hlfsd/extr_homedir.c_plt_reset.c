
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uid2home_t ;
struct passwd {int dummy; } ;
typedef scalar_t__ pid_t ;
struct TYPE_4__ {char* home; char* uname; scalar_t__ child; void* uid; } ;
struct TYPE_3__ {char* username; char* home; void* uid; } ;


 void* INVALIDID ;
 int XFREE (char*) ;
 int cur_pwtab_num ;
 int hlfsd_endpwent () ;
 struct passwd* hlfsd_getpwent () ;
 int hlfsd_setpwent () ;
 int * lastchild ;
 scalar_t__ max_pwtab_num ;
 TYPE_2__* pwtab ;
 char* root_home ;
 TYPE_1__* untab ;

__attribute__((used)) static int
plt_reset(void)
{
  int i;

  hlfsd_setpwent();
  if (hlfsd_getpwent() == (struct passwd *) ((void*)0)) {
    hlfsd_endpwent();
    return -1;
  }
  hlfsd_endpwent();

  lastchild = (uid2home_t *) ((void*)0);

  if (max_pwtab_num > 0)
    for (i = 0; i < cur_pwtab_num; ++i) {
      if (pwtab[i].home) {
 XFREE(pwtab[i].home);
 pwtab[i].home = (char *) ((void*)0);
      }
      pwtab[i].uid = INVALIDID;
      pwtab[i].child = (pid_t) 0;
      pwtab[i].uname = (char *) ((void*)0);
      if (untab[i].username) {
 XFREE(untab[i].username);
 untab[i].username = (char *) ((void*)0);
      }
      untab[i].uid = INVALIDID;
      untab[i].home = (char *) ((void*)0);
    }
  cur_pwtab_num = 0;

  if (root_home)
    XFREE(root_home);

  return 0;
}
