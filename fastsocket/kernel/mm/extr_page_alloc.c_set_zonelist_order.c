
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ZONELIST_ORDER_ZONE ;
 int current_zonelist_order ;

__attribute__((used)) static void set_zonelist_order(void)
{
 current_zonelist_order = ZONELIST_ORDER_ZONE;
}
