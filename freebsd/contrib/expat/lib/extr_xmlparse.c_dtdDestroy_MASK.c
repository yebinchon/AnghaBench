#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* free_fcn ) (TYPE_3__*) ;} ;
typedef  TYPE_1__ XML_Memory_Handling_Suite ;
typedef  scalar_t__ XML_Bool ;
struct TYPE_12__ {struct TYPE_12__* scaffold; struct TYPE_12__* scaffIndex; int /*<<< orphan*/  entityValuePool; int /*<<< orphan*/  pool; int /*<<< orphan*/  prefixes; int /*<<< orphan*/  attributeIds; int /*<<< orphan*/  elementTypes; int /*<<< orphan*/  paramEntities; int /*<<< orphan*/  generalEntities; } ;
struct TYPE_11__ {scalar_t__ allocDefaultAtts; TYPE_3__* defaultAtts; } ;
typedef  int /*<<< orphan*/  HASH_TABLE_ITER ;
typedef  TYPE_2__ ELEMENT_TYPE ;
typedef  TYPE_3__ DTD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC8(DTD *p, XML_Bool isDocEntity, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;
  FUNC1(&iter, &(p->elementTypes));
  for (;;) {
    ELEMENT_TYPE *e = (ELEMENT_TYPE *)FUNC2(&iter);
    if (!e)
      break;
    if (e->allocDefaultAtts != 0)
      ms->free_fcn(e->defaultAtts);
  }
  FUNC0(&(p->generalEntities));
#ifdef XML_DTD
  hashTableDestroy(&(p->paramEntities));
#endif /* XML_DTD */
  FUNC0(&(p->elementTypes));
  FUNC0(&(p->attributeIds));
  FUNC0(&(p->prefixes));
  FUNC3(&(p->pool));
  FUNC3(&(p->entityValuePool));
  if (isDocEntity) {
    ms->free_fcn(p->scaffIndex);
    ms->free_fcn(p->scaffold);
  }
  ms->free_fcn(p);
}