
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parser_temp {void* data; } ;


 int INTOFF ;
 int INTON ;
 void* ckrealloc (void*,size_t) ;
 int error (char*) ;
 struct parser_temp* parser_temp ;

__attribute__((used)) static void *
parser_temp_realloc(void *ptr, size_t len)
{
 struct parser_temp *t;

 INTOFF;
 t = parser_temp;
 if (ptr != t->data)
  error("bug: parser_temp_realloc misused");
 t->data = ckrealloc(t->data, len);
 INTON;
 return t->data;
}
