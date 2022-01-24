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
 scalar_t__ case_mode ; 
 scalar_t__ case_mode_auto ; 
 int /*<<< orphan*/  case_sensitive ; 
#define  case_sensitive_off 129 
#define  case_sensitive_on 128 
 int case_sensitivity ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3 (void)
{
   char *tmp = NULL, *prefix = "";

   if (case_mode==case_mode_auto)
      prefix = "auto; currently ";

   switch (case_sensitivity)
   {
   case case_sensitive_on:
     tmp = "on";
     break;
   case case_sensitive_off:
     tmp = "off";
     break;
   default:
     FUNC1 ("Unrecognized case-sensitive setting.");
   }

   FUNC2 (case_sensitive);
   case_sensitive = FUNC0 (prefix, tmp, NULL);
}