
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
struct xdr_buf {size_t const page_base; int * pages; } ;


 int KM_USER0 ;
 char* kmap_atomic (int ,int ) ;
 int kunmap_atomic (char*,int ) ;

void
xdr_terminate_string(struct xdr_buf *buf, const u32 len)
{
 char *kaddr;

 kaddr = kmap_atomic(buf->pages[0], KM_USER0);
 kaddr[buf->page_base + len] = '\0';
 kunmap_atomic(kaddr, KM_USER0);
}
