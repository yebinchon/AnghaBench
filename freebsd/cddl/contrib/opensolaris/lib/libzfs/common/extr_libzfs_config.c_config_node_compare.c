
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cn_name; } ;
typedef TYPE_1__ config_node_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
config_node_compare(const void *a, const void *b, void *unused)
{
 int ret;

 const config_node_t *ca = (config_node_t *)a;
 const config_node_t *cb = (config_node_t *)b;

 ret = strcmp(ca->cn_name, cb->cn_name);

 if (ret < 0)
  return (-1);
 else if (ret > 0)
  return (1);
 else
  return (0);
}
