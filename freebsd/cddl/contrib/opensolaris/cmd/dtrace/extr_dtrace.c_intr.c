
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_impatient ;
 int g_intr ;
 int g_newline ;

__attribute__((used)) static void
intr(int signo)
{
 if (!g_intr)
  g_newline = 1;

 if (g_intr++)
  g_impatient = 1;
}
