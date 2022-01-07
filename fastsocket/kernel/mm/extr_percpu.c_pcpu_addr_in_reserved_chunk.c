
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* base_addr; } ;


 TYPE_1__* pcpu_first_chunk ;
 int pcpu_reserved_chunk_limit ;

__attribute__((used)) static bool pcpu_addr_in_reserved_chunk(void *addr)
{
 void *first_start = pcpu_first_chunk->base_addr;

 return addr >= first_start &&
  addr < first_start + pcpu_reserved_chunk_limit;
}
