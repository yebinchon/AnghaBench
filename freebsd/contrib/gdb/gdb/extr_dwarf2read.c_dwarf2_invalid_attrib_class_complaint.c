
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf2_invalid_attrib_class_complaint (const char *arg1, const char *arg2)
{
  complaint (&symfile_complaints,
      "invalid attribute class or form for '%s' in '%s'", arg1, arg2);
}
