
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int current ;
 int schedule_timeout_interruptible (int) ;
 int signal_pending (int ) ;

__attribute__((used)) static int
wavefront_sleep (int limit)

{
 schedule_timeout_interruptible(limit);

 return signal_pending(current);
}
