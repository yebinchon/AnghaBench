
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ptid_t ;


 int PIDGET (int ) ;
 int current_inferior ;
 int inf_tid_to_thread (int ,int ) ;
 int inf_update_procs (int ) ;

__attribute__((used)) static int
gnu_thread_alive (ptid_t tid)
{
  inf_update_procs (current_inferior);
  return !!inf_tid_to_thread (current_inferior, PIDGET (tid));
}
