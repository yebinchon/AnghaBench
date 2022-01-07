
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct process_symbol_args {int start; int name; } ;


 int MAP__FUNCTION ;
 scalar_t__ strcmp (char const*,int ) ;
 scalar_t__ symbol_type__is_a (char,int ) ;

__attribute__((used)) static int find_symbol_cb(void *arg, const char *name, char type,
     u64 start)
{
 struct process_symbol_args *args = arg;





 if (!(symbol_type__is_a(type, MAP__FUNCTION) ||
       type == 'A') || strcmp(name, args->name))
  return 0;

 args->start = start;
 return 1;
}
