
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REALLOC (char*,int ,int,int *) ;
 int clearerr (int ) ;
 char* errmsg ;
 int get_tty_line () ;
 char* ibuf ;
 char* ibufp ;
 int isglobal ;
 char* rhbuf ;
 size_t rhbufi ;
 int rhbufsz ;
 int stdin ;

char *
extract_subst_template(void)
{
 int n = 0;
 int i = 0;
 char c;
 char delimiter = *ibufp++;

 if (*ibufp == '%' && *(ibufp + 1) == delimiter) {
  ibufp++;
  if (!rhbuf)
   errmsg = "no previous substitution";
  return rhbuf;
 }
 while (*ibufp != delimiter) {
  REALLOC(rhbuf, rhbufsz, i + 2, ((void*)0));
  if ((c = rhbuf[i++] = *ibufp++) == '\n' && *ibufp == '\0') {
   i--, ibufp--;
   break;
  } else if (c != '\\')
   ;
  else if ((rhbuf[i++] = *ibufp++) != '\n')
   ;
  else if (!isglobal) {
   while ((n = get_tty_line()) == 0 ||
       (n > 0 && ibuf[n - 1] != '\n'))
    clearerr(stdin);
   if (n < 0)
    return ((void*)0);
  }
 }
 REALLOC(rhbuf, rhbufsz, i + 1, ((void*)0));
 rhbuf[rhbufi = i] = '\0';
 return rhbuf;
}
