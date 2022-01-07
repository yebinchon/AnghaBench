
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int delete_temp_files () ;
 int exit (int) ;
 int perror_with_name (char const*) ;

void
pfatal_with_name (const char *name)
{
  perror_with_name (name);
  delete_temp_files ();
  exit (1);
}
