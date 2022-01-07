
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_compoundargs {int * tmpp; int * tmp; } ;
typedef int __be32 ;


 int BUG_ON (int) ;
 int GFP_KERNEL ;
 scalar_t__ defer_free (struct nfsd4_compoundargs*,int (*) (int *),int *) ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static char *savemem(struct nfsd4_compoundargs *argp, __be32 *p, int nbytes)
{
 if (p == argp->tmp) {
  p = kmalloc(nbytes, GFP_KERNEL);
  if (!p)
   return ((void*)0);
  memcpy(p, argp->tmp, nbytes);
 } else {
  BUG_ON(p != argp->tmpp);
  argp->tmpp = ((void*)0);
 }
 if (defer_free(argp, kfree, p)) {
  kfree(p);
  return ((void*)0);
 } else
  return (char *)p;
}
