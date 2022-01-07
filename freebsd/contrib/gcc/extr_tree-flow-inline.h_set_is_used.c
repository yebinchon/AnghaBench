
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* var_ann_t ;
typedef int tree ;
struct TYPE_3__ {int used; } ;


 TYPE_1__* get_var_ann (int ) ;

__attribute__((used)) static inline void
set_is_used (tree var)
{
  var_ann_t ann = get_var_ann (var);
  ann->used = 1;
}
