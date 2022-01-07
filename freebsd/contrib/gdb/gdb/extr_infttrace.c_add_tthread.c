
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int thread_info ;
typedef int lwpid_t ;


 int * create_thread_info (int,int ) ;
 int * find_thread_info (int ) ;

__attribute__((used)) static thread_info *
add_tthread (int pid, lwpid_t tid)
{
  thread_info *p;

  p = find_thread_info (tid);
  if (((void*)0) == p)
    p = create_thread_info (pid, tid);

  return p;
}
