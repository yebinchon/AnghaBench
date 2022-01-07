
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_pseudo_node_identifier (int ) ;
 int true_random () ;
 int uuid_state_node ;
 int uuid_state_seqnum ;

__attribute__((used)) static void init_state(void)
{
    uuid_state_seqnum = true_random();
    get_pseudo_node_identifier(uuid_state_node);
}
