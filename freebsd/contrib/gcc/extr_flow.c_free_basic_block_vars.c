
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* rtl; } ;
struct TYPE_12__ {TYPE_4__ il; int * aux; } ;
struct TYPE_8__ {TYPE_1__* rtl; } ;
struct TYPE_11__ {TYPE_2__ il; int * aux; } ;
struct TYPE_9__ {int * global_live_at_end; } ;
struct TYPE_7__ {int * global_live_at_start; } ;


 TYPE_6__* ENTRY_BLOCK_PTR ;
 TYPE_5__* EXIT_BLOCK_PTR ;
 int * basic_block_info ;
 int clear_edges () ;
 int * label_to_block_map ;
 scalar_t__ last_basic_block ;
 scalar_t__ n_basic_blocks ;
 scalar_t__ n_edges ;

void
free_basic_block_vars (void)
{
  if (basic_block_info)
    {
      clear_edges ();
      basic_block_info = ((void*)0);
    }
  n_basic_blocks = 0;
  last_basic_block = 0;
  n_edges = 0;

  label_to_block_map = ((void*)0);

  ENTRY_BLOCK_PTR->aux = ((void*)0);
  ENTRY_BLOCK_PTR->il.rtl->global_live_at_end = ((void*)0);
  EXIT_BLOCK_PTR->aux = ((void*)0);
  EXIT_BLOCK_PTR->il.rtl->global_live_at_start = ((void*)0);
}
