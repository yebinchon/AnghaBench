
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;


 int sprintf (char*,char*,int) ;

__attribute__((used)) static char *time_to_string(u64 duration)
{
 static char text[80];

 text[0] = 0;

 if (duration < 1000)
  return text;

 if (duration < 1000 * 1000) {
  sprintf(text, "%4.1f us", duration / 1000.0);
  return text;
 }
 sprintf(text, "%4.1f ms", duration / 1000.0 / 1000);

 return text;
}
