
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int state ;
typedef int mbstate_t ;
typedef int cmp2 ;


 void* UCH (char const) ;
 size_t mbrlen (char const*,size_t,int*) ;
 size_t mbrtowc (int*,char const*,size_t,int*) ;
 int memset (int*,int ,int) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int
string_to_char(const char **stringp)
{
    int result;
    const char *string = *stringp;
    result = UCH(*string);
    *stringp += 1;

    return result;
}
