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
#define  SERIAL_EOF 130 
#define  SERIAL_ERROR 129 
#define  SERIAL_TIMEOUT 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  ocd_desc ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3 (int timeout)
{
  int ch;

  ch = FUNC2 (ocd_desc, timeout);

  switch (ch)
    {
    case SERIAL_EOF:
      FUNC0 ("Remote connection closed");
    case SERIAL_ERROR:
      FUNC1 ("Remote communication error");
    case SERIAL_TIMEOUT:
    default:
      return ch;
    }
}