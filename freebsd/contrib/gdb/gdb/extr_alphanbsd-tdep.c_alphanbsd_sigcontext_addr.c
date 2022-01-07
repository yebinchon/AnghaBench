
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int get_frame_base (struct frame_info*) ;

__attribute__((used)) static CORE_ADDR
alphanbsd_sigcontext_addr (struct frame_info *frame)
{



  return get_frame_base (frame);
}
