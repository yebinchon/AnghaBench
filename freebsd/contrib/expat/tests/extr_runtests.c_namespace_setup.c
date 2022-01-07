
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int XCS (char) ;
 int * XML_ParserCreateNS (int *,int ) ;
 int fail (char*) ;
 int * parser ;

__attribute__((used)) static void
namespace_setup(void)
{
    parser = XML_ParserCreateNS(((void*)0), XCS(' '));
    if (parser == ((void*)0))
        fail("Parser not created.");
}
