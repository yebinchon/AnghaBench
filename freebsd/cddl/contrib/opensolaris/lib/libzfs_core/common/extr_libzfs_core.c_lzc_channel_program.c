
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int nvlist_t ;


 int B_TRUE ;
 int lzc_channel_program_impl (char const*,char const*,int ,int ,int ,int *,int **) ;

int
lzc_channel_program(const char *pool, const char *program, uint64_t instrlimit,
    uint64_t memlimit, nvlist_t *argnvl, nvlist_t **outnvl)
{
 return (lzc_channel_program_impl(pool, program, B_TRUE, instrlimit,
     memlimit, argnvl, outnvl));
}
