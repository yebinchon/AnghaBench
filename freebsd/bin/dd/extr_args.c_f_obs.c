
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int ssize_t ;
struct TYPE_2__ {size_t dbsz; } ;


 int C_BS ;
 int SSIZE_MAX ;
 int ddflags ;
 int errx (int,char*,int ) ;
 int get_num (char*) ;
 TYPE_1__ out ;

__attribute__((used)) static void
f_obs(char *arg)
{
 uintmax_t res;

 if (!(ddflags & C_BS)) {
  res = get_num(arg);
  if (res < 1 || res > SSIZE_MAX)
   errx(1, "obs must be between 1 and %zd",
       (ssize_t)SSIZE_MAX);
  out.dbsz = (size_t)res;
 }
}
