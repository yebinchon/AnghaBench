
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static int
digits_of(int value)
{
    char temp[80];
    sprintf(temp, "%d", value);
    return (int) strlen(temp);
}
