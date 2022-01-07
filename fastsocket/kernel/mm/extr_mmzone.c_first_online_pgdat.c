
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pglist_data {int dummy; } ;


 struct pglist_data* NODE_DATA (int ) ;
 int first_online_node ;

struct pglist_data *first_online_pgdat(void)
{
 return NODE_DATA(first_online_node);
}
