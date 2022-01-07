
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* eh; } ;
struct TYPE_3__ {int sjlj_exit_after; } ;


 TYPE_2__* cfun ;

void
sjlj_emit_function_exit_after (rtx after)
{
  cfun->eh->sjlj_exit_after = after;
}
