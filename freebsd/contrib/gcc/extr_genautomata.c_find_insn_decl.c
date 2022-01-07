
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int decl_t ;
struct TYPE_6__ {char const* name; } ;
struct TYPE_5__ {int mode; } ;


 TYPE_3__* DECL_INSN_RESERV (TYPE_1__*) ;
 int dm_insn_reserv ;
 void* htab_find (int ,TYPE_1__*) ;
 int insn_decl_table ;
 TYPE_1__ work_insn_decl ;

__attribute__((used)) static decl_t
find_insn_decl (const char *name)
{
  void *entry;

  work_insn_decl.mode = dm_insn_reserv;
  DECL_INSN_RESERV (&work_insn_decl)->name = name;
  entry = htab_find (insn_decl_table, &work_insn_decl);
  return (decl_t) entry;
}
