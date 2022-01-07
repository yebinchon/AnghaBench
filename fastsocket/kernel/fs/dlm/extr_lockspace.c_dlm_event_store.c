
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ls {int ls_uevent_wait; int ls_flags; int ls_uevent_result; } ;
typedef size_t ssize_t ;


 int LSFL_UEVENT_WAIT ;
 int set_bit (int ,int *) ;
 int simple_strtol (char const*,int *,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static ssize_t dlm_event_store(struct dlm_ls *ls, const char *buf, size_t len)
{
 ls->ls_uevent_result = simple_strtol(buf, ((void*)0), 0);
 set_bit(LSFL_UEVENT_WAIT, &ls->ls_flags);
 wake_up(&ls->ls_uevent_wait);
 return len;
}
