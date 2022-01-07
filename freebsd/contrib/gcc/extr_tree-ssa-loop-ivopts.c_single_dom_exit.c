
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct loop {TYPE_1__* single_exit; } ;
typedef TYPE_1__* edge ;
struct TYPE_3__ {int src; } ;


 int just_once_each_iteration_p (struct loop*,int ) ;

edge
single_dom_exit (struct loop *loop)
{
  edge exit = loop->single_exit;

  if (!exit)
    return ((void*)0);

  if (!just_once_each_iteration_p (loop, exit->src))
    return ((void*)0);

  return exit;
}
