
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_comm {size_t addr_count; int * addr; int nodeid; } ;
struct config_item {int dummy; } ;
struct config_group {int dummy; } ;


 int config_item_put (struct config_item*) ;
 struct dlm_comm* config_item_to_comm (struct config_item*) ;
 int dlm_lowcomms_close (int ) ;
 int kfree (int ) ;
 struct dlm_comm* local_comm ;

__attribute__((used)) static void drop_comm(struct config_group *g, struct config_item *i)
{
 struct dlm_comm *cm = config_item_to_comm(i);
 if (local_comm == cm)
  local_comm = ((void*)0);
 dlm_lowcomms_close(cm->nodeid);
 while (cm->addr_count--)
  kfree(cm->addr[cm->addr_count]);
 config_item_put(i);
}
