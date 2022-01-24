#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XML_Parser ;
struct TYPE_10__ {scalar_t__ (* malloc_fcn ) (int) ;} ;
typedef  TYPE_1__ XML_Memory_Handling_Suite ;
typedef  int /*<<< orphan*/  XML_Char ;
struct TYPE_15__ {int /*<<< orphan*/  const* name; TYPE_2__* prefix; int /*<<< orphan*/  xmlns; int /*<<< orphan*/  maybeTokenized; } ;
struct TYPE_14__ {int /*<<< orphan*/  const* value; int /*<<< orphan*/  isCdata; TYPE_6__* id; } ;
struct TYPE_11__ {int /*<<< orphan*/  const* name; } ;
struct TYPE_13__ {int /*<<< orphan*/  scaffIndex; int /*<<< orphan*/  scaffLevel; int /*<<< orphan*/  scaffSize; int /*<<< orphan*/  contentStringLen; int /*<<< orphan*/  scaffold; int /*<<< orphan*/  in_eldecl; int /*<<< orphan*/  standalone; int /*<<< orphan*/  hasParamEntityRefs; int /*<<< orphan*/  keepProcessing; int /*<<< orphan*/  paramEntityRead; int /*<<< orphan*/  paramEntities; int /*<<< orphan*/  pool; int /*<<< orphan*/  generalEntities; int /*<<< orphan*/  attributeIds; int /*<<< orphan*/  prefixes; int /*<<< orphan*/  elementTypes; TYPE_2__ defaultPrefix; } ;
struct TYPE_12__ {int nDefaultAtts; int allocDefaultAtts; TYPE_5__* defaultAtts; TYPE_2__* prefix; TYPE_6__* idAtt; int /*<<< orphan*/  const* name; } ;
typedef  TYPE_2__ PREFIX ;
typedef  int /*<<< orphan*/  HASH_TABLE_ITER ;
typedef  TYPE_3__ ELEMENT_TYPE ;
typedef  TYPE_4__ DTD ;
typedef  TYPE_5__ DEFAULT_ATTRIBUTE ;
typedef  TYPE_6__ ATTRIBUTE_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int
FUNC8(XML_Parser oldParser, DTD *newDtd, const DTD *oldDtd, const XML_Memory_Handling_Suite *ms)
{
  HASH_TABLE_ITER iter;

  /* Copy the prefix table. */

  FUNC2(&iter, &(oldDtd->prefixes));
  for (;;) {
    const XML_Char *name;
    const PREFIX *oldP = (PREFIX *)FUNC3(&iter);
    if (!oldP)
      break;
    name = FUNC6(&(newDtd->pool), oldP->name);
    if (!name)
      return 0;
    if (!FUNC4(oldParser, &(newDtd->prefixes), name, sizeof(PREFIX)))
      return 0;
  }

  FUNC2(&iter, &(oldDtd->attributeIds));

  /* Copy the attribute id table. */

  for (;;) {
    ATTRIBUTE_ID *newA;
    const XML_Char *name;
    const ATTRIBUTE_ID *oldA = (ATTRIBUTE_ID *)FUNC3(&iter);

    if (!oldA)
      break;
    /* Remember to allocate the scratch byte before the name. */
    if (!FUNC5(&(newDtd->pool), FUNC0('\0')))
      return 0;
    name = FUNC6(&(newDtd->pool), oldA->name);
    if (!name)
      return 0;
    ++name;
    newA = (ATTRIBUTE_ID *)FUNC4(oldParser, &(newDtd->attributeIds), name,
                                  sizeof(ATTRIBUTE_ID));
    if (!newA)
      return 0;
    newA->maybeTokenized = oldA->maybeTokenized;
    if (oldA->prefix) {
      newA->xmlns = oldA->xmlns;
      if (oldA->prefix == &oldDtd->defaultPrefix)
        newA->prefix = &newDtd->defaultPrefix;
      else
        newA->prefix = (PREFIX *)FUNC4(oldParser, &(newDtd->prefixes),
                                        oldA->prefix->name, 0);
    }
  }

  /* Copy the element type table. */

  FUNC2(&iter, &(oldDtd->elementTypes));

  for (;;) {
    int i;
    ELEMENT_TYPE *newE;
    const XML_Char *name;
    const ELEMENT_TYPE *oldE = (ELEMENT_TYPE *)FUNC3(&iter);
    if (!oldE)
      break;
    name = FUNC6(&(newDtd->pool), oldE->name);
    if (!name)
      return 0;
    newE = (ELEMENT_TYPE *)FUNC4(oldParser, &(newDtd->elementTypes), name,
                                  sizeof(ELEMENT_TYPE));
    if (!newE)
      return 0;
    if (oldE->nDefaultAtts) {
      newE->defaultAtts = (DEFAULT_ATTRIBUTE *)
          ms->malloc_fcn(oldE->nDefaultAtts * sizeof(DEFAULT_ATTRIBUTE));
      if (!newE->defaultAtts) {
        return 0;
      }
    }
    if (oldE->idAtt)
      newE->idAtt = (ATTRIBUTE_ID *)
          FUNC4(oldParser, &(newDtd->attributeIds), oldE->idAtt->name, 0);
    newE->allocDefaultAtts = newE->nDefaultAtts = oldE->nDefaultAtts;
    if (oldE->prefix)
      newE->prefix = (PREFIX *)FUNC4(oldParser, &(newDtd->prefixes),
                                      oldE->prefix->name, 0);
    for (i = 0; i < newE->nDefaultAtts; i++) {
      newE->defaultAtts[i].id = (ATTRIBUTE_ID *)
          FUNC4(oldParser, &(newDtd->attributeIds), oldE->defaultAtts[i].id->name, 0);
      newE->defaultAtts[i].isCdata = oldE->defaultAtts[i].isCdata;
      if (oldE->defaultAtts[i].value) {
        newE->defaultAtts[i].value
            = FUNC6(&(newDtd->pool), oldE->defaultAtts[i].value);
        if (!newE->defaultAtts[i].value)
          return 0;
      }
      else
        newE->defaultAtts[i].value = NULL;
    }
  }

  /* Copy the entity tables. */
  if (!FUNC1(oldParser,
                       &(newDtd->generalEntities),
                       &(newDtd->pool),
                       &(oldDtd->generalEntities)))
      return 0;

#ifdef XML_DTD
  if (!copyEntityTable(oldParser,
                       &(newDtd->paramEntities),
                       &(newDtd->pool),
                       &(oldDtd->paramEntities)))
      return 0;
  newDtd->paramEntityRead = oldDtd->paramEntityRead;
#endif /* XML_DTD */

  newDtd->keepProcessing = oldDtd->keepProcessing;
  newDtd->hasParamEntityRefs = oldDtd->hasParamEntityRefs;
  newDtd->standalone = oldDtd->standalone;

  /* Don't want deep copying for scaffolding */
  newDtd->in_eldecl = oldDtd->in_eldecl;
  newDtd->scaffold = oldDtd->scaffold;
  newDtd->contentStringLen = oldDtd->contentStringLen;
  newDtd->scaffSize = oldDtd->scaffSize;
  newDtd->scaffLevel = oldDtd->scaffLevel;
  newDtd->scaffIndex = oldDtd->scaffIndex;

  return 1;
}