
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_TROUBLE ;
 char* _ (char const*) ;
 int abort () ;
 int error (int ,int ,char*,char*) ;
 int print_message_queue () ;

void
fatal (char const *msgid)
{
  print_message_queue ();
  error (EXIT_TROUBLE, 0, "%s", _(msgid));
  abort ();
}
