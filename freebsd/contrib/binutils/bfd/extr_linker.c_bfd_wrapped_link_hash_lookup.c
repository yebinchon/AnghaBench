
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfd_link_info {char const wrap_char; int hash; int * wrap_hash; } ;
struct bfd_link_hash_entry {int dummy; } ;
typedef scalar_t__ bfd_size_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 scalar_t__ CONST_STRNEQ (char const*,int ) ;
 int FALSE ;
 int REAL ;
 int TRUE ;
 char const* WRAP ;
 char const bfd_get_symbol_leading_char (int *) ;
 int * bfd_hash_lookup (int *,char const*,int ,int ) ;
 struct bfd_link_hash_entry* bfd_link_hash_lookup (int ,char const*,int ,int ,int ) ;
 char* bfd_malloc (scalar_t__) ;
 int free (char*) ;
 int strcat (char*,char const*) ;
 scalar_t__ strlen (char const*) ;

struct bfd_link_hash_entry *
bfd_wrapped_link_hash_lookup (bfd *abfd,
         struct bfd_link_info *info,
         const char *string,
         bfd_boolean create,
         bfd_boolean copy,
         bfd_boolean follow)
{
  bfd_size_type amt;

  if (info->wrap_hash != ((void*)0))
    {
      const char *l;
      char prefix = '\0';

      l = string;
      if (*l == bfd_get_symbol_leading_char (abfd) || *l == info->wrap_char)
 {
   prefix = *l;
   ++l;
 }




      if (bfd_hash_lookup (info->wrap_hash, l, FALSE, FALSE) != ((void*)0))
 {
   char *n;
   struct bfd_link_hash_entry *h;




   amt = strlen (l) + sizeof "__wrap_" + 1;
   n = bfd_malloc (amt);
   if (n == ((void*)0))
     return ((void*)0);

   n[0] = prefix;
   n[1] = '\0';
   strcat (n, "__wrap_");
   strcat (n, l);
   h = bfd_link_hash_lookup (info->hash, n, create, TRUE, follow);
   free (n);
   return h;
 }






      if (*l == '_'
   && CONST_STRNEQ (l, "__real_")
   && bfd_hash_lookup (info->wrap_hash, l + sizeof "__real_" - 1,
         FALSE, FALSE) != ((void*)0))
 {
   char *n;
   struct bfd_link_hash_entry *h;





   amt = strlen (l + sizeof "__real_" - 1) + 2;
   n = bfd_malloc (amt);
   if (n == ((void*)0))
     return ((void*)0);

   n[0] = prefix;
   n[1] = '\0';
   strcat (n, l + sizeof "__real_" - 1);
   h = bfd_link_hash_lookup (info->hash, n, create, TRUE, follow);
   free (n);
   return h;
 }


    }

  return bfd_link_hash_lookup (info->hash, string, create, copy, follow);
}
