
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ stmt_vec_info ;
typedef TYPE_2__* stmt_ann_t ;
struct TYPE_4__ {char* aux; } ;
struct TYPE_5__ {TYPE_1__ common; } ;



__attribute__((used)) static inline void
set_stmt_info (stmt_ann_t ann, stmt_vec_info stmt_info)
{
  if (ann)
    ann->common.aux = (char *) stmt_info;
}
