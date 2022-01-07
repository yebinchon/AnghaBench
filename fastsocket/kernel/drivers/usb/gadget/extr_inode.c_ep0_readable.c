
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dev_data {int fasync; int wait; } ;


 int POLL_IN ;
 int SIGIO ;
 int kill_fasync (int *,int ,int ) ;
 int wake_up (int *) ;

__attribute__((used)) static inline void ep0_readable (struct dev_data *dev)
{
 wake_up (&dev->wait);
 kill_fasync (&dev->fasync, SIGIO, POLL_IN);
}
