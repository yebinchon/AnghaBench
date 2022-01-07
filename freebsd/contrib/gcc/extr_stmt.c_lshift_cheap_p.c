
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int COSTS_N_INSNS (int) ;
 int SET ;
 int const1_rtx ;
 int gen_rtx_ASHIFT (int ,int ,int ) ;
 int gen_rtx_REG (int ,int) ;
 int rtx_cost (int ,int ) ;
 int word_mode ;

__attribute__((used)) static
bool lshift_cheap_p (void)
{
  static bool init = 0;
  static bool cheap = 1;

  if (!init)
    {
      rtx reg = gen_rtx_REG (word_mode, 10000);
      int cost = rtx_cost (gen_rtx_ASHIFT (word_mode, const1_rtx, reg), SET);
      cheap = cost < COSTS_N_INSNS (3);
      init = 1;
    }

  return cheap;
}
