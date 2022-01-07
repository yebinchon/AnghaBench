
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ (* malloc_fcn ) (int) ;} ;
typedef TYPE_2__ XML_Memory_Handling_Suite ;
struct TYPE_8__ {int * binding; int * name; } ;
struct TYPE_10__ {void* standalone; void* hasParamEntityRefs; int keepProcessing; scalar_t__ contentStringLen; scalar_t__ scaffCount; scalar_t__ scaffSize; scalar_t__ scaffLevel; int * scaffold; int * scaffIndex; void* in_eldecl; TYPE_1__ defaultPrefix; int paramEntities; void* paramEntityRead; int prefixes; int attributeIds; int elementTypes; int generalEntities; int entityValuePool; int pool; } ;
typedef TYPE_3__ DTD ;


 void* XML_FALSE ;
 int XML_TRUE ;
 int hashTableInit (int *,TYPE_2__ const*) ;
 int poolInit (int *,TYPE_2__ const*) ;
 scalar_t__ stub1 (int) ;

__attribute__((used)) static DTD *
dtdCreate(const XML_Memory_Handling_Suite *ms)
{
  DTD *p = (DTD *)ms->malloc_fcn(sizeof(DTD));
  if (p == ((void*)0))
    return p;
  poolInit(&(p->pool), ms);
  poolInit(&(p->entityValuePool), ms);
  hashTableInit(&(p->generalEntities), ms);
  hashTableInit(&(p->elementTypes), ms);
  hashTableInit(&(p->attributeIds), ms);
  hashTableInit(&(p->prefixes), ms);




  p->defaultPrefix.name = ((void*)0);
  p->defaultPrefix.binding = ((void*)0);

  p->in_eldecl = XML_FALSE;
  p->scaffIndex = ((void*)0);
  p->scaffold = ((void*)0);
  p->scaffLevel = 0;
  p->scaffSize = 0;
  p->scaffCount = 0;
  p->contentStringLen = 0;

  p->keepProcessing = XML_TRUE;
  p->hasParamEntityRefs = XML_FALSE;
  p->standalone = XML_FALSE;
  return p;
}
