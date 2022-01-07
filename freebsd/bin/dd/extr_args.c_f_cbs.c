
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
typedef int ssize_t ;


 int SSIZE_MAX ;
 size_t cbsz ;
 int errx (int,char*,int ) ;
 int get_num (char*) ;

__attribute__((used)) static void
f_cbs(char *arg)
{
 uintmax_t res;

 res = get_num(arg);
 if (res < 1 || res > SSIZE_MAX)
  errx(1, "cbs must be between 1 and %zd", (ssize_t)SSIZE_MAX);
 cbsz = (size_t)res;
}
