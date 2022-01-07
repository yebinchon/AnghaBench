
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread_trace {int dummy; } ;


 struct thread_trace* zalloc (int) ;

__attribute__((used)) static struct thread_trace *thread_trace__new(void)
{
 return zalloc(sizeof(struct thread_trace));
}
