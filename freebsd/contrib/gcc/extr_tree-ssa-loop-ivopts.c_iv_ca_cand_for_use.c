
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_use {size_t id; } ;
struct iv_ca {struct cost_pair** cand_for_use; } ;
struct cost_pair {int dummy; } ;



__attribute__((used)) static struct cost_pair *
iv_ca_cand_for_use (struct iv_ca *ivs, struct iv_use *use)
{
  return ivs->cand_for_use[use->id];
}
