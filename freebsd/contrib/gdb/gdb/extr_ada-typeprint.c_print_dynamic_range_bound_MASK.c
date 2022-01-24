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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ,struct ui_file*) ; 
 int /*<<< orphan*/  FUNC2 (struct ui_file*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*,int) ; 

__attribute__((used)) static void
FUNC7 (struct type *type, const char *name, int name_len,
			   const char *suffix, struct ui_file *stream)
{
  static char *name_buf = NULL;
  static size_t name_buf_len = 0;
  LONGEST B;
  int OK;

  FUNC0 (name_buf, name_buf_len, name_len + FUNC5 (suffix) + 1);
  FUNC6 (name_buf, name, name_len);
  FUNC4 (name_buf + name_len, suffix);

  B = FUNC3 (name_buf, 0, &OK);
  if (OK)
    FUNC1 (type, B, stream);
  else
    FUNC2 (stream, "?");
}