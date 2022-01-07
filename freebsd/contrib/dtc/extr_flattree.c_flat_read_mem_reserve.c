
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reserve_info {int dummy; } ;
struct inbuf {int dummy; } ;
struct fdt_reserve_entry {scalar_t__ address; scalar_t__ size; } ;
typedef int re ;


 struct reserve_info* add_reserve_entry (struct reserve_info*,struct reserve_info*) ;
 struct reserve_info* build_reserve_entry (scalar_t__,scalar_t__) ;
 void* fdt64_to_cpu (scalar_t__) ;
 int flat_read_chunk (struct inbuf*,struct fdt_reserve_entry*,int) ;

__attribute__((used)) static struct reserve_info *flat_read_mem_reserve(struct inbuf *inb)
{
 struct reserve_info *reservelist = ((void*)0);
 struct reserve_info *new;
 struct fdt_reserve_entry re;







 while (1) {
  flat_read_chunk(inb, &re, sizeof(re));
  re.address = fdt64_to_cpu(re.address);
  re.size = fdt64_to_cpu(re.size);
  if (re.size == 0)
   break;

  new = build_reserve_entry(re.address, re.size);
  reservelist = add_reserve_entry(reservelist, new);
 }

 return reservelist;
}
