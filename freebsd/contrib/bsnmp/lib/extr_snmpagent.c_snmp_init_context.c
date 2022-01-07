
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_context {int dummy; } ;
struct context {struct snmp_context ctx; int dlist; } ;


 int TAILQ_INIT (int *) ;
 struct context* malloc (int) ;
 int memset (struct context*,int ,int) ;

struct snmp_context *
snmp_init_context(void)
{
 struct context *context;

 if ((context = malloc(sizeof(*context))) == ((void*)0))
  return (((void*)0));

 memset(context, 0, sizeof(*context));
 TAILQ_INIT(&context->dlist);

 return (&context->ctx);
}
