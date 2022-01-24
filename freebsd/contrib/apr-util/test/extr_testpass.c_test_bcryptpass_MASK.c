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
typedef  int /*<<< orphan*/  salt ;
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int,unsigned char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char const*) ; 

__attribute__((used)) static void FUNC4(abts_case *tc, void *data)
{
    const char *pass = "hellojed";
    const char *pass2 = "hellojed2";
    unsigned char salt[] = "sardine_sardine";
    char hash[100];
    const char *hash2 = "$2a$08$qipUJiI9fySUN38hcbz.lucXvAmtgowKOWYtB9y3CXyl6lTknruou";
    const char *pass3 = "foobar";

    FUNC1(tc, "bcrypt encode password", 
                       FUNC2(pass, 5, salt, sizeof(salt), hash,
                                         sizeof(hash)));

    FUNC1(tc, "bcrypt password validated",
                       FUNC3(pass, hash));
    FUNC0(tc, "wrong bcrypt password should not validate",
                       FUNC3(pass2, hash));
    FUNC1(tc, "bcrypt password validated",
                       FUNC3(pass3, hash2));
}