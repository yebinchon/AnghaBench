
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_action {scalar_t__ print; } ;
struct elfcopy {int dummy; } ;


 struct sec_action* lookup_sec_act (struct elfcopy*,char const*,int ) ;

__attribute__((used)) static int
is_print_section(struct elfcopy *ecp, const char *name)
{
 struct sec_action *sac;

 sac = lookup_sec_act(ecp, name, 0);
 if (sac != ((void*)0) && sac->print != 0)
  return (1);

 return (0);
}
