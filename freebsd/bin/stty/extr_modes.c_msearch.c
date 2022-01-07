
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct modes {int set; int unset; scalar_t__ name; } ;
struct TYPE_2__ {int c_oflag; int c_lflag; int c_iflag; int c_cflag; } ;
struct info {int set; TYPE_1__ t; } ;


 scalar_t__ CHK (scalar_t__) ;
 struct modes* cmodes ;
 struct modes* imodes ;
 struct modes* lmodes ;
 struct modes* omodes ;

int
msearch(char ***argvp, struct info *ip)
{
 const struct modes *mp;
 char *name;

 name = **argvp;

 for (mp = cmodes; mp->name; ++mp)
  if (CHK(mp->name)) {
   ip->t.c_cflag &= ~mp->unset;
   ip->t.c_cflag |= mp->set;
   ip->set = 1;
   return (1);
  }
 for (mp = imodes; mp->name; ++mp)
  if (CHK(mp->name)) {
   ip->t.c_iflag &= ~mp->unset;
   ip->t.c_iflag |= mp->set;
   ip->set = 1;
   return (1);
  }
 for (mp = lmodes; mp->name; ++mp)
  if (CHK(mp->name)) {
   ip->t.c_lflag &= ~mp->unset;
   ip->t.c_lflag |= mp->set;
   ip->set = 1;
   return (1);
  }
 for (mp = omodes; mp->name; ++mp)
  if (CHK(mp->name)) {
   ip->t.c_oflag &= ~mp->unset;
   ip->t.c_oflag |= mp->set;
   ip->set = 1;
   return (1);
  }
 return (0);
}
