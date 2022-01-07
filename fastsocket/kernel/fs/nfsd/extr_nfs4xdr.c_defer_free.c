
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tmpbuf {void (* release ) (void const*) ;struct tmpbuf* next; void* buf; } ;
struct nfsd4_compoundargs {struct tmpbuf* to_free; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct tmpbuf* kmalloc (int,int ) ;

__attribute__((used)) static int
defer_free(struct nfsd4_compoundargs *argp,
  void (*release)(const void *), void *p)
{
 struct tmpbuf *tb;

 tb = kmalloc(sizeof(*tb), GFP_KERNEL);
 if (!tb)
  return -ENOMEM;
 tb->buf = p;
 tb->release = release;
 tb->next = argp->to_free;
 argp->to_free = tb;
 return 0;
}
