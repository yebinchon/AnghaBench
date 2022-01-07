
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct loop {int dummy; } ;


 int empty_block_p (int ) ;
 int ip_end_pos (struct loop*) ;
 int ip_normal_pos (struct loop*) ;

__attribute__((used)) static bool
allow_ip_end_pos_p (struct loop *loop)
{
  if (!ip_normal_pos (loop))
    return 1;

  if (!empty_block_p (ip_end_pos (loop)))
    return 1;

  return 0;
}
