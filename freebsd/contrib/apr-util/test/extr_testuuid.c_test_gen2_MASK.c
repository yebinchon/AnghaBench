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
typedef  int /*<<< orphan*/  uuid ;
typedef  int /*<<< orphan*/  apr_uuid_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(abts_case *tc, void *data)
{
    apr_uuid_t uuid;
    apr_uuid_t uuid2;

    /* generate two of them quickly */
    FUNC1(&uuid);
    FUNC1(&uuid2);

    FUNC0(tc, "generated the same UUID twice",
             FUNC2(&uuid, &uuid2, sizeof(uuid)) != 0);
}