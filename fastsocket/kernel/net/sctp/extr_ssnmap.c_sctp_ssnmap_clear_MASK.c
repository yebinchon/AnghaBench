#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int len; int /*<<< orphan*/  ssn; } ;
struct TYPE_3__ {int len; } ;
struct sctp_ssnmap {TYPE_2__ in; TYPE_1__ out; } ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,size_t) ; 

void FUNC1(struct sctp_ssnmap *map)
{
	size_t size;

	size = (map->in.len + map->out.len) * sizeof(__u16);
	FUNC0(map->in.ssn, 0x00, size);
}