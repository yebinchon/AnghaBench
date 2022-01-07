
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netns_frags {int dummy; } ;
struct inet_frags {int dummy; } ;
struct inet_frag_queue {int dummy; } ;


 struct inet_frag_queue* inet_frag_alloc (struct netns_frags*,struct inet_frags*,void*) ;
 struct inet_frag_queue* inet_frag_intern (struct netns_frags*,struct inet_frag_queue*,struct inet_frags*,void*) ;

__attribute__((used)) static struct inet_frag_queue *inet_frag_create(struct netns_frags *nf,
  struct inet_frags *f, void *arg)
{
 struct inet_frag_queue *q;

 q = inet_frag_alloc(nf, f, arg);
 if (q == ((void*)0))
  return ((void*)0);

 return inet_frag_intern(nf, q, f, arg);
}
