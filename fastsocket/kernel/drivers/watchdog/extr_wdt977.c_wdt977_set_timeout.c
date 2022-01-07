
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 scalar_t__ machine_is_netwinder () ;
 int timeout ;
 int timeoutM ;

__attribute__((used)) static int wdt977_set_timeout(int t)
{
 int tmrval;


 tmrval = (t + 59) / 60;

 if (machine_is_netwinder()) {




  tmrval += tmrval;
 }

 if (tmrval < 1 || tmrval > 255)
  return -EINVAL;



 timeout = t;
 timeoutM = tmrval;
 return 0;
}
