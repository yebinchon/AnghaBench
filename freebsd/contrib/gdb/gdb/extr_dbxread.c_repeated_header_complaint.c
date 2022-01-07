
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
repeated_header_complaint (const char *arg1, int arg2)
{
  complaint (&symfile_complaints,
      "\"repeated\" header file %s not previously seen, at symtab pos %d",
      arg1, arg2);
}
