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
struct neon_type_el {int /*<<< orphan*/  size; } ;
typedef  enum neon_shape { ____Placeholder_neon_shape } neon_shape ;

/* Variables and functions */
 int /*<<< orphan*/  NS_DD ; 
 int /*<<< orphan*/  NS_NULL ; 
 int /*<<< orphan*/  NS_QQ ; 
 int N_8 ; 
 int N_EQK ; 
 int N_INT ; 
 int N_KEY ; 
 struct neon_type_el FUNC0 (int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (void)
{
  enum neon_shape rs = FUNC2 (NS_DD, NS_QQ, NS_NULL);
  struct neon_type_el et = FUNC0 (2, rs,
    N_EQK | N_INT, N_8 | N_KEY);
  FUNC3 (FUNC1 (rs), 1, et.size);
}