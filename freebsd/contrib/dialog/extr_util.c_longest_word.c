
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX (int,int) ;
 int UCH (char const) ;
 int isspace (int ) ;

__attribute__((used)) static int
longest_word(const char *string)
{
    int length, result = 0;

    while (*string != '\0') {
 length = 0;
 while (*string != '\0' && !isspace(UCH(*string))) {
     length++;
     string++;
 }
 result = MAX(result, length);
 if (*string != '\0')
     string++;
    }
    return result;
}
