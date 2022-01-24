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
struct TYPE_3__ {char* message; } ;
typedef  TYPE_1__ list_info_type ;

/* Variables and functions */
 TYPE_1__* listing_tail ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 int FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (unsigned int) ; 

__attribute__((used)) static void
FUNC4 (const char *name, const char *message)
{
  if (listing_tail != (list_info_type *) NULL)
    {
      unsigned int l = FUNC2 (name) + FUNC2 (message) + 1;
      char *n = (char *) FUNC3 (l);
      FUNC1 (n, name);
      FUNC0 (n, message);
      listing_tail->message = n;
    }
}