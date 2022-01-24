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
typedef  int Int32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,...) ; 
 char* inFileName ; 
 char* progName ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC2 ( Int32 max_handled_blocks )
{
   FUNC1 ( stderr,
             "%s: `%s' appears to contain more than %d blocks\n",
            progName, inFileName, max_handled_blocks );
   FUNC1 ( stderr,
             "%s: and cannot be handled.  To fix, increase\n",
             progName );
   FUNC1 ( stderr, 
             "%s: BZ_MAX_HANDLED_BLOCKS in bzip2recover.c, and recompile.\n",
             progName );
   FUNC0 ( 1 );
}