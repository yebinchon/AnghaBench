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
struct TYPE_4__ {size_t* ssn; size_t len; } ;
struct TYPE_3__ {size_t* ssn; size_t len; } ;
struct sctp_ssnmap {TYPE_2__ out; TYPE_1__ in; } ;
typedef  size_t __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sctp_ssnmap*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 

__attribute__((used)) static struct sctp_ssnmap *FUNC2(struct sctp_ssnmap *map, __u16 in,
					    __u16 out)
{
	FUNC0(map, 0x00, FUNC1(in, out));

	/* Start 'in' stream just after the map header. */
	map->in.ssn = (__u16 *)&map[1];
	map->in.len = in;

	/* Start 'out' stream just after 'in'. */
	map->out.ssn = &map->in.ssn[in];
	map->out.len = out;

	return map;
}