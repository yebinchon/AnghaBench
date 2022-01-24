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
struct passwd {int dummy; } ;
struct TYPE_2__ {char* pw_name; char* pw_dir; } ;

/* Variables and functions */
 int /*<<< orphan*/  XLOG_ERROR ; 
 int /*<<< orphan*/  XLOG_INFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 TYPE_1__ passwd_ent ; 
 int /*<<< orphan*/  passwd_fp ; 
 scalar_t__ passwd_line ; 
 int /*<<< orphan*/  passwdfile ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pw_dir ; 
 int /*<<< orphan*/  pw_name ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void
FUNC4(void)
{
  if (!passwdfile) {
    FUNC3();
    return;
  }

  passwd_fp = FUNC0(passwdfile, "r");
  if (!passwd_fp) {
    FUNC2(XLOG_ERROR, "unable to read passwd file %s: %m", passwdfile);
    return;
  }
  FUNC2(XLOG_INFO, "reading password entries from file %s", passwdfile);

  passwd_line = 0;
  FUNC1((char *) &passwd_ent, 0, sizeof(struct passwd));
  passwd_ent.pw_name = (char *) &pw_name;
  passwd_ent.pw_dir = (char *) &pw_dir;
}