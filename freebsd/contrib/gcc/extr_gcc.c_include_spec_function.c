
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int R_OK ;
 int abort () ;
 char* find_a_file (int *,char const*,int ,int ) ;
 int read_specs (char*,int ) ;
 int startfile_prefixes ;

__attribute__((used)) static const char *
include_spec_function (int argc, const char **argv)
{
  char *file;

  if (argc != 1)
    abort ();

  file = find_a_file (&startfile_prefixes, argv[0], R_OK, 0);
  read_specs (file ? file : argv[0], FALSE);

  return ((void*)0);
}
