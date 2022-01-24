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

/* Variables and functions */
 char DOLLAR_LABEL_CHAR ; 
 scalar_t__ FUNC0 (char) ; 
 char LOCAL_LABEL_CHAR ; 
 char LOCAL_LABEL_PREFIX ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  notes ; 
 char* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int,int,char*) ; 
 scalar_t__ FUNC4 (char const*) ; 

char *
FUNC5 (char *s)
{
  char *p;
  char *symbol_decode;
  int label_number;
  int instance_number;
  char *type;
  const char *message_format;
  int index = 0;

#ifdef LOCAL_LABEL_PREFIX
  if (s[index] == LOCAL_LABEL_PREFIX)
    ++index;
#endif

  if (s[index] != 'L')
    return s;

  for (label_number = 0, p = s + index + 1; FUNC0 (*p); ++p)
    label_number = (10 * label_number) + *p - '0';

  if (*p == DOLLAR_LABEL_CHAR)
    type = "dollar";
  else if (*p == LOCAL_LABEL_CHAR)
    type = "fb";
  else
    return s;

  for (instance_number = 0, p++; FUNC0 (*p); ++p)
    instance_number = (10 * instance_number) + *p - '0';

  message_format = FUNC1("\"%d\" (instance number %d of a %s label)");
  symbol_decode = FUNC2 (&notes, FUNC4 (message_format) + 30);
  FUNC3 (symbol_decode, message_format, label_number, instance_number, type);

  return symbol_decode;
}