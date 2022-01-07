
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_comm {int dummy; } ;
struct config_item {int dummy; } ;


 struct dlm_comm* config_item_to_comm (struct config_item*) ;
 int kfree (struct dlm_comm*) ;

__attribute__((used)) static void release_comm(struct config_item *i)
{
 struct dlm_comm *cm = config_item_to_comm(i);
 kfree(cm);
}
