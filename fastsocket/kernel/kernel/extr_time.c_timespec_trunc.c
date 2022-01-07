
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {unsigned int tv_nsec; } ;


 int jiffies_to_usecs (int) ;

struct timespec timespec_trunc(struct timespec t, unsigned gran)
{





 if (gran <= jiffies_to_usecs(1) * 1000) {

 } else if (gran == 1000000000) {
  t.tv_nsec = 0;
 } else {
  t.tv_nsec -= t.tv_nsec % gran;
 }
 return t;
}
