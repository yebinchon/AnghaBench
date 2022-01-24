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
 int /*<<< orphan*/  FUNC0 () ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  inferior_environ ; 
 int /*<<< orphan*/  FUNC2 (char*,char**) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  path_var_name ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*) ; 

__attribute__((used)) static void
FUNC7 (char *dirname, int from_tty)
{
  char *exec_path;
  char *env;
  FUNC0 ();
  env = FUNC1 (inferior_environ, path_var_name);
  /* Can be null if path is not set */
  if (!env)
    env = "";
  exec_path = FUNC6 (env);
  FUNC2 (dirname, &exec_path);
  FUNC4 (inferior_environ, path_var_name, exec_path);
  FUNC5 (exec_path);
  if (from_tty)
    FUNC3 ((char *) NULL, from_tty);
}