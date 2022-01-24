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
typedef  int apr_uint32_t ;

/* Variables and functions */
 int FUNC0 (int) ; 

__attribute__((used)) static apr_uint32_t FUNC1(apr_uint32_t a)
{
    apr_uint64_t z = a;
    z *= 279470273;
    z %= FUNC0(4294967291);
    return (apr_uint32_t)z;
}