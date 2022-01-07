
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int hashval_t ;
typedef TYPE_1__* expr_pred_trans_t ;
struct TYPE_2__ {int hashcode; } ;



__attribute__((used)) static hashval_t
expr_pred_trans_hash (const void *p)
{
  const expr_pred_trans_t ve = (expr_pred_trans_t) p;
  return ve->hashcode;
}
