
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {int dummy; } ;
struct macro_key {int start_line; int start_file; int name; } ;


 int compare_locations (int ,int ,struct macro_source_file*,int) ;
 int strcmp (int ,char const*) ;

__attribute__((used)) static int
key_compare (struct macro_key *key,
             const char *name, struct macro_source_file *file, int line)
{
  int names = strcmp (key->name, name);
  if (names)
    return names;

  return compare_locations (key->start_file, key->start_line,
                            file, line);
}
