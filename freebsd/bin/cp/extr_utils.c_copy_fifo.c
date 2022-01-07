
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_2__ {char* p_path; } ;


 scalar_t__ mkfifo (char*,int ) ;
 scalar_t__ nflag ;
 scalar_t__ pflag ;
 int printf (char*,char*) ;
 int setfile (struct stat*,int) ;
 TYPE_1__ to ;
 scalar_t__ unlink (char*) ;
 scalar_t__ vflag ;
 int warn (char*,char*) ;

int
copy_fifo(struct stat *from_stat, int exists)
{

 if (exists && nflag) {
  if (vflag)
   printf("%s not overwritten\n", to.p_path);
  return (1);
 }
 if (exists && unlink(to.p_path)) {
  warn("unlink: %s", to.p_path);
  return (1);
 }
 if (mkfifo(to.p_path, from_stat->st_mode)) {
  warn("mkfifo: %s", to.p_path);
  return (1);
 }
 return (pflag ? setfile(from_stat, -1) : 0);
}
