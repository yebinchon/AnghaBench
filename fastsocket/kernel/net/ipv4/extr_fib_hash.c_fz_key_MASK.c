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
struct fn_zone {int dummy; } ;
typedef  int __be32 ;

/* Variables and functions */
 int FUNC0 (struct fn_zone*) ; 

__attribute__((used)) static inline __be32 FUNC1(__be32 dst, struct fn_zone *fz)
{
	return dst & FUNC0(fz);
}