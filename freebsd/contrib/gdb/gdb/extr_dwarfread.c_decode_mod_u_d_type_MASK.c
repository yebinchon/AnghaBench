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
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT_mod_u_d_type ; 
 int /*<<< orphan*/  AT_user_def_type ; 
 int /*<<< orphan*/  GET_UNSIGNED ; 
 unsigned short FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_objfile ; 
 struct type* FUNC1 (char*,unsigned short,int /*<<< orphan*/ ) ; 
 unsigned short FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct type *
FUNC3 (char *typedata)
{
  struct type *typep = NULL;
  unsigned short modcount;
  int nbytes;

  /* Get the total size of the block, exclusive of the size itself */

  nbytes = FUNC0 (AT_mod_u_d_type);
  modcount = FUNC2 (typedata, nbytes, GET_UNSIGNED, current_objfile);
  typedata += nbytes;

  /* Deduct the size of the reference type bytes at the end of the block. */

  modcount -= FUNC0 (AT_user_def_type);

  /* Now do the actual decoding */

  typep = FUNC1 (typedata, modcount, AT_mod_u_d_type);
  return (typep);
}