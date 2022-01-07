
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct leh_tf_state {TYPE_2__* outer; scalar_t__ fallthru_label; } ;
struct TYPE_4__ {TYPE_1__* tf; } ;
struct TYPE_3__ {int try_finally_expr; } ;


 scalar_t__ create_artificial_label () ;
 int record_in_finally_tree (scalar_t__,int ) ;

__attribute__((used)) static tree
lower_try_finally_fallthru_label (struct leh_tf_state *tf)
{
  tree label = tf->fallthru_label;
  if (!label)
    {
      label = create_artificial_label ();
      tf->fallthru_label = label;
      if (tf->outer->tf)
        record_in_finally_tree (label, tf->outer->tf->try_finally_expr);
    }
  return label;
}
