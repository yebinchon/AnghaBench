#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* value; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 char* FUNC1 (int) ; 
 TYPE_1__* configure_default_options ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,unsigned int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int FUNC6 (char const*) ; 
 char* FUNC7 (char const*,char*) ; 

__attribute__((used)) static void
FUNC8 (const char *name, const char *spec)
{
  unsigned int i, value_count, value_len;
  const char *p, *q, *value;
  char *tmp_spec, *tmp_spec_p;

  if (configure_default_options[0].name == NULL)
    return;

  for (i = 0; i < FUNC0 (configure_default_options); i++)
    if (FUNC4 (configure_default_options[i].name, name) == 0)
      break;
  if (i == FUNC0 (configure_default_options))
    return;

  value = configure_default_options[i].value;
  value_len = FUNC6 (value);

  /* Compute the size of the final spec.  */
  value_count = 0;
  p = spec;
  while ((p = FUNC7 (p, "%(VALUE)")) != NULL)
    {
      p ++;
      value_count ++;
    }

  /* Replace each %(VALUE) by the specified value.  */
  tmp_spec = FUNC1 (FUNC6 (spec) + 1
		     + value_count * (value_len - FUNC6 ("%(VALUE)")));
  tmp_spec_p = tmp_spec;
  q = spec;
  while ((p = FUNC7 (q, "%(VALUE)")) != NULL)
    {
      FUNC3 (tmp_spec_p, q, p - q);
      tmp_spec_p = tmp_spec_p + (p - q);
      FUNC3 (tmp_spec_p, value, value_len);
      tmp_spec_p += value_len;
      q = p + FUNC6 ("%(VALUE)");
    }
  FUNC5 (tmp_spec_p, q);

  FUNC2 (tmp_spec);
}