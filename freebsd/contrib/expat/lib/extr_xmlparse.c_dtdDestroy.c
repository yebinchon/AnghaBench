
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int (* free_fcn ) (TYPE_3__*) ;} ;
typedef TYPE_1__ XML_Memory_Handling_Suite ;
typedef scalar_t__ XML_Bool ;
struct TYPE_12__ {struct TYPE_12__* scaffold; struct TYPE_12__* scaffIndex; int entityValuePool; int pool; int prefixes; int attributeIds; int elementTypes; int paramEntities; int generalEntities; } ;
struct TYPE_11__ {scalar_t__ allocDefaultAtts; TYPE_3__* defaultAtts; } ;
typedef int HASH_TABLE_ITER ;
typedef TYPE_2__ ELEMENT_TYPE ;
typedef TYPE_3__ DTD ;


 int hashTableDestroy (int *) ;
 int hashTableIterInit (int *,int *) ;
 scalar_t__ hashTableIterNext (int *) ;
 int poolDestroy (int *) ;
 int stub1 (TYPE_3__*) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;
 int stub4 (TYPE_3__*) ;

__attribute__((used)) static void
dtdDestroy(DTD *p, XML_Bool isDocEntity, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;
  hashTableIterInit(&iter, &(p->elementTypes));
  for (;;) {
    ELEMENT_TYPE *e = (ELEMENT_TYPE *)hashTableIterNext(&iter);
    if (!e)
      break;
    if (e->allocDefaultAtts != 0)
      ms->free_fcn(e->defaultAtts);
  }
  hashTableDestroy(&(p->generalEntities));



  hashTableDestroy(&(p->elementTypes));
  hashTableDestroy(&(p->attributeIds));
  hashTableDestroy(&(p->prefixes));
  poolDestroy(&(p->pool));
  poolDestroy(&(p->entityValuePool));
  if (isDocEntity) {
    ms->free_fcn(p->scaffIndex);
    ms->free_fcn(p->scaffold);
  }
  ms->free_fcn(p);
}
