#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* XML_Parser ;
typedef  int /*<<< orphan*/  XML_Char ;
struct TYPE_11__ {int /*<<< orphan*/  pool; int /*<<< orphan*/  elementTypes; } ;
struct TYPE_10__ {int /*<<< orphan*/  const* name; } ;
struct TYPE_9__ {TYPE_3__* m_dtd; } ;
typedef  int /*<<< orphan*/  ENCODING ;
typedef  TYPE_2__ ELEMENT_TYPE ;
typedef  TYPE_3__ DTD ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,TYPE_2__*) ; 

__attribute__((used)) static ELEMENT_TYPE *
FUNC5(XML_Parser parser,
               const ENCODING *enc,
               const char *ptr,
               const char *end)
{
  DTD * const dtd = parser->m_dtd;  /* save one level of indirection */
  const XML_Char *name = FUNC3(&dtd->pool, enc, ptr, end);
  ELEMENT_TYPE *ret;

  if (!name)
    return NULL;
  ret = (ELEMENT_TYPE *) FUNC0(parser, &dtd->elementTypes, name, sizeof(ELEMENT_TYPE));
  if (!ret)
    return NULL;
  if (ret->name != name)
    FUNC1(&dtd->pool);
  else {
    FUNC2(&dtd->pool);
    if (!FUNC4(parser, ret))
      return NULL;
  }
  return ret;
}