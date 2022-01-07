
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u64 ;
struct perf_header {int needs_swap; } ;
typedef int magic ;


 int __perf_magic1 ;
 scalar_t__ __perf_magic2 ;
 scalar_t__ __perf_magic2_sw ;
 int memcmp (scalar_t__*,int ,int) ;
 int pr_debug (char*) ;
 int try_all_file_abis (int ,struct perf_header*) ;
 int try_all_pipe_abis (int ,struct perf_header*) ;

__attribute__((used)) static int check_magic_endian(u64 magic, uint64_t hdr_sz,
         bool is_pipe, struct perf_header *ph)
{
 int ret;


 ret = memcmp(&magic, __perf_magic1, sizeof(magic));
 if (ret == 0) {
  pr_debug("legacy perf.data format\n");
  if (is_pipe)
   return try_all_pipe_abis(hdr_sz, ph);

  return try_all_file_abis(hdr_sz, ph);
 }







 if (magic == __perf_magic2)
  return 0;


 if (magic != __perf_magic2_sw)
  return -1;

 ph->needs_swap = 1;

 return 0;
}
