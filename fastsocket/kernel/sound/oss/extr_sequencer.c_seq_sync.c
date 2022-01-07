
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HZ ;
 int current ;
 int interruptible_sleep_on_timeout (int *,int ) ;
 scalar_t__ qlen ;
 int seq_playing ;
 int seq_sleeper ;
 int seq_startplay () ;
 int signal_pending (int ) ;

__attribute__((used)) static int seq_sync(void)
{
 if (qlen && !seq_playing && !signal_pending(current))
  seq_startplay();

  if (qlen > 0)
   interruptible_sleep_on_timeout(&seq_sleeper, HZ);
 return qlen;
}
