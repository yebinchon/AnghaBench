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
struct objc_class {void* protocols; void* cache; void* methods; void* ivars; void* instance_size; void* info; void* version; void* name; void* super_class; void* isa; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 void* FUNC0 (scalar_t__,int) ; 

__attribute__((used)) static void 
FUNC1 (CORE_ADDR addr, struct objc_class *class)
{
  class->isa = FUNC0 (addr, 4);
  class->super_class = FUNC0 (addr + 4, 4);
  class->name = FUNC0 (addr + 8, 4);
  class->version = FUNC0 (addr + 12, 4);
  class->info = FUNC0 (addr + 16, 4);
  class->instance_size = FUNC0 (addr + 18, 4);
  class->ivars = FUNC0 (addr + 24, 4);
  class->methods = FUNC0 (addr + 28, 4);
  class->cache = FUNC0 (addr + 32, 4);
  class->protocols = FUNC0 (addr + 36, 4);
}