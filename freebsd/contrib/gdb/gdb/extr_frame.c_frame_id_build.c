
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_id {int dummy; } ;
typedef int CORE_ADDR ;


 struct frame_id frame_id_build_special (int ,int ,int ) ;

struct frame_id
frame_id_build (CORE_ADDR stack_addr, CORE_ADDR code_addr)
{
  return frame_id_build_special (stack_addr, code_addr, 0);
}
