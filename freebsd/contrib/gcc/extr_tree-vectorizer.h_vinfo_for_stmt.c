
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
typedef int * stmt_vec_info ;
typedef TYPE_2__* stmt_ann_t ;
struct TYPE_4__ {scalar_t__ aux; } ;
struct TYPE_5__ {TYPE_1__ common; } ;


 TYPE_2__* stmt_ann (int ) ;

__attribute__((used)) static inline stmt_vec_info
vinfo_for_stmt (tree stmt)
{
  stmt_ann_t ann = stmt_ann (stmt);
  return ann ? (stmt_vec_info) ann->common.aux : ((void*)0);
}
