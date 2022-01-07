
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trace_parser {int size; int buffer; } ;


 int GFP_KERNEL ;
 int kmalloc (int,int ) ;
 int memset (struct trace_parser*,int ,int) ;

int trace_parser_get_init(struct trace_parser *parser, int size)
{
 memset(parser, 0, sizeof(*parser));

 parser->buffer = kmalloc(size, GFP_KERNEL);
 if (!parser->buffer)
  return 1;

 parser->size = size;
 return 0;
}
