
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int htab_del ;
struct TYPE_2__ {int mode; } ;


 int dm_insn_reserv ;
 int htab_create (int,int ,int ,int ) ;
 int insn_decl_eq_p ;
 int insn_decl_hash ;
 int insn_decl_table ;
 TYPE_1__ work_insn_decl ;

__attribute__((used)) static void
initiate_insn_decl_table (void)
{
  work_insn_decl.mode = dm_insn_reserv;
  insn_decl_table = htab_create (10, insn_decl_hash, insn_decl_eq_p,
     (htab_del) 0);
}
