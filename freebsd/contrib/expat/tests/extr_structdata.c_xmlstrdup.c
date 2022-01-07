
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XML_Char ;


 int assert (int ) ;
 int * malloc (size_t) ;
 int memcpy (int *,int const*,size_t) ;
 int xcstrlen (int const*) ;

__attribute__((used)) static XML_Char *
xmlstrdup(const XML_Char *s)
{
    size_t byte_count = (xcstrlen(s) + 1) * sizeof(XML_Char);
    XML_Char *dup = malloc(byte_count);

    assert(dup != ((void*)0));
    memcpy(dup, s, byte_count);
    return dup;
}
