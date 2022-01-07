
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* message; } ;
typedef TYPE_1__ list_info_type ;


 TYPE_1__* listing_tail ;
 int strcat (char*,char const*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;
 scalar_t__ xmalloc (unsigned int) ;

__attribute__((used)) static void
listing_message (const char *name, const char *message)
{
  if (listing_tail != (list_info_type *) ((void*)0))
    {
      unsigned int l = strlen (name) + strlen (message) + 1;
      char *n = (char *) xmalloc (l);
      strcpy (n, name);
      strcat (n, message);
      listing_tail->message = n;
    }
}
