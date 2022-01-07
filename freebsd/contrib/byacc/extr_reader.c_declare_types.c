
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* tag; int name; scalar_t__ args; } ;
typedef TYPE_1__ bucket ;


 int EOF ;
 int L_PAREN ;
 int declare_argtypes (TYPE_1__*) ;
 TYPE_1__* get_literal () ;
 TYPE_1__* get_name () ;
 char* get_tag () ;
 scalar_t__ isalpha (int) ;
 int nextc () ;
 int retyped_warning (int ) ;
 int unexpected_EOF () ;

__attribute__((used)) static void
declare_types(void)
{
    int c;
    bucket *bp = ((void*)0);
    char *tag = ((void*)0);

    c = nextc();
    if (c == EOF)
 unexpected_EOF();
    if (c == '<')
 tag = get_tag();

    for (;;)
    {
 c = nextc();
 if (c == EOF)
     unexpected_EOF();
 if (isalpha(c) || c == '_' || c == '.' || c == '$')
 {
     bp = get_name();






 }
 else if (c == '\'' || c == '"')
 {
     bp = get_literal();



 }
 else
     return;

 if (tag)
 {
     if (bp->tag && tag != bp->tag)
  retyped_warning(bp->name);
     bp->tag = tag;
 }
    }
}
