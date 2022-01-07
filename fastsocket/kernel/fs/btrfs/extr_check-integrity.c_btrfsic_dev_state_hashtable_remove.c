
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct btrfsic_dev_state {int collision_resolving_node; } ;


 int list_del (int *) ;

__attribute__((used)) static void btrfsic_dev_state_hashtable_remove(struct btrfsic_dev_state *ds)
{
 list_del(&ds->collision_resolving_node);
}
