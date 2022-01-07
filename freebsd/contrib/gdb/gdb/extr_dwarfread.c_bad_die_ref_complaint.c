
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,int,char const*,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
bad_die_ref_complaint (int arg1, const char *arg2, int arg3)
{
  complaint (&symfile_complaints,
      "DIE @ 0x%x \"%s\", reference to DIE (0x%x) outside compilation unit",
      arg1, arg2, arg3);
}
