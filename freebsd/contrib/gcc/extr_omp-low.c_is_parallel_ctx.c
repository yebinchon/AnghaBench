
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stmt; } ;
typedef TYPE_1__ omp_context ;


 scalar_t__ OMP_PARALLEL ;
 scalar_t__ TREE_CODE (int ) ;

__attribute__((used)) static inline bool
is_parallel_ctx (omp_context *ctx)
{
  return TREE_CODE (ctx->stmt) == OMP_PARALLEL;
}
