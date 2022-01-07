
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg {char* args; struct msg* next; } ;


 char* _ (char const*) ;
 int free (struct msg*) ;
 struct msg* msg_chain ;
 int printf (char*,char const*,char const*,char const*,char const*) ;
 int strlen (char const*) ;

void
print_message_queue (void)
{
  char const *arg[5];
  int i;
  struct msg *m = msg_chain;

  while (m)
    {
      struct msg *next = m->next;
      arg[0] = m->args;
      for (i = 0; i < 4; i++)
 arg[i + 1] = arg[i] + strlen (arg[i]) + 1;
      printf (_(arg[0]), arg[1], arg[2], arg[3], arg[4]);
      free (m);
      m = next;
    }
}
