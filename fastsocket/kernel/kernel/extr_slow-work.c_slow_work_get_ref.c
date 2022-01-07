
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct slow_work {TYPE_1__* ops; } ;
struct TYPE_2__ {int (* get_ref ) (struct slow_work*) ;} ;


 int stub1 (struct slow_work*) ;

__attribute__((used)) static inline int slow_work_get_ref(struct slow_work *work)
{
 if (work->ops->get_ref)
  return work->ops->get_ref(work);

 return 0;
}
