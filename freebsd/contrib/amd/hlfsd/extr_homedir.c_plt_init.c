
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int username2uid_t ;
typedef int uid2home_t ;
struct passwd {char* pw_dir; int pw_name; int pw_uid; } ;


 scalar_t__ STREQ (char*,int ) ;
 int XFREE (char*) ;
 int XLOG_INFO ;
 int cur_pwtab_num ;
 int hlfsd_endpwent () ;
 struct passwd* hlfsd_getpwent () ;
 int hlfsd_setpwent () ;
 int plog (int ,char*) ;
 int plt_compare_fxn ;
 scalar_t__ plt_reset () ;
 scalar_t__ pwtab ;
 int qsort (char*,int ,int,int ) ;
 char* root_home ;
 int strlen (char*) ;
 int table_add (int ,char*,int ) ;
 int unt_compare_fxn ;
 scalar_t__ untab ;
 char* xstrdup (char*) ;

void
plt_init(void)
{
  struct passwd *pent_p;

  if (plt_reset() < 0)
    return;

  plog(XLOG_INFO, "reading password map");

  hlfsd_setpwent();
  while ((pent_p = hlfsd_getpwent()) != (struct passwd *) ((void*)0)) {
    table_add(pent_p->pw_uid, pent_p->pw_dir, pent_p->pw_name);
    if (STREQ("root", pent_p->pw_name)) {
      int len;
      if (root_home)
 XFREE(root_home);
      root_home = xstrdup(pent_p->pw_dir);
      len = strlen(root_home);

      while (len > 0 && root_home[len - 1] == '/') {
 len--;
 root_home[len] = '\0';
      }
    }
  }
  hlfsd_endpwent();

  qsort((char *) pwtab, cur_pwtab_num, sizeof(uid2home_t),
 plt_compare_fxn);
  qsort((char *) untab, cur_pwtab_num, sizeof(username2uid_t),
 unt_compare_fxn);

  if (!root_home)
    root_home = xstrdup("");

  plog(XLOG_INFO, "password map read and sorted");
}
