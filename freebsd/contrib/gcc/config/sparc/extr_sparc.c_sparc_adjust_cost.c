
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;





 int hypersparc_adjust_cost (int ,int ,int ,int) ;
 int sparc_cpu ;
 int supersparc_adjust_cost (int ,int ,int ,int) ;

__attribute__((used)) static int
sparc_adjust_cost(rtx insn, rtx link, rtx dep, int cost)
{
  switch (sparc_cpu)
    {
    case 128:
      cost = supersparc_adjust_cost (insn, link, dep, cost);
      break;
    case 130:
    case 129:
      cost = hypersparc_adjust_cost (insn, link, dep, cost);
      break;
    default:
      break;
    }
  return cost;
}
