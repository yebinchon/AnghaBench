
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int complaint (int *,char*,char const*,int,int) ;
 int symfile_complaints ;

__attribute__((used)) static void
bad_rfd_entry_complaint (const char *arg1, int arg2, int arg3)
{
  complaint (&symfile_complaints, "bad rfd entry for %s: file %d, index %d",
      arg1, arg2, arg3);
}
