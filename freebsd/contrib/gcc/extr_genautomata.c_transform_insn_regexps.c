
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* decl_t ;
struct TYPE_8__ {int regexp; int transformed_regexp; } ;
struct TYPE_7__ {int decls_num; TYPE_1__** decls; } ;
struct TYPE_6__ {scalar_t__ mode; } ;


 TYPE_4__* DECL_INSN_RESERV (TYPE_1__*) ;
 int add_advance_cycle_insn_decl () ;
 TYPE_1__* advance_cycle_insn_decl ;
 int copy_insn_regexp (int ) ;
 int create_ticker () ;
 TYPE_2__* description ;
 scalar_t__ dm_insn_reserv ;
 int fprintf (int ,char*) ;
 scalar_t__ progress_flag ;
 int stderr ;
 int ticker_off (int *) ;
 int transform_regexp (int ) ;
 int transform_time ;

__attribute__((used)) static void
transform_insn_regexps (void)
{
  decl_t decl;
  int i;

  transform_time = create_ticker ();
  add_advance_cycle_insn_decl ();
  if (progress_flag)
    fprintf (stderr, "Reservation transformation...");
  for (i = 0; i < description->decls_num; i++)
    {
      decl = description->decls [i];
      if (decl->mode == dm_insn_reserv && decl != advance_cycle_insn_decl)
 DECL_INSN_RESERV (decl)->transformed_regexp
   = transform_regexp (copy_insn_regexp
         (DECL_INSN_RESERV (decl)->regexp));
    }
  if (progress_flag)
    fprintf (stderr, "done\n");
  ticker_off (&transform_time);
}
