
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tsi; } ;
typedef TYPE_1__ block_stmt_iterator ;


 int tsi_prev (int *) ;

__attribute__((used)) static inline void
bsi_prev (block_stmt_iterator *i)
{
  tsi_prev (&i->tsi);
}
