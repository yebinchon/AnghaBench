
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XML_ParserFree (int *) ;
 int * parser ;

__attribute__((used)) static void
basic_teardown(void)
{
    if (parser != ((void*)0)) {
        XML_ParserFree(parser);
        parser = ((void*)0);
    }
}
