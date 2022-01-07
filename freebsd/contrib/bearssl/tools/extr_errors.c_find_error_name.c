
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; int err; char* comment; } ;


 TYPE_1__* errors ;

const char *
find_error_name(int err, const char **comment)
{
 size_t u;

 for (u = 0; errors[u].name; u ++) {
  if (errors[u].err == err) {
   if (comment != ((void*)0)) {
    *comment = errors[u].comment;
   }
   return errors[u].name;
  }
 }
 return ((void*)0);
}
