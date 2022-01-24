#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ XML_Memory_Handling_Suite ;

/* Variables and functions */
 int /*<<< orphan*/  ALLOC_ALWAYS_SUCCEED ; 
 int /*<<< orphan*/  REALLOC_ALWAYS_SUCCEED ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  allocation_count ; 
 int /*<<< orphan*/  duff_allocator ; 
 int /*<<< orphan*/  duff_reallocator ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  free ; 
 int /*<<< orphan*/ * parser ; 
 int /*<<< orphan*/  reallocation_count ; 

__attribute__((used)) static void
FUNC2(void)
{
    XML_Memory_Handling_Suite memsuite = {
        duff_allocator,
        duff_reallocator,
        free
    };

    /* Ensure the parser creation will go through */
    allocation_count = ALLOC_ALWAYS_SUCCEED;
    reallocation_count = REALLOC_ALWAYS_SUCCEED;
    parser = FUNC0(NULL, &memsuite, NULL);
    if (parser == NULL)
        FUNC1("Parser not created");
}