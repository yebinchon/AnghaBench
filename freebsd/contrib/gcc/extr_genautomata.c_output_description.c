
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_17__ {char* name; int regexp; int condexp; } ;
struct TYPE_16__ {char* name; int regexp; } ;
struct TYPE_15__ {char* name; int * final_absence_list; int * absence_list; int * final_presence_list; int * presence_list; int * excl_list; } ;
struct TYPE_14__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_13__ {scalar_t__ mode; } ;
struct TYPE_12__ {int latency; char* out_insn_name; char* in_insn_name; } ;


 TYPE_10__* DECL_BYPASS (TYPE_1__*) ;
 TYPE_8__* DECL_INSN_RESERV (TYPE_1__*) ;
 TYPE_6__* DECL_RESERV (TYPE_1__*) ;
 TYPE_4__* DECL_UNIT (TYPE_1__*) ;
 TYPE_1__* advance_cycle_insn_decl ;
 TYPE_2__* description ;
 scalar_t__ dm_bypass ;
 scalar_t__ dm_insn_reserv ;
 scalar_t__ dm_reserv ;
 scalar_t__ dm_unit ;
 int fprintf (int ,char*,...) ;
 int output_description_file ;
 int output_pattern_set_el_list (int *) ;
 int output_regexp (int ) ;
 int output_unit_set_el_list (int *) ;
 int print_rtl (int ,int ) ;

__attribute__((used)) static void
output_description (void)
{
  decl_t decl;
  int i;

  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_unit)
 {
   if (DECL_UNIT (decl)->excl_list != ((void*)0))
     {
       fprintf (output_description_file, "unit %s exlusion_set: ",
         DECL_UNIT (decl)->name);
       output_unit_set_el_list (DECL_UNIT (decl)->excl_list);
       fprintf (output_description_file, "\n");
     }
   if (DECL_UNIT (decl)->presence_list != ((void*)0))
     {
       fprintf (output_description_file, "unit %s presence_set: ",
         DECL_UNIT (decl)->name);
       output_pattern_set_el_list (DECL_UNIT (decl)->presence_list);
       fprintf (output_description_file, "\n");
     }
   if (DECL_UNIT (decl)->final_presence_list != ((void*)0))
     {
       fprintf (output_description_file, "unit %s final_presence_set: ",
         DECL_UNIT (decl)->name);
       output_pattern_set_el_list
  (DECL_UNIT (decl)->final_presence_list);
       fprintf (output_description_file, "\n");
     }
   if (DECL_UNIT (decl)->absence_list != ((void*)0))
     {
       fprintf (output_description_file, "unit %s absence_set: ",
         DECL_UNIT (decl)->name);
       output_pattern_set_el_list (DECL_UNIT (decl)->absence_list);
       fprintf (output_description_file, "\n");
     }
   if (DECL_UNIT (decl)->final_absence_list != ((void*)0))
     {
       fprintf (output_description_file, "unit %s final_absence_set: ",
         DECL_UNIT (decl)->name);
       output_pattern_set_el_list
  (DECL_UNIT (decl)->final_absence_list);
       fprintf (output_description_file, "\n");
     }
 }
    }
  fprintf (output_description_file, "\n");
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_reserv)
 {
          fprintf (output_description_file, "reservation %s: ",
     DECL_RESERV (decl)->name);
          output_regexp (DECL_RESERV (decl)->regexp);
          fprintf (output_description_file, "\n");
        }
      else if (decl->mode == dm_insn_reserv && decl != advance_cycle_insn_decl)
        {
          fprintf (output_description_file, "insn reservation %s ",
     DECL_INSN_RESERV (decl)->name);
          print_rtl (output_description_file,
       DECL_INSN_RESERV (decl)->condexp);
          fprintf (output_description_file, ": ");
          output_regexp (DECL_INSN_RESERV (decl)->regexp);
          fprintf (output_description_file, "\n");
        }
      else if (decl->mode == dm_bypass)
 fprintf (output_description_file, "bypass %d %s %s\n",
   DECL_BYPASS (decl)->latency,
   DECL_BYPASS (decl)->out_insn_name,
   DECL_BYPASS (decl)->in_insn_name);
    }
  fprintf (output_description_file, "\n\f\n");
}
