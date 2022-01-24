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
typedef  int u32 ;
struct sem_array {int /*<<< orphan*/  sem_perm; } ;

/* Variables and functions */
#define  GETALL 140 
#define  GETNCNT 139 
#define  GETPID 138 
#define  GETVAL 137 
#define  GETZCNT 136 
#define  IPC_INFO 135 
#define  IPC_RMID 134 
#define  IPC_SET 133 
#define  IPC_STAT 132 
#define  SEM_INFO 131 
#define  SEM_STAT 130 
 int SEM__ASSOCIATE ; 
 int SEM__DESTROY ; 
 int SEM__GETATTR ; 
 int SEM__READ ; 
 int SEM__SETATTR ; 
 int SEM__WRITE ; 
#define  SETALL 129 
#define  SETVAL 128 
 int /*<<< orphan*/  SYSTEM__IPC_INFO ; 
 int /*<<< orphan*/  current ; 
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sem_array *sma, int cmd)
{
	int err;
	u32 perms;

	switch (cmd) {
	case IPC_INFO:
	case SEM_INFO:
		/* No specific object, just general system-wide information. */
		return FUNC1(current, SYSTEM__IPC_INFO);
	case GETPID:
	case GETNCNT:
	case GETZCNT:
		perms = SEM__GETATTR;
		break;
	case GETVAL:
	case GETALL:
		perms = SEM__READ;
		break;
	case SETVAL:
	case SETALL:
		perms = SEM__WRITE;
		break;
	case IPC_RMID:
		perms = SEM__DESTROY;
		break;
	case IPC_SET:
		perms = SEM__SETATTR;
		break;
	case IPC_STAT:
	case SEM_STAT:
		perms = SEM__GETATTR | SEM__ASSOCIATE;
		break;
	default:
		return 0;
	}

	err = FUNC0(&sma->sem_perm, perms);
	return err;
}