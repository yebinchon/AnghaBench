
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int die (char*,size_t) ;
 void* realloc (void*,size_t) ;

__attribute__((used)) static inline void *xrealloc(void *p, size_t len)
{
 void *new = realloc(p, len);

 if (!new)
  die("realloc() failed (len=%zd)\n", len);

 return new;
}
