
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
unexpected_type_code_complaint (const char *arg1)
{
  complaint (&symfile_complaints, "unexpected type code for %s", arg1);
}
