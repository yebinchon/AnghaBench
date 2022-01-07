
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct context {scalar_t__ len; int * str; scalar_t__ type; scalar_t__ role; scalar_t__ user; } ;


 int kfree (int *) ;
 int mls_context_destroy (struct context*) ;

__attribute__((used)) static inline void context_destroy(struct context *c)
{
 c->user = c->role = c->type = 0;
 kfree(c->str);
 c->str = ((void*)0);
 c->len = 0;
 mls_context_destroy(c);
}
