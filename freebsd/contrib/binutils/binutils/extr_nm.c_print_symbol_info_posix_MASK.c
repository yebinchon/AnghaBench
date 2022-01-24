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
struct extended_symbol_info {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC1 (struct extended_symbol_info*) ; 
 int FUNC2 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC3 (struct extended_symbol_info*) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

__attribute__((used)) static void
FUNC8 (struct extended_symbol_info *info, bfd *abfd)
{
  FUNC5 ("%s ", FUNC0 (info), abfd);
  FUNC7 ("%c ", FUNC2 (info));

  if (FUNC4 (FUNC2 (info)))
    FUNC7 ("        ");
  else
    {
      FUNC6 (abfd, FUNC3 (info));
      FUNC7 (" ");
      if (FUNC1 (info))
	FUNC6 (abfd, FUNC1 (info));
    }
}