
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buf; } ;
struct demangle_data {char* p; int array; TYPE_1__ array_str; } ;


 scalar_t__ ELFTC_ISDIGIT (char const) ;
 int assert (int) ;
 int dest_cstring (TYPE_1__*) ;
 int init_cstring (TYPE_1__*,size_t) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static bool
read_array(struct demangle_data *d)
{
 size_t len;
 const char *end;

 if (d == ((void*)0) || d->p == ((void*)0))
  return (0);

 end = d->p;
 assert(end != ((void*)0));

 for (;;) {
  if (*end == '\0')
   return (0);

  if (ELFTC_ISDIGIT(*end) == 0)
   break;

  ++end;
 }

 if (*end != '_')
  return (0);

 len = end - d->p;
 assert(len > 0);

 dest_cstring(&d->array_str);
 if (init_cstring(&d->array_str, len + 3) == 0)
  return (0);

 strncpy(d->array_str.buf + 1, d->p, len);
 *d->array_str.buf = '[';
 *(d->array_str.buf + len + 1) = ']';

 d->array = 1;
 d->p = end + 1;

 return (1);
}
