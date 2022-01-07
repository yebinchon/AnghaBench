
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* context; } ;
typedef TYPE_2__ cp_parser ;
struct TYPE_4__ {int * next; } ;



__attribute__((used)) static inline bool
cp_parser_parsing_tentatively (cp_parser* parser)
{
  return parser->context->next != ((void*)0);
}
