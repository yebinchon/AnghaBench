#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  la_name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__* current_language ; 
 scalar_t__ language ; 
 scalar_t__ language_mode ; 
 scalar_t__ language_mode_auto ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 

__attribute__((used)) static void
FUNC2 (void)
{
  char *prefix = "";

  if (language)
    FUNC1 (language);
  if (language_mode == language_mode_auto)
    prefix = "auto; currently ";

  language = FUNC0 (prefix, current_language->la_name, NULL);
}