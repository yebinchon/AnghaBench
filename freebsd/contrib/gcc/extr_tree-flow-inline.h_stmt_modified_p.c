
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* stmt_ann_t ;
struct TYPE_3__ {int modified; } ;


 TYPE_1__* stmt_ann (int ) ;

__attribute__((used)) static inline bool
stmt_modified_p (tree t)
{
  stmt_ann_t ann = stmt_ann (t);




  return ann ? ann->modified : 1;
}
