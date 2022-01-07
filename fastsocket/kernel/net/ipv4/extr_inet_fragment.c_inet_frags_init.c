
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_3__ {scalar_t__ expires; } ;
struct inet_frags {TYPE_1__ secret_timer; scalar_t__ secret_interval; scalar_t__ rnd; int lock; int * hash; } ;


 int INETFRAGS_HASHSZ ;
 int INIT_HLIST_HEAD (int *) ;
 int add_timer (TYPE_1__*) ;
 int inet_frag_secret_rebuild ;
 int jiffies ;
 int num_physpages ;
 int rwlock_init (int *) ;
 int setup_timer (TYPE_1__*,int ,unsigned long) ;

void inet_frags_init(struct inet_frags *f)
{
 int i;

 for (i = 0; i < INETFRAGS_HASHSZ; i++)
  INIT_HLIST_HEAD(&f->hash[i]);

 rwlock_init(&f->lock);

 f->rnd = (u32) ((num_physpages ^ (num_physpages>>7)) ^
       (jiffies ^ (jiffies >> 6)));

 setup_timer(&f->secret_timer, inet_frag_secret_rebuild,
   (unsigned long)f);
 f->secret_timer.expires = jiffies + f->secret_interval;
 add_timer(&f->secret_timer);
}
