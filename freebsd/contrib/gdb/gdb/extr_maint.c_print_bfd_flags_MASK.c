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
typedef  int flagword ;

/* Variables and functions */
 int SEC_ALLOC ; 
 int SEC_CODE ; 
 int SEC_COFF_SHARED_LIBRARY ; 
 int SEC_CONSTRUCTOR ; 
 int SEC_DATA ; 
 int SEC_HAS_CONTENTS ; 
 int SEC_IS_COMMON ; 
 int SEC_LOAD ; 
 int SEC_NEVER_LOAD ; 
 int SEC_READONLY ; 
 int SEC_RELOC ; 
 int SEC_ROM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void
FUNC1 (flagword flags)
{
  if (flags & SEC_ALLOC)
    FUNC0 (" ALLOC");
  if (flags & SEC_LOAD)
    FUNC0 (" LOAD");
  if (flags & SEC_RELOC)
    FUNC0 (" RELOC");
  if (flags & SEC_READONLY)
    FUNC0 (" READONLY");
  if (flags & SEC_CODE)
    FUNC0 (" CODE");
  if (flags & SEC_DATA)
    FUNC0 (" DATA");
  if (flags & SEC_ROM)
    FUNC0 (" ROM");
  if (flags & SEC_CONSTRUCTOR)
    FUNC0 (" CONSTRUCTOR");
  if (flags & SEC_HAS_CONTENTS)
    FUNC0 (" HAS_CONTENTS");
  if (flags & SEC_NEVER_LOAD)
    FUNC0 (" NEVER_LOAD");
  if (flags & SEC_COFF_SHARED_LIBRARY)
    FUNC0 (" COFF_SHARED_LIBRARY");
  if (flags & SEC_IS_COMMON)
    FUNC0 (" IS_COMMON");
}