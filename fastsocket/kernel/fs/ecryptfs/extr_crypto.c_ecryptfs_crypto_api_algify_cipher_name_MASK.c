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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 char* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(char **algified_name,
						  char *cipher_name,
						  char *chaining_modifier)
{
	int cipher_name_len = FUNC2(cipher_name);
	int chaining_modifier_len = FUNC2(chaining_modifier);
	int algified_name_len;
	int rc;

	algified_name_len = (chaining_modifier_len + cipher_name_len + 3);
	(*algified_name) = FUNC0(algified_name_len, GFP_KERNEL);
	if (!(*algified_name)) {
		rc = -ENOMEM;
		goto out;
	}
	FUNC1((*algified_name), algified_name_len, "%s(%s)",
		 chaining_modifier, cipher_name);
	rc = 0;
out:
	return rc;
}