
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wahc {int rpipe_mutex; int rpipe_bm_lock; } ;


 int mutex_init (int *) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static inline void wa_rpipe_init(struct wahc *wa)
{
 spin_lock_init(&wa->rpipe_bm_lock);
 mutex_init(&wa->rpipe_mutex);
}
