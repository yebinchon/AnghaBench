
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_temp {struct parser_temp* data; struct parser_temp* next; } ;


 int INTOFF ;
 int INTON ;
 int ckfree (struct parser_temp*) ;
 struct parser_temp* parser_temp ;

__attribute__((used)) static void
parser_temp_free_all(void)
{
 struct parser_temp *t;

 INTOFF;
 while (parser_temp != ((void*)0)) {
  t = parser_temp;
  parser_temp = t->next;
  ckfree(t->data);
  ckfree(t);
 }
 INTON;
}
