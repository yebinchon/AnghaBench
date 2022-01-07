
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct field {int type; } ;


 int recursive_dump_type (int ,int) ;

__attribute__((used)) static void
print_arg_types (struct field *args, int nargs, int spaces)
{
  if (args != ((void*)0))
    {
      int i;

      for (i = 0; i < nargs; i++)
 recursive_dump_type (args[i].type, spaces + 2);
    }
}
