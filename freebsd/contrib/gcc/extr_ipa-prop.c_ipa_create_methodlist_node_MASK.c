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
struct ipa_methodlist {int dummy; } ;
typedef  int /*<<< orphan*/  ipa_methodlist_p ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 

__attribute__((used)) static inline ipa_methodlist_p
FUNC1 (void)
{
  return (ipa_methodlist_p) FUNC0 (1, sizeof (struct ipa_methodlist));
}