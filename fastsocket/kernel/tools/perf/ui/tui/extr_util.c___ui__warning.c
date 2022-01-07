
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int K_ESC ;
 int fprintf (int ,char*,char const*) ;
 int free (char*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int stderr ;
 int ui__lock ;
 int ui__question_window (char const*,char*,char*,int ) ;
 scalar_t__ vasprintf (char**,char const*,int ) ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int __ui__warning(const char *title, const char *format, va_list args)
{
 char *s;

 if (vasprintf(&s, format, args) > 0) {
  int key;

  pthread_mutex_lock(&ui__lock);
  key = ui__question_window(title, s, "Press any key...", 0);
  pthread_mutex_unlock(&ui__lock);
  free(s);
  return key;
 }

 fprintf(stderr, "%s\n", title);
 vfprintf(stderr, format, args);
 return K_ESC;
}
