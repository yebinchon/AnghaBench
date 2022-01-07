
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINT ;
 int inferior_process_group ;
 int kill (int ,int ) ;

__attribute__((used)) static void
child_stop (void)
{
  kill (-inferior_process_group, SIGINT);
}
