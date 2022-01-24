#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_handle {TYPE_2__* type_stack; } ;
typedef  unsigned int bfd_vma ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  int bfd_boolean ;
struct TYPE_3__ {unsigned int size; int unsignedp; int localp; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ieee_handle*,unsigned int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*) ; 
 scalar_t__ FUNC2 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, bfd_signed_vma low, bfd_signed_vma high)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int size;
  bfd_boolean unsignedp, localp;

  size = info->type_stack->type.size;
  unsignedp = info->type_stack->type.unsignedp;
  localp = info->type_stack->type.localp;
  FUNC1 (info);
  return (FUNC0 (info, size, unsignedp, localp)
	  && FUNC2 (info, 'R')
	  && FUNC2 (info, (bfd_vma) low)
	  && FUNC2 (info, (bfd_vma) high)
	  && FUNC2 (info, unsignedp ? 0 : 1)
	  && FUNC2 (info, size));
}