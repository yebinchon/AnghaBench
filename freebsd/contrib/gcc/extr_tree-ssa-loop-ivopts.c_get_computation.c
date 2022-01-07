
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct loop {int dummy; } ;
struct iv_use {int stmt; } ;
struct iv_cand {int dummy; } ;


 int get_computation_at (struct loop*,struct iv_use*,struct iv_cand*,int ) ;

__attribute__((used)) static tree
get_computation (struct loop *loop, struct iv_use *use, struct iv_cand *cand)
{
  return get_computation_at (loop, use, cand, use->stmt);
}
