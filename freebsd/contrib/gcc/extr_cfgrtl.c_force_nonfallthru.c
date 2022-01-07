
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_4__ {int dest; } ;


 int force_nonfallthru_and_redirect (TYPE_1__*,int ) ;

basic_block
force_nonfallthru (edge e)
{
  return force_nonfallthru_and_redirect (e, e->dest);
}
