
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uintmax_t ;


 int ERANGE ;
 scalar_t__ UINTMAX_MAX ;
 scalar_t__ cpy_cnt ;
 int errc (int,int ,char*,int ) ;
 scalar_t__ get_num (char*) ;
 int oper ;

__attribute__((used)) static void
f_count(char *arg)
{
 uintmax_t res;

 res = get_num(arg);
 if (res == UINTMAX_MAX)
  errc(1, ERANGE, "%s", oper);
 if (res == 0)
  cpy_cnt = UINTMAX_MAX;
 else
  cpy_cnt = res;
}
