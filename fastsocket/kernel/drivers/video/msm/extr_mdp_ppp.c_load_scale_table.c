
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp_table_entry {int reg; int val; } ;
struct mdp_info {int dummy; } ;


 int mdp_writel (struct mdp_info const*,int ,int ) ;

__attribute__((used)) static void load_scale_table(const struct mdp_info *mdp,
        struct mdp_table_entry *table, int len)
{
 int i;
 for (i = 0; i < len; i++)
  mdp_writel(mdp, table[i].val, table[i].reg);
}
