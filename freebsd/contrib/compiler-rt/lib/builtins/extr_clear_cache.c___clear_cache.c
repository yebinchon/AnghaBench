
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct arm_sync_icache_args {uintptr_t addr; uintptr_t len; } ;


 int ARM_SYNC_ICACHE ;
 int BCACHE ;
 int FlushInstructionCache (int ,void*,int) ;
 int GetCurrentProcess () ;
 int __ARM_NR_cacheflush ;
 int __NR_cacheflush ;
 int assert (int ) ;
 int cacheflush (void*,uintptr_t,int ) ;
 int clear_mips_cache (void*,uintptr_t const) ;
 int compilerrt_abort () ;
 int sys_icache_invalidate (void*,int) ;
 int sysarch (int ,struct arm_sync_icache_args*) ;
 int syscall (int ,void*,uintptr_t const,int ) ;

void __clear_cache(void *start, void *end) {
}
