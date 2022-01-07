
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_temp {void* data; struct parser_temp* next; } ;


 int INTOFF ;
 int INTON ;
 void* ckmalloc (size_t) ;
 struct parser_temp* parser_temp ;

__attribute__((used)) static void *
parser_temp_alloc(size_t len)
{
 struct parser_temp *t;

 INTOFF;
 t = ckmalloc(sizeof(*t));
 t->data = ((void*)0);
 t->next = parser_temp;
 parser_temp = t;
 t->data = ckmalloc(len);
 INTON;
 return t->data;
}
