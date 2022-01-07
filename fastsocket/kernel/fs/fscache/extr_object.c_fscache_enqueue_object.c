
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fscache_object {int work; int debug_id; } ;


 int _enter (char*,int ) ;
 int slow_work_enqueue (int *) ;

void fscache_enqueue_object(struct fscache_object *object)
{
 _enter("{OBJ%x}", object->debug_id);

 slow_work_enqueue(&object->work);
}
