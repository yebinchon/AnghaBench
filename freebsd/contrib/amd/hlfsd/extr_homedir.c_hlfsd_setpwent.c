
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct passwd {int dummy; } ;
struct TYPE_2__ {char* pw_name; char* pw_dir; } ;


 int XLOG_ERROR ;
 int XLOG_INFO ;
 int fopen (int ,char*) ;
 int memset (char*,int ,int) ;
 TYPE_1__ passwd_ent ;
 int passwd_fp ;
 scalar_t__ passwd_line ;
 int passwdfile ;
 int plog (int ,char*,int ) ;
 int pw_dir ;
 int pw_name ;
 int setpwent () ;

__attribute__((used)) static void
hlfsd_setpwent(void)
{
  if (!passwdfile) {
    setpwent();
    return;
  }

  passwd_fp = fopen(passwdfile, "r");
  if (!passwd_fp) {
    plog(XLOG_ERROR, "unable to read passwd file %s: %m", passwdfile);
    return;
  }
  plog(XLOG_INFO, "reading password entries from file %s", passwdfile);

  passwd_line = 0;
  memset((char *) &passwd_ent, 0, sizeof(struct passwd));
  passwd_ent.pw_name = (char *) &pw_name;
  passwd_ent.pw_dir = (char *) &pw_dir;
}
