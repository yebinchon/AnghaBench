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
typedef  int /*<<< orphan*/  abts_case ;
struct TYPE_2__ {int /*<<< orphan*/  hash; int /*<<< orphan*/  password; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int num_passwords ; 
 TYPE_1__* passwords ; 

__attribute__((used)) static void FUNC2(abts_case *tc, void *data)
{
    int i;

    for (i = 0; i < num_passwords; i++) {
        FUNC0(tc, "check for valid password",
                           FUNC1(passwords[i].password,
                                                 passwords[i].hash));
    }
}