
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
struct perf_header {int needs_swap; } ;
struct perf_file_section {int dummy; } ;


 scalar_t__* attr_file_abi_sizes ;
 scalar_t__ bswap_64 (scalar_t__) ;
 int pr_debug (char*,int,int) ;

__attribute__((used)) static int try_all_file_abis(uint64_t hdr_sz, struct perf_header *ph)
{
 uint64_t ref_size, attr_size;
 int i;

 for (i = 0 ; attr_file_abi_sizes[i]; i++) {
  ref_size = attr_file_abi_sizes[i]
    + sizeof(struct perf_file_section);
  if (hdr_sz != ref_size) {
   attr_size = bswap_64(hdr_sz);
   if (attr_size != ref_size)
    continue;

   ph->needs_swap = 1;
  }
  pr_debug("ABI%d perf.data file detected, need_swap=%d\n",
    i,
    ph->needs_swap);
  return 0;
 }

 return -1;
}
