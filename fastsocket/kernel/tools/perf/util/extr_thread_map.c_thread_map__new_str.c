
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uid_t ;
struct thread_map {int dummy; } ;


 scalar_t__ UINT_MAX ;
 struct thread_map* thread_map__new_by_pid_str (char const*) ;
 struct thread_map* thread_map__new_by_tid_str (char const*) ;
 struct thread_map* thread_map__new_by_uid (scalar_t__) ;

struct thread_map *thread_map__new_str(const char *pid, const char *tid,
           uid_t uid)
{
 if (pid)
  return thread_map__new_by_pid_str(pid);

 if (!tid && uid != UINT_MAX)
  return thread_map__new_by_uid(uid);

 return thread_map__new_by_tid_str(tid);
}
