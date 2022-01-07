
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct publication {int upper; int lower; int type; int key; int ref; } ;
struct distr_item {void* key; void* ref; void* upper; void* lower; void* type; } ;


 int dbg (char*,int ,int ,int ) ;
 void* htonl (int ) ;

__attribute__((used)) static void publ_to_item(struct distr_item *i, struct publication *p)
{
 i->type = htonl(p->type);
 i->lower = htonl(p->lower);
 i->upper = htonl(p->upper);
 i->ref = htonl(p->ref);
 i->key = htonl(p->key);
 dbg("publ_to_item: %u, %u, %u\n", p->type, p->lower, p->upper);
}
