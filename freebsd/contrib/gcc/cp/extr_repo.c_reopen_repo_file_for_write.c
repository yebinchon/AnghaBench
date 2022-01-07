
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int error (char*,int ) ;
 scalar_t__ flag_use_repository ;
 int * fopen (int ,char*) ;
 int repo_name ;

__attribute__((used)) static FILE *
reopen_repo_file_for_write (void)
{
  FILE *repo_file = fopen (repo_name, "w");

  if (repo_file == 0)
    {
      error ("can't create repository information file %qs", repo_name);
      flag_use_repository = 0;
    }

  return repo_file;
}
