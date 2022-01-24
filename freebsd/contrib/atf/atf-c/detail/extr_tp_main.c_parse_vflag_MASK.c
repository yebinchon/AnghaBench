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
typedef  int /*<<< orphan*/  atf_map_t ;
typedef  int /*<<< orphan*/  atf_error_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char*,int) ; 
 char* FUNC1 (char*,char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static
atf_error_t
FUNC3(char *arg, atf_map_t *config)
{
    atf_error_t err;
    char *split;

    split = FUNC1(arg, '=');
    if (split == NULL) {
        err = FUNC2("-v requires an argument of the form var=value");
        goto out;
    }

    *split = '\0';
    split++;

    err = FUNC0(config, arg, split, false);

out:
    return err;
}