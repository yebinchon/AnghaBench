
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_fopt {int defchange; int defmap; int split; } ;
struct cbq_class {int dummy; } ;


 int cbq_change_defmap (struct cbq_class*,int ,int ,int ) ;

__attribute__((used)) static int cbq_set_fopt(struct cbq_class *cl, struct tc_cbq_fopt *fopt)
{
 cbq_change_defmap(cl, fopt->split, fopt->defmap, fopt->defchange);
 return 0;
}
