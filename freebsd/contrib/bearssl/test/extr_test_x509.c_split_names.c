
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_ws (char const) ;
 int memcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;
 void* xmalloc (size_t) ;

__attribute__((used)) static char **
split_names(const char *value)
{
 char **names;
 size_t len;

 names = ((void*)0);
 len = strlen(value);
 for (;;) {
  size_t u, ptr;

  ptr = 0;
  u = 0;
  while (u < len) {
   size_t v;

   while (u < len && is_ws(value[u])) {
    u ++;
   }
   v = u;
   while (v < len && !is_ws(value[v])) {
    v ++;
   }
   if (v > u) {
    if (names != ((void*)0)) {
     char *name;

     name = xmalloc(v - u + 1);
     memcpy(name, value + u, v - u);
     name[v - u] = 0;
     names[ptr] = name;
    }
    ptr ++;
   }
   u = v;
  }
  if (names == ((void*)0)) {
   names = xmalloc((ptr + 1) * sizeof *names);
  } else {
   names[ptr] = ((void*)0);
   return names;
  }
 }
}
