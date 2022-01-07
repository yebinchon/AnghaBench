
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loops {int tree_root; } ;


 int flow_loop_level_compute (int ) ;

__attribute__((used)) static void
flow_loops_level_compute (struct loops *loops)
{
  flow_loop_level_compute (loops->tree_root);
}
