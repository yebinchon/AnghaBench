
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpbuf {int buf; int (* release ) (int ) ;struct tmpbuf* next; } ;
struct nfsd4_compoundargs {scalar_t__ ops; scalar_t__ iops; struct tmpbuf* to_free; struct tmpbuf* tmpp; } ;


 int kfree (struct tmpbuf*) ;
 int stub1 (int ) ;

void nfsd4_release_compoundargs(struct nfsd4_compoundargs *args)
{
 if (args->ops != args->iops) {
  kfree(args->ops);
  args->ops = args->iops;
 }
 kfree(args->tmpp);
 args->tmpp = ((void*)0);
 while (args->to_free) {
  struct tmpbuf *tb = args->to_free;
  args->to_free = tb->next;
  tb->release(tb->buf);
  kfree(tb);
 }
}
