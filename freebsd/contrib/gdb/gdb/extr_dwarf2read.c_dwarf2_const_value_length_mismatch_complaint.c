
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*,int,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
dwarf2_const_value_length_mismatch_complaint (const char *arg1, int arg2,
           int arg3)
{
  complaint (&symfile_complaints,
      "const value length mismatch for '%s', got %d, expected %d", arg1,
      arg2, arg3);
}
