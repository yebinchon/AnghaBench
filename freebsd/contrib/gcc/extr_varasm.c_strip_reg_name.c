
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REGISTER_PREFIX ;
 int strlen (int ) ;
 int strncmp (char const*,int ,int ) ;

__attribute__((used)) static const char *
strip_reg_name (const char *name)
{




  if (name[0] == '%' || name[0] == '#')
    name++;
  return name;
}
