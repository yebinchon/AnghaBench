
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * XML_ParserCreate (int *) ;
 int fail (char*) ;
 int * parser ;

__attribute__((used)) static void
basic_setup(void)
{
    parser = XML_ParserCreate(((void*)0));
    if (parser == ((void*)0))
        fail("Parser not created.");
}
