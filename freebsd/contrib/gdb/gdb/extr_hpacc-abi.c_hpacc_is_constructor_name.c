
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum ctor_kinds { ____Placeholder_ctor_kinds } ctor_kinds ;


 int complete_object_ctor ;
 int constructor_pattern ;
 scalar_t__ regexec (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static enum ctor_kinds
hpacc_is_constructor_name (const char *name)
{
  if (regexec (&constructor_pattern, name, 0, 0, 0) == 0)
    return complete_object_ctor;
  else
    return 0;
}
