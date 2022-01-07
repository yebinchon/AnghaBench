
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wavefront_command {int cmd; } ;


 struct wavefront_command* wavefront_commands ;

__attribute__((used)) static struct wavefront_command *
wavefront_get_command (int cmd)

{
 int i;

 for (i = 0; wavefront_commands[i].cmd != 0; i++) {
  if (cmd == wavefront_commands[i].cmd) {
   return &wavefront_commands[i];
  }
 }

 return ((void*)0);
}
