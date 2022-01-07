
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int step_1 (int ,int ,char*) ;

__attribute__((used)) static void
step_command (char *count_string, int from_tty)
{
  step_1 (0, 0, count_string);
}
