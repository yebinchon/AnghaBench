
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elfcopy {int dummy; } ;


 scalar_t__ is_append_section (struct elfcopy*,char const*) ;
 scalar_t__ is_compress_section (struct elfcopy*,char const*) ;

__attribute__((used)) static int
is_modify_section(struct elfcopy *ecp, const char *name)
{

 if (is_append_section(ecp, name) ||
     is_compress_section(ecp, name))
  return (1);

 return (0);
}
