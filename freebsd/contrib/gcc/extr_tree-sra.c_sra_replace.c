
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int tree ;
struct TYPE_8__ {int bb; } ;
typedef TYPE_1__ block_stmt_iterator ;


 scalar_t__ bsi_end_p (TYPE_1__) ;
 TYPE_1__ bsi_last (int ) ;
 int bsi_prev (TYPE_1__*) ;
 int bsi_remove (TYPE_1__*,int) ;
 int sra_insert_before (TYPE_1__*,int ) ;

__attribute__((used)) static void
sra_replace (block_stmt_iterator *bsi, tree list)
{
  sra_insert_before (bsi, list);
  bsi_remove (bsi, 0);
  if (bsi_end_p (*bsi))
    *bsi = bsi_last (bsi->bb);
  else
    bsi_prev (bsi);
}
