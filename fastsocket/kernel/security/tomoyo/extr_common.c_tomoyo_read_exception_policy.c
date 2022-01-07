
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_io_buffer {int read_eof; int read_step; int * read_var2; } ;


 int EINVAL ;
 int tomoyo_read_alias_policy (struct tomoyo_io_buffer*) ;
 int tomoyo_read_domain_initializer_policy (struct tomoyo_io_buffer*) ;
 int tomoyo_read_domain_keeper_policy (struct tomoyo_io_buffer*) ;
 int tomoyo_read_file_pattern (struct tomoyo_io_buffer*) ;
 int tomoyo_read_globally_readable_policy (struct tomoyo_io_buffer*) ;
 int tomoyo_read_no_rewrite_policy (struct tomoyo_io_buffer*) ;

__attribute__((used)) static int tomoyo_read_exception_policy(struct tomoyo_io_buffer *head)
{
 if (!head->read_eof) {
  switch (head->read_step) {
  case 0:
   head->read_var2 = ((void*)0);
   head->read_step = 1;
  case 1:
   if (!tomoyo_read_domain_keeper_policy(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 2;
  case 2:
   if (!tomoyo_read_globally_readable_policy(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 3;
  case 3:
   head->read_var2 = ((void*)0);
   head->read_step = 4;
  case 4:
   if (!tomoyo_read_domain_initializer_policy(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 5;
  case 5:
   if (!tomoyo_read_alias_policy(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 6;
  case 6:
   head->read_var2 = ((void*)0);
   head->read_step = 7;
  case 7:
   if (!tomoyo_read_file_pattern(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 8;
  case 8:
   if (!tomoyo_read_no_rewrite_policy(head))
    break;
   head->read_var2 = ((void*)0);
   head->read_step = 9;
  case 9:
   head->read_eof = 1;
   break;
  default:
   return -EINVAL;
  }
 }
 return 0;
}
