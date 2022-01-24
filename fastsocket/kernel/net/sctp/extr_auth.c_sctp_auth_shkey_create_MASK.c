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
struct sctp_shared_key {int /*<<< orphan*/  key_id; int /*<<< orphan*/  key_list; } ;
typedef  int /*<<< orphan*/  gfp_t ;
typedef  int /*<<< orphan*/  __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct sctp_shared_key* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct sctp_shared_key *FUNC2(__u16 key_id, gfp_t gfp)
{
	struct sctp_shared_key *new;

	/* Allocate the shared key container */
	new = FUNC1(sizeof(struct sctp_shared_key), gfp);
	if (!new)
		return NULL;

	FUNC0(&new->key_list);
	new->key_id = key_id;

	return new;
}