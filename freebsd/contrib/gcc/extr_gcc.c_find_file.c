
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int R_OK ;
 char* find_a_file (int *,char const*,int ,int) ;
 int startfile_prefixes ;

__attribute__((used)) static const char *
find_file (const char *name)
{
  char *newname = find_a_file (&startfile_prefixes, name, R_OK, 1);
  return newname ? newname : name;
}
