
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int dummy; } ;


 int check_one_possible_namespace_symbol (char const*,int,struct objfile*) ;
 scalar_t__ cp_find_first_component (char const*) ;

__attribute__((used)) static int
check_possible_namespace_symbols_loop (const char *name, int len,
           struct objfile *objfile)
{
  if (name[len] == ':')
    {
      int done;
      int next_len = len + 2;

      next_len += cp_find_first_component (name + next_len);
      done = check_possible_namespace_symbols_loop (name, next_len,
          objfile);

      if (!done)
 done = check_one_possible_namespace_symbol (name, len, objfile);

      return done;
    }
  else
    return 0;
}
