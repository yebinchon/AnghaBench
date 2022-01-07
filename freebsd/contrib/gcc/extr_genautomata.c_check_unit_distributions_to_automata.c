
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_7__ {int transformed_regexp; int name; } ;
struct TYPE_6__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_5__ {scalar_t__ mode; } ;


 TYPE_3__* DECL_INSN_RESERV (TYPE_1__*) ;
 int FALSE ;
 int annotation_message_reported_p ;
 int check_regexp_units_distribution (int ,int ) ;
 TYPE_2__* description ;
 scalar_t__ dm_insn_reserv ;
 int fprintf (int ,char*) ;
 scalar_t__ progress_flag ;
 int stderr ;

__attribute__((used)) static void
check_unit_distributions_to_automata (void)
{
  decl_t decl;
  int i;

  if (progress_flag)
    fprintf (stderr, "Check unit distributions to automata...");
  annotation_message_reported_p = FALSE;
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv)
 check_regexp_units_distribution
   (DECL_INSN_RESERV (decl)->name,
    DECL_INSN_RESERV (decl)->transformed_regexp);
    }
  if (progress_flag)
    fprintf (stderr, "done\n");
}
