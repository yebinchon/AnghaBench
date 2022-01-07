
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct work_stuff {int dummy; } ;
struct TYPE_5__ {char* b; } ;
typedef TYPE_1__ string ;


 int delete_non_B_K_work_stuff (struct work_stuff*) ;
 int string_appendn (TYPE_1__*,char*,int) ;
 int string_delete (TYPE_1__*) ;

__attribute__((used)) static char *
mop_up (struct work_stuff *work, string *declp, int success)
{
  char *demangled = ((void*)0);

  delete_non_B_K_work_stuff (work);




  if (!success)
    {
      string_delete (declp);
    }
  else
    {
      string_appendn (declp, "", 1);
      demangled = declp->b;
    }
  return (demangled);
}
