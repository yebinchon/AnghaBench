
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct nfsd4_compoundargs {unsigned int pagelen; char* tmp; char* tmpp; scalar_t__ p; scalar_t__ end; int * pagelist; } ;
typedef char __be32 ;


 int GFP_KERNEL ;
 unsigned int PAGE_SIZE ;
 int XDR_QUADLEN (unsigned int) ;
 int kfree (char*) ;
 char* kmalloc (unsigned int,int ) ;
 int memcpy (char*,scalar_t__,unsigned int) ;
 scalar_t__ page_address (int ) ;

__attribute__((used)) static __be32 *read_buf(struct nfsd4_compoundargs *argp, u32 nbytes)
{



 unsigned int avail = (char *)argp->end - (char *)argp->p;
 __be32 *p;
 if (avail + argp->pagelen < nbytes)
  return ((void*)0);
 if (avail + PAGE_SIZE < nbytes)
  return ((void*)0);

 if (nbytes <= sizeof(argp->tmp))
  p = argp->tmp;
 else {
  kfree(argp->tmpp);
  p = argp->tmpp = kmalloc(nbytes, GFP_KERNEL);
  if (!p)
   return ((void*)0);

 }





 memcpy(p, argp->p, avail);

 argp->p = page_address(argp->pagelist[0]);
 argp->pagelist++;
 if (argp->pagelen < PAGE_SIZE) {
  argp->end = argp->p + (argp->pagelen>>2);
  argp->pagelen = 0;
 } else {
  argp->end = argp->p + (PAGE_SIZE>>2);
  argp->pagelen -= PAGE_SIZE;
 }
 memcpy(((char*)p)+avail, argp->p, (nbytes - avail));
 argp->p += XDR_QUADLEN(nbytes - avail);
 return p;
}
