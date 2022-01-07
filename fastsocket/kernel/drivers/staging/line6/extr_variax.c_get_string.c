
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int memcpy (char*,char const*,int) ;

__attribute__((used)) static ssize_t get_string(char *buf, const char *data, int length)
{
 int i;
 memcpy(buf, data, length);

 for (i = length; i--;) {
  char c = buf[i];

  if ((c != 0) && (c != ' '))
   break;
 }

 buf[i + 1] = '\n';
 return i + 2;
}
