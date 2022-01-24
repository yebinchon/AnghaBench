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
struct data {scalar_t__ len; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int) ; 
 struct data FUNC1 (struct data,scalar_t__) ; 

struct data FUNC2(struct data d, int align)
{
	int newlen = FUNC0(d.len, align);
	return FUNC1(d, newlen - d.len);
}