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
struct symbol {int dummy; } ;

/* Variables and functions */
 struct type* FUNC0 (struct symbol*) ; 
 char* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int FUNC4 (char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 
 char* FUNC6 (int) ; 

const char *
FUNC7 (struct symbol *sym)
{
  struct type *type;
  const char *raw_name;
  int len;
  char *result;

  type = FUNC0 (sym);
  if (type == NULL || FUNC2 (type) < 1)
    FUNC3 ("Improperly encoded renaming.");

  raw_name = FUNC1 (type, 0);
  len = (raw_name == NULL ? 0 : FUNC4 (raw_name)) - 5;
  if (len <= 0)
    FUNC3 ("Improperly encoded renaming.");

  result = FUNC6 (len + 1);
  /* FIXME: add_name_string_cleanup should be defined in parse.c */
  /*  add_name_string_cleanup (result); */
  FUNC5 (result, raw_name, len);
  result[len] = '\000';
  return result;
}