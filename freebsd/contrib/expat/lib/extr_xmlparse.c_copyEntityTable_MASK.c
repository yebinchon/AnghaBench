#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  XML_Parser ;
typedef  int /*<<< orphan*/  const XML_Char ;
struct TYPE_2__ {int /*<<< orphan*/  is_internal; int /*<<< orphan*/  is_param; int /*<<< orphan*/  const* notation; int /*<<< orphan*/  textLen; int /*<<< orphan*/  const* textPtr; int /*<<< orphan*/  const* publicId; int /*<<< orphan*/  const* base; int /*<<< orphan*/  const* systemId; int /*<<< orphan*/  const* name; } ;
typedef  int /*<<< orphan*/  STRING_POOL ;
typedef  int /*<<< orphan*/  HASH_TABLE_ITER ;
typedef  int /*<<< orphan*/  HASH_TABLE ;
typedef  TYPE_1__ ENTITY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  const* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  const* FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(XML_Parser oldParser,
                HASH_TABLE *newTable,
                STRING_POOL *newPool,
                const HASH_TABLE *oldTable)
{
  HASH_TABLE_ITER iter;
  const XML_Char *cachedOldBase = NULL;
  const XML_Char *cachedNewBase = NULL;

  FUNC0(&iter, oldTable);

  for (;;) {
    ENTITY *newE;
    const XML_Char *name;
    const ENTITY *oldE = (ENTITY *)FUNC1(&iter);
    if (!oldE)
      break;
    name = FUNC3(newPool, oldE->name);
    if (!name)
      return 0;
    newE = (ENTITY *)FUNC2(oldParser, newTable, name, sizeof(ENTITY));
    if (!newE)
      return 0;
    if (oldE->systemId) {
      const XML_Char *tem = FUNC3(newPool, oldE->systemId);
      if (!tem)
        return 0;
      newE->systemId = tem;
      if (oldE->base) {
        if (oldE->base == cachedOldBase)
          newE->base = cachedNewBase;
        else {
          cachedOldBase = oldE->base;
          tem = FUNC3(newPool, cachedOldBase);
          if (!tem)
            return 0;
          cachedNewBase = newE->base = tem;
        }
      }
      if (oldE->publicId) {
        tem = FUNC3(newPool, oldE->publicId);
        if (!tem)
          return 0;
        newE->publicId = tem;
      }
    }
    else {
      const XML_Char *tem = FUNC4(newPool, oldE->textPtr,
                                            oldE->textLen);
      if (!tem)
        return 0;
      newE->textPtr = tem;
      newE->textLen = oldE->textLen;
    }
    if (oldE->notation) {
      const XML_Char *tem = FUNC3(newPool, oldE->notation);
      if (!tem)
        return 0;
      newE->notation = tem;
    }
    newE->is_param = oldE->is_param;
    newE->is_internal = oldE->is_internal;
  }
  return 1;
}