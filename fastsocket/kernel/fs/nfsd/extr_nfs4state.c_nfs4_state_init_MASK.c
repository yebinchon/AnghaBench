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
typedef  int /*<<< orphan*/  stateid_t ;

/* Variables and functions */
 int CLIENT_HASH_SIZE ; 
 int FILE_HASH_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int LOCK_HASH_SIZE ; 
 int OWNER_HASH_SIZE ; 
 int SESSION_HASH_SIZE ; 
 int STATEID_HASH_SIZE ; 
 int /*<<< orphan*/  client_lru ; 
 int /*<<< orphan*/  close_lru ; 
 int /*<<< orphan*/ * conf_id_hashtbl ; 
 int /*<<< orphan*/ * conf_str_hashtbl ; 
 int /*<<< orphan*/  del_recall_lru ; 
 int /*<<< orphan*/ * file_hashtbl ; 
 int /*<<< orphan*/ * lock_ownerid_hashtbl ; 
 int /*<<< orphan*/ * lock_ownerstr_hashtbl ; 
 int /*<<< orphan*/ * lockstateid_hashtbl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  onestateid ; 
 int /*<<< orphan*/ * ownerid_hashtbl ; 
 int /*<<< orphan*/ * ownerstr_hashtbl ; 
 int /*<<< orphan*/ * reclaim_str_hashtbl ; 
 scalar_t__ reclaim_str_hashtbl_size ; 
 int /*<<< orphan*/ * sessionid_hashtbl ; 
 int /*<<< orphan*/ * stateid_hashtbl ; 
 int /*<<< orphan*/ * unconf_id_hashtbl ; 
 int /*<<< orphan*/ * unconf_str_hashtbl ; 

int
FUNC3(void)
{
	int i, status;

	status = FUNC2();
	if (status)
		return status;
	for (i = 0; i < CLIENT_HASH_SIZE; i++) {
		FUNC0(&conf_id_hashtbl[i]);
		FUNC0(&conf_str_hashtbl[i]);
		FUNC0(&unconf_str_hashtbl[i]);
		FUNC0(&unconf_id_hashtbl[i]);
		FUNC0(&reclaim_str_hashtbl[i]);
	}
	for (i = 0; i < SESSION_HASH_SIZE; i++)
		FUNC0(&sessionid_hashtbl[i]);
	for (i = 0; i < FILE_HASH_SIZE; i++) {
		FUNC0(&file_hashtbl[i]);
	}
	for (i = 0; i < OWNER_HASH_SIZE; i++) {
		FUNC0(&ownerstr_hashtbl[i]);
		FUNC0(&ownerid_hashtbl[i]);
	}
	for (i = 0; i < STATEID_HASH_SIZE; i++) {
		FUNC0(&stateid_hashtbl[i]);
		FUNC0(&lockstateid_hashtbl[i]);
	}
	for (i = 0; i < LOCK_HASH_SIZE; i++) {
		FUNC0(&lock_ownerid_hashtbl[i]);
		FUNC0(&lock_ownerstr_hashtbl[i]);
	}
	FUNC1(&onestateid, ~0, sizeof(stateid_t));
	FUNC0(&close_lru);
	FUNC0(&client_lru);
	FUNC0(&del_recall_lru);
	reclaim_str_hashtbl_size = 0;
	return 0;
}