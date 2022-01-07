
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,int,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
basic_type_complaint (int arg1, const char *arg2)
{
  complaint (&symfile_complaints, "cannot map ECOFF basic type 0x%x for %s",
      arg1, arg2);
}
