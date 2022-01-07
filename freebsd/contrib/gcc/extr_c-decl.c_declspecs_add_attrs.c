
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct c_declspecs {int declspecs_seen_p; int attrs; } ;


 int chainon (int ,int ) ;

struct c_declspecs *
declspecs_add_attrs (struct c_declspecs *specs, tree attrs)
{
  specs->attrs = chainon (attrs, specs->attrs);
  specs->declspecs_seen_p = 1;
  return specs;
}
