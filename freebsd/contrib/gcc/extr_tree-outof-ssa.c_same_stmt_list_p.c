
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* edge ;
struct TYPE_3__ {scalar_t__ aux; } ;
typedef scalar_t__ PTR ;


 scalar_t__ leader_match ;

__attribute__((used)) static bool
same_stmt_list_p (edge e)
{
  return (e->aux == (PTR) leader_match) ? 1 : 0;
}
