
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* ptr; } ;
typedef TYPE_2__ tree_stmt_iterator ;
typedef int tree ;
struct TYPE_4__ {int stmt; } ;



__attribute__((used)) static inline tree
tsi_stmt (tree_stmt_iterator i)
{
  return i.ptr->stmt;
}
