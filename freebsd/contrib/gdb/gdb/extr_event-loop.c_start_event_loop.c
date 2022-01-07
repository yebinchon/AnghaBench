
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int RETURN_MASK_ALL ;
 int after_char_processing_hook () ;
 int catch_errors (int ,int ,char*,int ) ;
 int display_gdb_prompt (int ) ;
 int gdb_do_one_event ;
 int stub1 () ;

void
start_event_loop (void)
{






  while (1)
    {
      int gdb_result;

      gdb_result = catch_errors (gdb_do_one_event, 0, "", RETURN_MASK_ALL);
      if (gdb_result < 0)
 break;





      if (gdb_result == 0)
 {



   display_gdb_prompt (0);






   if (after_char_processing_hook)
     (*after_char_processing_hook) ();


 }
    }



  return;
}
