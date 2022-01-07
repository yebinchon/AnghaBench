
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gdbarch {int dummy; } ;
struct dwarf2_frame_ops {int dummy; } ;


 int dwarf2_frame_data ;
 struct dwarf2_frame_ops* dwarf2_frame_init (struct gdbarch*) ;
 struct dwarf2_frame_ops* gdbarch_data (struct gdbarch*,int ) ;
 int set_gdbarch_data (struct gdbarch*,int ,struct dwarf2_frame_ops*) ;

__attribute__((used)) static struct dwarf2_frame_ops *
dwarf2_frame_ops (struct gdbarch *gdbarch)
{
  struct dwarf2_frame_ops *ops = gdbarch_data (gdbarch, dwarf2_frame_data);
  if (ops == ((void*)0))
    {


      ops = dwarf2_frame_init (gdbarch);
      set_gdbarch_data (gdbarch, dwarf2_frame_data, ops);
    }
  return ops;
}
