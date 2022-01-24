#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum XML_Error { ____Placeholder_XML_Error } XML_Error ;
typedef  int /*<<< orphan*/  XML_Parser ;
typedef  int /*<<< orphan*/  XML_Bool ;
typedef  int /*<<< orphan*/  STRING_POOL ;
typedef  int /*<<< orphan*/  ENCODING ;

/* Variables and functions */
 int XML_ERROR_NONE ; 
 int XML_ERROR_NO_MEMORY ; 
 int /*<<< orphan*/  FUNC0 (char) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static enum XML_Error
FUNC6(XML_Parser parser, const ENCODING *enc, XML_Bool isCdata,
                    const char *ptr, const char *end,
                    STRING_POOL *pool)
{
  enum XML_Error result = FUNC1(parser, enc, isCdata, ptr,
                                               end, pool);
  if (result)
    return result;
  if (!isCdata && FUNC5(pool) && FUNC4(pool) == 0x20)
    FUNC3(pool);
  if (!FUNC2(pool, FUNC0('\0')))
    return XML_ERROR_NO_MEMORY;
  return XML_ERROR_NONE;
}