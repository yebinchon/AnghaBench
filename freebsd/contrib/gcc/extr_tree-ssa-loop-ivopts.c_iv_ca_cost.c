
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_ca {int cost; scalar_t__ bad_uses; } ;


 int INFTY ;

__attribute__((used)) static unsigned
iv_ca_cost (struct iv_ca *ivs)
{
  return (ivs->bad_uses ? INFTY : ivs->cost);
}
