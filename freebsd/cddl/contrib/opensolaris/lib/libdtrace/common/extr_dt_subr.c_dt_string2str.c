
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 int strncpy (char*,char*,int) ;

__attribute__((used)) static int
dt_string2str(char *s, char *str, int nbytes)
{
 int len = strlen(s);

 if (nbytes == 0) {




  return (len);
 }

 if (nbytes <= len) {
  (void) strncpy(str, s, nbytes - 1);




  str[nbytes - 1] = '\0';
 } else {
  (void) strcpy(str, s);
 }

 return (len);
}
