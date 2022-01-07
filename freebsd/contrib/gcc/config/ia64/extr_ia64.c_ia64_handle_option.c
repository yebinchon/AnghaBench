
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct pta TYPE_1__ ;


typedef enum processor_type { ____Placeholder_processor_type } processor_type ;
struct pta {char const* name; int processor; } ;


 int ARRAY_SIZE (TYPE_1__ const*) ;





 int error (char*,char const*) ;
 int fix_range (char const*) ;
 int ia64_tune ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static bool
ia64_handle_option (size_t code, const char *arg, int value)
{
  switch (code)
    {
    case 132:
      fix_range (arg);
      return 1;

    case 131:
      if (value != 14 && value != 22 && value != 64)
 error ("bad value %<%s%> for -mtls-size= switch", arg);
      return 1;

    case 130:
      {
 static struct pta
   {
     const char *name;
     enum processor_type processor;
   }
 const processor_alias_table[] =
   {
     {"itanium", 129},
     {"itanium1", 129},
     {"merced", 129},
     {"itanium2", 128},
     {"mckinley", 128},
   };
 int const pta_size = ARRAY_SIZE (processor_alias_table);
 int i;

 for (i = 0; i < pta_size; i++)
   if (!strcmp (arg, processor_alias_table[i].name))
     {
       ia64_tune = processor_alias_table[i].processor;
       break;
     }
 if (i == pta_size)
   error ("bad value %<%s%> for -mtune= switch", arg);
 return 1;
      }

    default:
      return 1;
    }
}
