
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*) ;
 int symfile_complaints ;

__attribute__((used)) static void
unknown_ext_complaint (const char *arg1)
{
  complaint (&symfile_complaints, "unknown external symbol %s", arg1);
}
