
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* basic_block ;
struct TYPE_4__ {int index; } ;


 int SET_BASIC_BLOCK (int ,int *) ;
 int n_basic_blocks ;
 int unlink_block (TYPE_1__*) ;

void
expunge_block (basic_block b)
{
  unlink_block (b);
  SET_BASIC_BLOCK (b->index, ((void*)0));
  n_basic_blocks--;





}
