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
struct nfs_server {int /*<<< orphan*/  io_stats; } ;
struct nfs_iostats {long* bytes; } ;
typedef  enum nfs_stat_bytecounters { ____Placeholder_nfs_stat_bytecounters } nfs_stat_bytecounters ;

/* Variables and functions */
 int FUNC0 () ; 
 struct nfs_iostats* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static inline void FUNC3(const struct nfs_server *server,
					enum nfs_stat_bytecounters stat,
					long addend)
{
	struct nfs_iostats *iostats;
	int cpu;

	cpu = FUNC0();
	iostats = FUNC1(server->io_stats, cpu);
	iostats->bytes[stat] += addend;
	FUNC2();
}