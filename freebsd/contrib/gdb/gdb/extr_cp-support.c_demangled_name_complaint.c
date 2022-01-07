
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
demangled_name_complaint (const char *name)
{
  complaint (&symfile_complaints,
      "unexpected demangled name '%s'", name);
}
