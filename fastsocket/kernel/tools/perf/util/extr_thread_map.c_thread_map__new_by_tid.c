
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_map {int nr; int * map; } ;
typedef int pid_t ;


 struct thread_map* malloc (int) ;

struct thread_map *thread_map__new_by_tid(pid_t tid)
{
 struct thread_map *threads = malloc(sizeof(*threads) + sizeof(pid_t));

 if (threads != ((void*)0)) {
  threads->map[0] = tid;
  threads->nr = 1;
 }

 return threads;
}
