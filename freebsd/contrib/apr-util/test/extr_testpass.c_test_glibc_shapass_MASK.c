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
struct TYPE_2__ {int /*<<< orphan*/  hash; scalar_t__ password; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_1__* glibc_sha_pws ; 

__attribute__((used)) static void FUNC2(abts_case *tc, void *data)
{
    int i = 0;
    while (glibc_sha_pws[i].password) {
        FUNC0(tc, "check for valid glibc crypt-sha password",
                           FUNC1(glibc_sha_pws[i].password,
                                                 glibc_sha_pws[i].hash));
        i++;
    }
}