#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XML_Parser ;
typedef  scalar_t__ XML_Char ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  prefixes; } ;
struct TYPE_10__ {scalar_t__* name; TYPE_2__* prefix; } ;
struct TYPE_9__ {scalar_t__ name; } ;
struct TYPE_8__ {TYPE_4__* m_dtd; } ;
typedef  TYPE_2__ PREFIX ;
typedef  TYPE_3__ ELEMENT_TYPE ;
typedef  TYPE_4__ DTD ;

/* Variables and functions */
 char ASCII_COLON ; 
 scalar_t__ const FUNC0 (char) ; 
 scalar_t__ FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC6(XML_Parser parser, ELEMENT_TYPE *elementType)
{
  DTD * const dtd = parser->m_dtd;  /* save one level of indirection */
  const XML_Char *name;
  for (name = elementType->name; *name; name++) {
    if (*name == FUNC0(ASCII_COLON)) {
      PREFIX *prefix;
      const XML_Char *s;
      for (s = elementType->name; s != name; s++) {
        if (!FUNC2(&dtd->pool, *s))
          return 0;
      }
      if (!FUNC2(&dtd->pool, FUNC0('\0')))
        return 0;
      prefix = (PREFIX *)FUNC1(parser, &dtd->prefixes, FUNC5(&dtd->pool),
                                sizeof(PREFIX));
      if (!prefix)
        return 0;
      if (prefix->name == FUNC5(&dtd->pool))
        FUNC4(&dtd->pool);
      else
        FUNC3(&dtd->pool);
      elementType->prefix = prefix;

    }
  }
  return 1;
}