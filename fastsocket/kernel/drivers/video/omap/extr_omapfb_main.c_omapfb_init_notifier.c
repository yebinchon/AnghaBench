
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 int OMAPFB_PLANE_NUM ;
 int * omapfb_client_list ;

__attribute__((used)) static void omapfb_init_notifier(void)
{
 int i;

 for (i = 0; i < OMAPFB_PLANE_NUM; i++)
  BLOCKING_INIT_NOTIFIER_HEAD(&omapfb_client_list[i]);
}
