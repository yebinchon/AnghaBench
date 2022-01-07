
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct ainsn {int dummy; } ;
typedef TYPE_1__* decl_t ;
typedef TYPE_2__* ainsn_t ;
struct TYPE_9__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_8__ {struct TYPE_8__* next_ainsn; int important_p; int insn_reserv_decl; } ;
struct TYPE_7__ {scalar_t__ mode; } ;


 int DECL_INSN_RESERV (TYPE_1__*) ;
 int FALSE ;
 TYPE_2__* create_node (int) ;
 TYPE_3__* description ;
 scalar_t__ dm_insn_reserv ;

__attribute__((used)) static ainsn_t
create_ainsns (void)
{
  decl_t decl;
  ainsn_t first_ainsn;
  ainsn_t curr_ainsn;
  ainsn_t prev_ainsn;
  int i;

  first_ainsn = ((void*)0);
  prev_ainsn = ((void*)0);
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
 {
   curr_ainsn = create_node (sizeof (struct ainsn));
   curr_ainsn->insn_reserv_decl = DECL_INSN_RESERV (decl);
   curr_ainsn->important_p = FALSE;
   curr_ainsn->next_ainsn = ((void*)0);
   if (prev_ainsn == ((void*)0))
     first_ainsn = curr_ainsn;
   else
     prev_ainsn->next_ainsn = curr_ainsn;
   prev_ainsn = curr_ainsn;
 }
    }
  return first_ainsn;
}
