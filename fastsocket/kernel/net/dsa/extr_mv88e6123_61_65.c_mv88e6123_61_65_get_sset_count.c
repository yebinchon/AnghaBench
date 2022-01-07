
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dsa_switch {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int mv88e6123_61_65_hw_stats ;

__attribute__((used)) static int mv88e6123_61_65_get_sset_count(struct dsa_switch *ds)
{
 return ARRAY_SIZE(mv88e6123_61_65_hw_stats);
}
