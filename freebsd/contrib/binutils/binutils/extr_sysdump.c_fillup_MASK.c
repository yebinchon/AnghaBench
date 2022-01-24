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
 int code ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 scalar_t__ dump ; 
 int /*<<< orphan*/  file ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int
FUNC4 (unsigned char *ptr)
{
  int size;
  int sum;
  int i;

  size = FUNC2 (file) - 2;
  FUNC1 (ptr, 1, size, file);
  sum = code + size + 2;

  for (i = 0; i < size; i++)
    sum += ptr[i];

  if ((sum & 0xff) != 0xff)
    FUNC3 ("SUM IS %x\n", sum);

  if (dump)
    FUNC0 (ptr, size);

  return size - 1;
}