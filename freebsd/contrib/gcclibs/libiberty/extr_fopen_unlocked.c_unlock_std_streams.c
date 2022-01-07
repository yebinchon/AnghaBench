
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int stderr ;
 int stdin ;
 int stdout ;
 int unlock_1 (int ) ;

void
unlock_std_streams (void)
{
  unlock_1 (stdin);
  unlock_1 (stdout);
  unlock_1 (stderr);
}
