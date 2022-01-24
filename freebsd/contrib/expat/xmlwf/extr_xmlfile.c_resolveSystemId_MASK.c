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
typedef  scalar_t__ XML_Char ;

/* Variables and functions */
 scalar_t__ const FUNC0 (char) ; 
 scalar_t__ FUNC1 (scalar_t__ const) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__*,scalar_t__ const*) ; 
 int FUNC4 (scalar_t__ const*) ; 
 scalar_t__* FUNC5 (scalar_t__*,scalar_t__ const) ; 

__attribute__((used)) static const XML_Char *
FUNC6(const XML_Char *base, const XML_Char *systemId,
                XML_Char **toFree)
{
  XML_Char *s;
  *toFree = 0;
  if (!base
      || *systemId == FUNC0('/')
#if defined(_WIN32)
      || *systemId == T('\\')
      || (isAsciiLetter(systemId[0]) && systemId[1] == T(':'))
#endif
     )
    return systemId;
  *toFree = (XML_Char *)FUNC2((FUNC4(base) + FUNC4(systemId) + 2)
                               * sizeof(XML_Char));
  if (!*toFree)
    return systemId;
  FUNC3(*toFree, base);
  s = *toFree;
  if (FUNC5(s, FUNC0('/')))
    s = FUNC5(s, FUNC0('/')) + 1;
#if defined(_WIN32)
  if (tcsrchr(s, T('\\')))
    s = tcsrchr(s, T('\\')) + 1;
#endif
  FUNC3(s, systemId);
  return *toFree;
}