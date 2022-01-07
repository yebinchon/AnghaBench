
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct link {scalar_t__ first_out; scalar_t__ next_out; } ;


 int dbg_print_buf_chain (scalar_t__) ;
 int info (char*) ;

__attribute__((used)) static void link_dump_send_queue(struct link *l_ptr)
{
 if (l_ptr->next_out) {
  info("\nContents of unsent queue:\n");
  dbg_print_buf_chain(l_ptr->next_out);
 }
 info("\nContents of send queue:\n");
 if (l_ptr->first_out) {
  dbg_print_buf_chain(l_ptr->first_out);
 }
 info("Empty send queue\n");
}
