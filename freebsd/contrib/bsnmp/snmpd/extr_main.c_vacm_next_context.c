
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vacm_context {int dummy; } ;


 struct vacm_context* SLIST_NEXT (struct vacm_context*,int ) ;
 int vcl ;

struct vacm_context *
vacm_next_context(struct vacm_context *vacmctx)
{
 if (vacmctx == ((void*)0))
  return (((void*)0));

 return (SLIST_NEXT(vacmctx, vcl));
}
