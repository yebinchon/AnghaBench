
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transport {int table; } ;
struct tport {int dummy; } ;


 struct tport* TAILQ_FIRST (int *) ;

struct tport *
trans_first_port(struct transport *t)
{

 return (TAILQ_FIRST(&t->table));
}
