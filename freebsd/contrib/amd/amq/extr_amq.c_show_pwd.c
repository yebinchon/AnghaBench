
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int buf ;
struct TYPE_3__ {char* mt_directory; struct TYPE_3__* mt_child; struct TYPE_3__* mt_next; int mt_mountpoint; } ;
typedef TYPE_1__ amq_mount_tree ;


 int MAXPATHLEN ;
 scalar_t__ NSTREQ (char*,int ,int) ;
 int STREQ (char*,int ) ;
 int strlen (int ) ;
 int xstrlcat (char*,char*,int) ;
 int xstrlcpy (char*,char*,size_t) ;

__attribute__((used)) static void
show_pwd(amq_mount_tree *mt, char *path, size_t l, int *flag)
{
  int len;

  while (mt) {
    len = strlen(mt->mt_mountpoint);
    if (NSTREQ(path, mt->mt_mountpoint, len) &&
 !STREQ(mt->mt_directory, mt->mt_mountpoint)) {
      char buf[MAXPATHLEN+1];
      xstrlcpy(buf, mt->mt_directory, sizeof(buf));
      xstrlcat(buf, &path[len], sizeof(buf));
      xstrlcpy(path, buf, l);
      *flag = 1;
    }
    show_pwd(mt->mt_next, path, l, flag);
    mt = mt->mt_child;
  }
}
