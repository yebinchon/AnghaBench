
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bio {int dummy; } ;
typedef int pgoff_t ;


 int READ ;
 int submit (int ,int ,int ,struct bio**) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int bio_read_page(pgoff_t page_off, void *addr, struct bio **bio_chain)
{
 return submit(READ, page_off, virt_to_page(addr), bio_chain);
}
