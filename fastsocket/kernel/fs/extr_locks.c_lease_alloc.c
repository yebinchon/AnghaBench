
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file_lock {int dummy; } ;
struct file {int dummy; } ;


 int ENOMEM ;
 struct file_lock* ERR_PTR (int) ;
 int lease_init (struct file*,int,struct file_lock*) ;
 struct file_lock* locks_alloc_lock () ;
 int locks_free_lock (struct file_lock*) ;

__attribute__((used)) static struct file_lock *lease_alloc(struct file *filp, int type)
{
 struct file_lock *fl = locks_alloc_lock();
 int error = -ENOMEM;

 if (fl == ((void*)0))
  return ERR_PTR(error);

 error = lease_init(filp, type, fl);
 if (error) {
  locks_free_lock(fl);
  return ERR_PTR(error);
 }
 return fl;
}
