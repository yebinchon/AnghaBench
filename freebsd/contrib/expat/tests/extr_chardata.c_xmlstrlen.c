
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ XML_Char ;


 int assert (int ) ;

__attribute__((used)) static int
xmlstrlen(const XML_Char *s)
{
    int len = 0;
    assert(s != ((void*)0));
    while (s[len] != 0)
        ++len;
    return len;
}
