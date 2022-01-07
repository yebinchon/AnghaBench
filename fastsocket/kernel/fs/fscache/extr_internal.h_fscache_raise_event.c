
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int event_mask; int events; int debug_id; } ;


 int BUG_ON (int) ;
 unsigned int NR_FSCACHE_OBJECT_EVENTS ;
 int fscache_enqueue_object (struct fscache_object*) ;
 int printk (char*,int ,int ,int) ;
 int test_and_set_bit (unsigned int,int *) ;
 scalar_t__ test_bit (unsigned int,int *) ;

__attribute__((used)) static inline void fscache_raise_event(struct fscache_object *object,
           unsigned event)
{
 BUG_ON(event >= NR_FSCACHE_OBJECT_EVENTS);




 if (!test_and_set_bit(event, &object->events) &&
     test_bit(event, &object->event_mask))
  fscache_enqueue_object(object);
}
