
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 scalar_t__ access (char const*,int ) ;

int
file_exists (const char *name)
{
  return access (name, R_OK) == 0;
}
