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
struct _Unwind_Context {int flags; } ;
typedef  int _Unwind_Word ;

/* Variables and functions */
 int EXTENDED_CONTEXT_BIT ; 

__attribute__((used)) static inline _Unwind_Word
FUNC0 (struct _Unwind_Context *context)
{
  return context->flags & EXTENDED_CONTEXT_BIT;
}