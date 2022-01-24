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
struct am_ops {char* fs_type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 struct am_ops** vops ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 

void
FUNC2(char *buf, size_t l)
{
  struct am_ops **ap;
  int linesize = 0;

  buf[0] = '\0';
  for (ap = vops; *ap; ap++) {
    FUNC1(buf, (*ap)->fs_type, l);
    if (ap[1])
      FUNC1(buf, ", ", l);
    linesize += FUNC0((*ap)->fs_type) + 2;
    if (linesize > 62) {
      linesize = 0;
      FUNC1(buf, "\n      ", l);
    }
  }
}