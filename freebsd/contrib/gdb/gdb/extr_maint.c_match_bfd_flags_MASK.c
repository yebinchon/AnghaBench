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
 scalar_t__ FUNC0 (char*,char*) ; 

__attribute__((used)) static int 
FUNC1 (char *string, flagword flags)
{
  if (flags & SEC_ALLOC)
    if (FUNC0 (string, "ALLOC"))
      return 1;
  if (flags & SEC_LOAD)
    if (FUNC0 (string, "LOAD"))
      return 1;
  if (flags & SEC_RELOC)
    if (FUNC0 (string, "RELOC"))
      return 1;
  if (flags & SEC_READONLY)
    if (FUNC0 (string, "READONLY"))
      return 1;
  if (flags & SEC_CODE)
    if (FUNC0 (string, "CODE"))
      return 1;
  if (flags & SEC_DATA)
    if (FUNC0 (string, "DATA"))
      return 1;
  if (flags & SEC_ROM)
    if (FUNC0 (string, "ROM"))
      return 1;
  if (flags & SEC_CONSTRUCTOR)
    if (FUNC0 (string, "CONSTRUCTOR"))
      return 1;
  if (flags & SEC_HAS_CONTENTS)
    if (FUNC0 (string, "HAS_CONTENTS"))
      return 1;
  if (flags & SEC_NEVER_LOAD)
    if (FUNC0 (string, "NEVER_LOAD"))
      return 1;
  if (flags & SEC_COFF_SHARED_LIBRARY)
    if (FUNC0 (string, "COFF_SHARED_LIBRARY"))
      return 1;
  if (flags & SEC_IS_COMMON)
    if (FUNC0 (string, "IS_COMMON"))
      return 1;

  return 0;
}