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
 scalar_t__ FUNC0 (char*,char*) ; 
 int FUNC1 (char*) ; 
 scalar_t__ thumb_mode ; 

char *
FUNC2 (char * name)
{
  int len;

  if (thumb_mode && (len = FUNC1 (name)) > 5
      && FUNC0 (name + len - 5, "/data"))
    *(name + len - 5) = 0;

  return name;
}