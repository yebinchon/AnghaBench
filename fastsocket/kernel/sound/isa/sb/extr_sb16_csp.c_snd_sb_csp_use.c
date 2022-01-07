
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_sb_csp {int access_mutex; scalar_t__ used; } ;


 int EAGAIN ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int snd_sb_csp_use(struct snd_sb_csp * p)
{
 mutex_lock(&p->access_mutex);
 if (p->used) {
  mutex_unlock(&p->access_mutex);
  return -EAGAIN;
 }
 p->used++;
 mutex_unlock(&p->access_mutex);

 return 0;

}
