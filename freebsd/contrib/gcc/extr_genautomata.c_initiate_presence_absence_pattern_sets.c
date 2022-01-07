
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* pattern_reserv_t ;
typedef TYPE_1__* decl_t ;
struct TYPE_7__ {size_t unit_num; int final_absence_list; int absence_list; int final_presence_list; int presence_list; } ;
struct TYPE_6__ {int units_num; int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;


 TYPE_3__* DECL_UNIT (TYPE_1__*) ;
 TYPE_2__* description ;
 scalar_t__ dm_unit ;
 void* form_reserv_sets_list (int ) ;
 int irp ;
 scalar_t__ obstack_base (int *) ;
 int obstack_blank (int *,int) ;
 int obstack_finish (int *) ;
 void** unit_absence_set_table ;
 void** unit_final_absence_set_table ;
 void** unit_final_presence_set_table ;
 void** unit_presence_set_table ;

__attribute__((used)) static void
initiate_presence_absence_pattern_sets (void)
{
  decl_t decl;
  int i;

  obstack_blank (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_presence_set_table = (pattern_reserv_t *) obstack_base (&irp);
  (void) obstack_finish (&irp);
  obstack_blank (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_final_presence_set_table = (pattern_reserv_t *) obstack_base (&irp);
  (void) obstack_finish (&irp);
  obstack_blank (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_absence_set_table = (pattern_reserv_t *) obstack_base (&irp);
  (void) obstack_finish (&irp);
  obstack_blank (&irp, description->units_num * sizeof (pattern_reserv_t));
  unit_final_absence_set_table = (pattern_reserv_t *) obstack_base (&irp);
  (void) obstack_finish (&irp);

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
 {
          unit_presence_set_table [DECL_UNIT (decl)->unit_num]
     = form_reserv_sets_list (DECL_UNIT (decl)->presence_list);
          unit_final_presence_set_table [DECL_UNIT (decl)->unit_num]
     = form_reserv_sets_list (DECL_UNIT (decl)->final_presence_list);
          unit_absence_set_table [DECL_UNIT (decl)->unit_num]
     = form_reserv_sets_list (DECL_UNIT (decl)->absence_list);
          unit_final_absence_set_table [DECL_UNIT (decl)->unit_num]
     = form_reserv_sets_list (DECL_UNIT (decl)->final_absence_list);
        }
    }
}
