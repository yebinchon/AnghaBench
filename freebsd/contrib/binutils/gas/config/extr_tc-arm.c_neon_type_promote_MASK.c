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
struct neon_type_el {int /*<<< orphan*/  size; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 unsigned int N_EQK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct neon_type_el
FUNC2 (struct neon_type_el *key, unsigned thisarg)
{
  struct neon_type_el dest = *key;
  
  FUNC0 ((thisarg & N_EQK) != 0);
  
  FUNC1 (thisarg, &dest.type, &dest.size);

  return dest;
}