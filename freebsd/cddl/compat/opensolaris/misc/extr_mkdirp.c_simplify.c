
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char wchar_t ;


 char* calloc (int,size_t) ;
 int free (char*) ;
 size_t mbstowcs (char*,char*,size_t) ;
 char* strdup (char const*) ;
 size_t strlen (char*) ;
 size_t wcstombs (char*,char*,size_t) ;

__attribute__((used)) static char *
simplify(const char *str)
{
 int i;
 size_t mbPathlen;
 size_t wcPathlen;
 wchar_t *wptr;
 wchar_t *wcPath;
 char *mbPath;





 if (!str)
     return (((void*)0));





 if ((mbPath = strdup(str)) == ((void*)0)) {
  return (((void*)0));
 }






 mbPathlen = strlen(mbPath);

 if ((wcPath = calloc(sizeof (wchar_t), mbPathlen+1)) == ((void*)0)) {
  free(mbPath);
  return (((void*)0));
 }

 if ((wcPathlen = mbstowcs(wcPath, mbPath, mbPathlen)) == (size_t)-1) {
  free(mbPath);
  free(wcPath);
  return (((void*)0));
 }





 for (wptr = wcPath, i = 0; i < wcPathlen; i++) {
  *wptr++ = wcPath[i];

  if (wcPath[i] == '/') {
   i++;

   while (wcPath[i] == '/') {
    i++;
   }

   i--;
  }
 }

 *wptr = '\0';





 if (wcstombs(mbPath, wcPath, mbPathlen) == (size_t)-1) {
  free(mbPath);
  free(wcPath);
  return (((void*)0));
 }

 free(wcPath);
 return (mbPath);
}
