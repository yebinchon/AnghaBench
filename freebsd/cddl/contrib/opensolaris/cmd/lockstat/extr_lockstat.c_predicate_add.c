
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (int) ;
 int sprintf (char*,char*,char*,...) ;
 int strlen (char*) ;

__attribute__((used)) static void
predicate_add(char **pred, char *what, char *cmp, uintptr_t value)
{
 char *new;
 int len, newlen;

 if (what == ((void*)0))
  return;

 if (*pred == ((void*)0)) {
  *pred = malloc(1);
  *pred[0] = '\0';
 }

 len = strlen(*pred);
 newlen = len + strlen(what) + 32 + strlen("( && )");
 new = malloc(newlen);

 if (*pred[0] != '\0') {
  if (cmp != ((void*)0)) {
   (void) sprintf(new, "(%s) && (%s %s 0x%p)",
       *pred, what, cmp, (void *)value);
  } else {
   (void) sprintf(new, "(%s) && (%s)", *pred, what);
  }
 } else {
  if (cmp != ((void*)0)) {
   (void) sprintf(new, "%s %s 0x%p",
       what, cmp, (void *)value);
  } else {
   (void) sprintf(new, "%s", what);
  }
 }

 free(*pred);
 *pred = new;
}
