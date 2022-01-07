
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum dtor_kinds { ____Placeholder_dtor_kinds } dtor_kinds ;


 int complete_object_dtor ;
 int destructor_pattern ;
 scalar_t__ regexec (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static enum dtor_kinds
hpacc_is_destructor_name (const char *name)
{
  if (regexec (&destructor_pattern, name, 0, 0, 0) == 0)
    return complete_object_dtor;
  else
    return 0;
}
