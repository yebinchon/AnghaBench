
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_declspecs {int dummy; } ;


 int shadow_tag_warned (struct c_declspecs const*,int ) ;

void
shadow_tag (const struct c_declspecs *declspecs)
{
  shadow_tag_warned (declspecs, 0);
}
