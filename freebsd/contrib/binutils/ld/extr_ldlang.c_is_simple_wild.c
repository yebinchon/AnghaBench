
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 size_t strcspn (char const*,char*) ;

__attribute__((used)) static bfd_boolean
is_simple_wild (const char *name)
{
  size_t len = strcspn (name, "*?[");
  return len >= 4 && name[len] == '*' && name[len + 1] == '\0';
}
