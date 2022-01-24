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
struct TYPE_2__ {int rchits; int rcmisses; int rcnocache; } ;

/* Variables and functions */
 int /*<<< orphan*/  cache_lock ; 
 int drc_mem_usage ; 
 int longest_chain ; 
 int longest_chain_cachesize ; 
 int maskbits ; 
 int max_drc_entries ; 
 TYPE_1__ nfsdstats ; 
 int num_drc_entries ; 
 int payload_misses ; 
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct seq_file *m, void *v)
{
	FUNC1(&cache_lock);
	FUNC0(m, "max entries:           %u\n", max_drc_entries);
	FUNC0(m, "num entries:           %u\n", num_drc_entries);
	FUNC0(m, "hash buckets:          %u\n", 1 << maskbits);
	FUNC0(m, "mem usage:             %u\n", drc_mem_usage);
	FUNC0(m, "cache hits:            %u\n", nfsdstats.rchits);
	FUNC0(m, "cache misses:          %u\n", nfsdstats.rcmisses);
	FUNC0(m, "not cached:            %u\n", nfsdstats.rcnocache);
	FUNC0(m, "payload misses:        %u\n", payload_misses);
	FUNC0(m, "longest chain len:     %u\n", longest_chain);
	FUNC0(m, "cachesize at longest:  %u\n", longest_chain_cachesize);
	FUNC2(&cache_lock);
	return 0;
}