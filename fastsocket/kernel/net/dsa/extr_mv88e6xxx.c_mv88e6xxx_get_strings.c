
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct mv88e6xxx_hw_stat {int string; } ;
struct dsa_switch {int dummy; } ;


 int ETH_GSTRING_LEN ;
 int memcpy (int *,int ,int) ;

void mv88e6xxx_get_strings(struct dsa_switch *ds,
      int nr_stats, struct mv88e6xxx_hw_stat *stats,
      int port, uint8_t *data)
{
 int i;

 for (i = 0; i < nr_stats; i++) {
  memcpy(data + i * ETH_GSTRING_LEN,
         stats[i].string, ETH_GSTRING_LEN);
 }
}
