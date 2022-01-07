
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter_arg {int dummy; } ;


 struct filter_arg* malloc_or_die (int) ;
 int memset (struct filter_arg*,int ,int) ;

__attribute__((used)) static struct filter_arg *allocate_arg(void)
{
 struct filter_arg *arg;

 arg = malloc_or_die(sizeof(*arg));
 memset(arg, 0, sizeof(*arg));

 return arg;
}
