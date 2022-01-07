
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_8__ {int loop_pass_num; int name; int regexp; } ;
struct TYPE_7__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_6__ {scalar_t__ mode; } ;


 TYPE_4__* DECL_RESERV (TYPE_1__*) ;
 int curr_loop_pass_num ;
 TYPE_3__* description ;
 scalar_t__ dm_reserv ;
 int error (char*,int ) ;
 int gcc_assert (int ) ;
 scalar_t__ loop_in_regexp (int ,TYPE_1__*) ;

__attribute__((used)) static void
check_loops_in_regexps (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_reserv)
 DECL_RESERV (decl)->loop_pass_num = 0;
    }
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      curr_loop_pass_num = i;

      if (decl->mode == dm_reserv)
   {
     DECL_RESERV (decl)->loop_pass_num = curr_loop_pass_num;
     if (loop_in_regexp (DECL_RESERV (decl)->regexp, decl))
       {
  gcc_assert (DECL_RESERV (decl)->regexp);
  error ("cycle in definition of reservation `%s'",
         DECL_RESERV (decl)->name);
       }
   }
    }
}
