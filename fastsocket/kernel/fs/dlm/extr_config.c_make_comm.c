
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_item {int dummy; } ;
struct dlm_comm {int nodeid; struct config_item item; scalar_t__ addr_count; scalar_t__ local; } ;
struct config_group {int dummy; } ;


 int ENOMEM ;
 struct config_item* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int comm_type ;
 int config_item_init_type_name (struct config_item*,char const*,int *) ;
 struct dlm_comm* kzalloc (int,int ) ;

__attribute__((used)) static struct config_item *make_comm(struct config_group *g, const char *name)
{
 struct dlm_comm *cm;

 cm = kzalloc(sizeof(struct dlm_comm), GFP_NOFS);
 if (!cm)
  return ERR_PTR(-ENOMEM);

 config_item_init_type_name(&cm->item, name, &comm_type);
 cm->nodeid = -1;
 cm->local = 0;
 cm->addr_count = 0;
 return &cm->item;
}
