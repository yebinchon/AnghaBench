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
struct perf_kvm_stat {int dummy; } ;
struct event_key {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 char* FUNC0 (struct perf_kvm_stat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*) ; 

__attribute__((used)) static void FUNC2(struct perf_kvm_stat *kvm,
				  struct event_key *key,
				  char decode[20])
{
	const char *exit_reason = FUNC0(kvm, key->key);

	FUNC1(decode, 20, "%s", exit_reason);
}