
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct se_lun {int lun_shutdown_comp; } ;


 int __transport_clear_lun_from_sessions (struct se_lun*) ;
 int complete (int *) ;

__attribute__((used)) static int transport_clear_lun_thread(void *p)
{
 struct se_lun *lun = p;

 __transport_clear_lun_from_sessions(lun);
 complete(&lun->lun_shutdown_comp);

 return 0;
}
