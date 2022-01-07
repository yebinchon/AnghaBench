
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int (* free_fcn ) (int *) ;} ;
typedef TYPE_2__ XML_Memory_Handling_Suite ;
struct TYPE_7__ {int * binding; int * name; } ;
struct TYPE_10__ {void* standalone; void* hasParamEntityRefs; int keepProcessing; scalar_t__ contentStringLen; scalar_t__ scaffCount; scalar_t__ scaffSize; scalar_t__ scaffLevel; int * scaffold; int * scaffIndex; void* in_eldecl; TYPE_1__ defaultPrefix; int entityValuePool; int pool; int prefixes; int attributeIds; int elementTypes; int paramEntities; void* paramEntityRead; int generalEntities; } ;
struct TYPE_9__ {scalar_t__ allocDefaultAtts; int * defaultAtts; } ;
typedef int HASH_TABLE_ITER ;
typedef TYPE_3__ ELEMENT_TYPE ;
typedef TYPE_4__ DTD ;


 void* XML_FALSE ;
 int XML_TRUE ;
 int hashTableClear (int *) ;
 int hashTableIterInit (int *,int *) ;
 scalar_t__ hashTableIterNext (int *) ;
 int poolClear (int *) ;
 int stub1 (int *) ;
 int stub2 (int *) ;
 int stub3 (int *) ;

__attribute__((used)) static void
dtdReset(DTD *p, const XML_Memory_Handling_Suite *ms)
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
  hashTableClear(&(p->generalEntities));




  hashTableClear(&(p->elementTypes));
  hashTableClear(&(p->attributeIds));
  hashTableClear(&(p->prefixes));
  poolClear(&(p->pool));
  poolClear(&(p->entityValuePool));
  p->defaultPrefix.name = ((void*)0);
  p->defaultPrefix.binding = ((void*)0);

  p->in_eldecl = XML_FALSE;

  ms->free_fcn(p->scaffIndex);
  p->scaffIndex = ((void*)0);
  ms->free_fcn(p->scaffold);
  p->scaffold = ((void*)0);

  p->scaffLevel = 0;
  p->scaffSize = 0;
  p->scaffCount = 0;
  p->contentStringLen = 0;

  p->keepProcessing = XML_TRUE;
  p->hasParamEntityRefs = XML_FALSE;
  p->standalone = XML_FALSE;
}
