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
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int) ; 
 struct type* FUNC1 (char*) ; 
 char* FUNC2 (struct type*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 

struct type *
FUNC5 (struct type *type, const char *suffix)
{
  static char *name;
  static size_t name_len = 0;
  struct symbol **syms;
  struct block **blocks;
  int nsyms;
  int len;
  char *typename = FUNC2 (type);

  if (typename == NULL)
    return NULL;

  len = FUNC4 (typename);

  FUNC0 (name, name_len, len + FUNC4 (suffix) + 1);

  FUNC3 (name, typename);
  FUNC3 (name + len, suffix);

  return FUNC1 (name);
}