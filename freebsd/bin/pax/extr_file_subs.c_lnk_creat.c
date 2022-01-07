
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_3__ {int name; int ln_name; } ;
typedef TYPE_1__ ARCHD ;


 scalar_t__ S_ISDIR (int ) ;
 int errno ;
 scalar_t__ lstat (int ,struct stat*) ;
 int mk_link (int ,struct stat*,int ,int ) ;
 int paxwarn (int,char*,int ) ;
 int syswarn (int,int ,char*,int ,int ) ;

int
lnk_creat(ARCHD *arcn)
{
 struct stat sb;





 if (lstat(arcn->ln_name, &sb) < 0) {
  syswarn(1,errno,"Unable to link to %s from %s", arcn->ln_name,
      arcn->name);
  return(-1);
 }

 if (S_ISDIR(sb.st_mode)) {
  paxwarn(1, "A hard link to the directory %s is not allowed",
      arcn->ln_name);
  return(-1);
 }

 return(mk_link(arcn->ln_name, &sb, arcn->name, 0));
}
