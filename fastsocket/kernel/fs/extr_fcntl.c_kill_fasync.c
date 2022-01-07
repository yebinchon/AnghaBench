
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fasync_struct {int dummy; } ;


 int __kill_fasync (struct fasync_struct*,int,int) ;
 int fasync_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;

void kill_fasync(struct fasync_struct **fp, int sig, int band)
{



 if (*fp) {
  read_lock(&fasync_lock);

  __kill_fasync(*fp, sig, band);
  read_unlock(&fasync_lock);
 }
}
