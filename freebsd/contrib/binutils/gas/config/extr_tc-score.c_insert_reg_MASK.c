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
struct reg_entry {int /*<<< orphan*/  name; } ;
struct hash_control {int dummy; } ;

/* Variables and functions */
 char FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (struct hash_control*,char*,void*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 

__attribute__((used)) static void
FUNC5 (const struct reg_entry *r, struct hash_control *htab)
{
  int i = 0;
  int len = FUNC3 (r->name) + 2;
  char *buf = FUNC4 (len);
  char *buf2 = FUNC4 (len);

  FUNC2 (buf + i, r->name);
  for (i = 0; buf[i]; i++)
    {
      buf2[i] = FUNC0 (buf[i]);
    }
  buf2[i] = '\0';

  FUNC1 (htab, buf, (void *) r);
  FUNC1 (htab, buf2, (void *) r);
}