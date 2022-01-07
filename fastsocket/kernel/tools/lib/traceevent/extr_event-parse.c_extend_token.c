
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* realloc (char*,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int extend_token(char **tok, char *buf, int size)
{
 char *newtok = realloc(*tok, size);

 if (!newtok) {
  free(*tok);
  *tok = ((void*)0);
  return -1;
 }

 if (!*tok)
  strcpy(newtok, buf);
 else
  strcat(newtok, buf);
 *tok = newtok;

 return 0;
}
