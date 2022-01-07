
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_2__* unit_set_el_t ;
typedef int set_el_t ;
typedef void* reserv_sets_t ;
typedef TYPE_3__* decl_t ;
struct TYPE_11__ {size_t unit_num; TYPE_2__* excl_list; } ;
struct TYPE_10__ {int units_num; int decls_num; TYPE_3__** decls; } ;
struct TYPE_9__ {scalar_t__ mode; } ;
struct TYPE_8__ {TYPE_1__* unit_decl; struct TYPE_8__* next_unit_set_el; } ;
struct TYPE_7__ {int in_set_p; int unit_num; } ;


 TYPE_5__* DECL_UNIT (TYPE_3__*) ;
 int SET_BIT (void*,int ) ;
 int TRUE ;
 TYPE_4__* description ;
 scalar_t__ dm_unit ;
 int els_in_cycle_reserv ;
 void* excl_set ;
 int irp ;
 int memset (void*,int ,int) ;
 scalar_t__ obstack_base (int *) ;
 int obstack_blank (int *,int) ;
 int obstack_finish (int *) ;
 void** unit_excl_set_table ;

__attribute__((used)) static void
initiate_excl_sets (void)
{
  decl_t decl;
  reserv_sets_t unit_excl_set;
  unit_set_el_t el;
  int i;

  obstack_blank (&irp, els_in_cycle_reserv * sizeof (set_el_t));
  excl_set = (reserv_sets_t) obstack_base (&irp);
  (void) obstack_finish (&irp);
  obstack_blank (&irp, description->units_num * sizeof (reserv_sets_t));
  unit_excl_set_table = (reserv_sets_t *) obstack_base (&irp);
  (void) obstack_finish (&irp);

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
 {
   obstack_blank (&irp, els_in_cycle_reserv * sizeof (set_el_t));
   unit_excl_set = (reserv_sets_t) obstack_base (&irp);
   (void) obstack_finish (&irp);
   memset (unit_excl_set, 0, els_in_cycle_reserv * sizeof (set_el_t));
   for (el = DECL_UNIT (decl)->excl_list;
        el != ((void*)0);
        el = el->next_unit_set_el)
     {
       SET_BIT (unit_excl_set, el->unit_decl->unit_num);
       el->unit_decl->in_set_p = TRUE;
     }
          unit_excl_set_table [DECL_UNIT (decl)->unit_num] = unit_excl_set;
        }
    }
}
