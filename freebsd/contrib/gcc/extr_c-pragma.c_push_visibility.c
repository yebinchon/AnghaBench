
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inpragma; } ;


 int GCC_BAD (char*) ;
 int VEC_safe_push (int ,int ,int ,int ) ;
 int VISIBILITY_DEFAULT ;
 int VISIBILITY_HIDDEN ;
 int VISIBILITY_INTERNAL ;
 int VISIBILITY_PROTECTED ;
 int default_visibility ;
 int heap ;
 int strcmp (char const*,char*) ;
 int visibility ;
 TYPE_1__ visibility_options ;
 int visstack ;

void
push_visibility (const char *str)
{
  VEC_safe_push (visibility, heap, visstack,
   default_visibility);
  if (!strcmp (str, "default"))
    default_visibility = VISIBILITY_DEFAULT;
  else if (!strcmp (str, "internal"))
    default_visibility = VISIBILITY_INTERNAL;
  else if (!strcmp (str, "hidden"))
    default_visibility = VISIBILITY_HIDDEN;
  else if (!strcmp (str, "protected"))
    default_visibility = VISIBILITY_PROTECTED;
  else
    GCC_BAD ("#pragma GCC visibility push() must specify default, internal, hidden or protected");
  visibility_options.inpragma = 1;
}
