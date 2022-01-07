
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int g_intr ;

__attribute__((used)) static void
intr(int signo)
{
 g_intr = 1;
}
