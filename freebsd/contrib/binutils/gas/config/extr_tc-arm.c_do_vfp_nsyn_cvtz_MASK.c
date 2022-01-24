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
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const**) ; 
 int /*<<< orphan*/  NS_FD ; 
 int /*<<< orphan*/  NS_FF ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  enum neon_shape rs = FUNC3 (NS_FF, NS_FD, NS_NULL);
  int flavour = FUNC2 (rs);
  const char *enc[] =
    {
      "ftosizs",
      "ftouizs",
      NULL,
      NULL,
      NULL,
      NULL,
      "ftosizd",
      "ftouizd"
    };

  if (flavour >= 0 && flavour < (int) FUNC0 (enc) && enc[flavour])
    FUNC1 (enc[flavour]);
}