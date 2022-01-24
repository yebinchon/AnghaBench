#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct seq_file {int dummy; } ;
struct request_key_auth {int /*<<< orphan*/  callout_len; int /*<<< orphan*/  pid; } ;
struct TYPE_2__ {struct request_key_auth* data; } ;
struct key {char* description; TYPE_1__ payload; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct key const*) ; 
 int /*<<< orphan*/  FUNC1 (struct seq_file*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*,char*) ; 

__attribute__((used)) static void FUNC3(const struct key *key,
				      struct seq_file *m)
{
	struct request_key_auth *rka = key->payload.data;

	FUNC2(m, "key:");
	FUNC2(m, key->description);
	if (FUNC0(key))
		FUNC1(m, " pid:%d ci:%zu", rka->pid, rka->callout_len);
}