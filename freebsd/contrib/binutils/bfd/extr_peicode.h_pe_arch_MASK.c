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
typedef  enum arch_type { ____Placeholder_arch_type } arch_type ;

/* Variables and functions */
 int arch_type_i386 ; 
 int arch_type_unknown ; 
 int arch_type_x86_64 ; 
 scalar_t__ FUNC0 (char const*,char*) ; 

__attribute__((used)) static enum arch_type
FUNC1 (const char *arch)
{
  if (FUNC0 (arch, "i386") == 0 || FUNC0 (arch, "ia32") == 0)
    return arch_type_i386;

  if (FUNC0 (arch, "x86_64") == 0 || FUNC0 (arch, "x86-64") == 0)
    return arch_type_x86_64;

  return arch_type_unknown;
}