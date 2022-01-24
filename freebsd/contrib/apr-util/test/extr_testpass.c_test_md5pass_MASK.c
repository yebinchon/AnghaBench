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
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

__attribute__((used)) static void FUNC4(abts_case *tc, void *data)
{
    const char *pass = "hellojed", *salt = "sardine";
    const char *pass2 = "hellojed2";
    char hash[100];

    FUNC2(pass, salt, hash, sizeof hash);

    FUNC1(tc, "MD5 password validated",
                       FUNC3(pass, hash));
    FUNC0(tc, "wrong MD5 password should not validate",
                       FUNC3(pass2, hash));
}