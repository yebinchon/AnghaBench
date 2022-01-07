
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int operator_pattern ;
 scalar_t__ regexec (int *,char const*,int ,int ,int ) ;

__attribute__((used)) static int
hpacc_is_operator_name (const char *name)
{
  return regexec (&operator_pattern, name, 0, 0, 0) == 0;
}
