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
typedef  void u8 ;
struct vport {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VPORT_ALIGN ; 

__attribute__((used)) static inline void *FUNC1(const struct vport *vport)
{
	return (u8 *)vport + FUNC0(sizeof(struct vport), VPORT_ALIGN);
}