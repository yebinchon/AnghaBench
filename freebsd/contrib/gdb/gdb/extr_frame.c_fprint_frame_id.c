
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ui_file {int dummy; } ;
struct frame_id {int special_addr; int code_addr; int stack_addr; } ;


 int fprintf_unfiltered (struct ui_file*,char*,int ,int ,int ) ;
 int paddr_nz (int ) ;

void
fprint_frame_id (struct ui_file *file, struct frame_id id)
{
  fprintf_unfiltered (file, "{stack=0x%s,code=0x%s,special=0x%s}",
        paddr_nz (id.stack_addr),
        paddr_nz (id.code_addr),
        paddr_nz (id.special_addr));
}
