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
typedef  int apr_uint64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 () ; 

__attribute__((used)) static void FUNC2(apr_uint64_t *uuid_time)
{
    /* ### fix this call to be more portable? */
    *uuid_time = FUNC1();

    /* Offset between UUID formatted times and Unix formatted times.
       UUID UTC base time is October 15, 1582.
       Unix base time is January 1, 1970.      */
    *uuid_time = (*uuid_time * 10) + FUNC0(0x01B21DD213814000);
}