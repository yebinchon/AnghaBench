
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {scalar_t__ index; } ;


 int SSA_NAME_DEF_STMT (int ) ;
 int SSA_NAME_VERSION (int ) ;
 TYPE_1__* bb_for_stmt (int ) ;
 int bitmap_bit_p (int *,int ) ;
 int gcc_assert (int) ;
 scalar_t__ last_basic_block ;
 int mark_block_for_update (TYPE_1__*) ;
 int mark_def_interesting (int ,int ,TYPE_1__*,int) ;
 int * names_to_release ;

__attribute__((used)) static void
prepare_def_site_for (tree name, bool insert_phi_p)
{
  tree stmt;
  basic_block bb;

  gcc_assert (names_to_release == ((void*)0)
       || !bitmap_bit_p (names_to_release, SSA_NAME_VERSION (name)));

  stmt = SSA_NAME_DEF_STMT (name);
  bb = bb_for_stmt (stmt);
  if (bb)
    {
      gcc_assert (bb->index < last_basic_block);
      mark_block_for_update (bb);
      mark_def_interesting (name, stmt, bb, insert_phi_p);
    }
}
