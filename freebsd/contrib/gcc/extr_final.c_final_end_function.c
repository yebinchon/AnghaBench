
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int (* end_epilogue ) (int ,int ) ;int (* end_function ) (int ) ;} ;
struct TYPE_4__ {int (* function_epilogue ) (int ,int ) ;} ;
struct TYPE_5__ {TYPE_1__ asm_out; } ;


 scalar_t__ DWARF2_DEBUG ;
 scalar_t__ VMS_AND_DWARF2_DEBUG ;
 int app_disable () ;
 int asm_out_file ;
 TYPE_3__* debug_hooks ;
 scalar_t__ dwarf2out_do_frame () ;
 int dwarf2out_end_epilogue (int ,int ) ;
 int get_frame_size () ;
 int high_function_linenum ;
 int last_filename ;
 int last_linenum ;
 int stub1 (int ) ;
 int stub2 (int ,int ) ;
 int stub3 (int ,int ) ;
 TYPE_2__ targetm ;
 scalar_t__ write_symbols ;

void
final_end_function (void)
{
  app_disable ();

  (*debug_hooks->end_function) (high_function_linenum);



  targetm.asm_out.function_epilogue (asm_out_file, get_frame_size ());


  (*debug_hooks->end_epilogue) (last_linenum, last_filename);






}
