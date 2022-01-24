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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ IDENTIFIER_NODE ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 scalar_t__ FUNC5 (char const*,char const*,int) ; 

__attribute__((used)) static int
FUNC6 (const char *attr, int attr_len, tree ident)
{
  int ident_len;
  const char *p;

  if (FUNC2 (ident) != IDENTIFIER_NODE)
    return 0;
  
  p = FUNC1 (ident);
  ident_len = FUNC0 (ident);
  
  if (ident_len == attr_len
      && FUNC4 (attr, p) == 0)
    return 1;

  /* If ATTR is `__text__', IDENT must be `text'; and vice versa.  */
  if (attr[0] == '_')
    {
      FUNC3 (attr[1] == '_');
      FUNC3 (attr[attr_len - 2] == '_');
      FUNC3 (attr[attr_len - 1] == '_');
      if (ident_len == attr_len - 4
	  && FUNC5 (attr + 2, p, attr_len - 4) == 0)
	return 1;
    }
  else
    {
      if (ident_len == attr_len + 4
	  && p[0] == '_' && p[1] == '_'
	  && p[ident_len - 2] == '_' && p[ident_len - 1] == '_'
	  && FUNC5 (attr, p + 2, attr_len) == 0)
	return 1;
    }

  return 0;
}