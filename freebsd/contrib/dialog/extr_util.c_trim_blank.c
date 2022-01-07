
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UCH (char) ;
 int isblank (int ) ;

__attribute__((used)) static bool
trim_blank(char *base, char *dst)
{
    int count = isblank(UCH(*dst));

    while (dst-- != base) {
 if (*dst == '\n') {
     break;
 } else if (isblank(UCH(*dst))) {
     count++;
 } else {
     break;
 }
    }
    return (count > 1);
}
