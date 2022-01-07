
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bcopy (char*,char*,int) ;
 int free (char*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,char*,char*,void*,char*,void*) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
filter_add(char **filt, char *what, uintptr_t base, uintptr_t size)
{
 char buf[256], *c = buf, *new;
 int len, newlen;

 if (*filt == ((void*)0)) {
  *filt = malloc(1);
  *filt[0] = '\0';
 }





 (void) sprintf(c, "%s(%s >= %p && %s < %p)", *filt[0] != '\0' ?
     " || " : "", what, (void *)base, what, (void *)(base + size));


 newlen = (len = strlen(*filt) + 1) + strlen(c);
 new = malloc(newlen);
 bcopy(*filt, new, len);
 (void) strcat(new, c);
 free(*filt);
 *filt = new;
}
