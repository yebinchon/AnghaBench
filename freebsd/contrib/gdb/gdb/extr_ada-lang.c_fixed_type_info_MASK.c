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
struct type {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_INT ; 
 int TYPE_CODE_RANGE ; 
 int TYPE_CODE_UNDEF ; 
 struct type* FUNC1 (struct type*) ; 
 char* FUNC2 (struct type*) ; 
 char* FUNC3 (char const*,char*) ; 

__attribute__((used)) static const char *
FUNC4 (struct type *type)
{
  const char *name = FUNC2 (type);
  enum type_code code = (type == NULL) ? TYPE_CODE_UNDEF : FUNC0 (type);

  if ((code == TYPE_CODE_INT || code == TYPE_CODE_RANGE) && name != NULL)
    {
      const char *tail = FUNC3 (name, "___XF_");
      if (tail == NULL)
	return NULL;
      else
	return tail + 5;
    }
  else if (code == TYPE_CODE_RANGE && FUNC1 (type) != type)
    return FUNC4 (FUNC1 (type));
  else
    return NULL;
}