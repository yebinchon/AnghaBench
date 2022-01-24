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
typedef  char u_int ;

/* Variables and functions */
 char NKVHASH ; 

__attribute__((used)) static u_int
FUNC0(char *key)
{
  u_int i, j;

  for (i = 0; (j = *key++); i += j) ;

  return i % NKVHASH;
}