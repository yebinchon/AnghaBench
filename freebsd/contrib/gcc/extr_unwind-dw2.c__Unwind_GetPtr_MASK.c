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
struct _Unwind_Context {int dummy; } ;
typedef  scalar_t__ _Unwind_Ptr ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct _Unwind_Context*,int) ; 

__attribute__((used)) static inline void *
FUNC1 (struct _Unwind_Context *context, int index)
{
  return (void *)(_Unwind_Ptr) FUNC0 (context, index);
}