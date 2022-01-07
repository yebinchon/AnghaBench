
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpha_reloc_tag {long sequence; int string; int segment; } ;


 int ALPHA_RELOC_DIGITS ;
 int alpha_literal_hash ;
 int as_fatal (char const*) ;
 scalar_t__ hash_find (int ,char*) ;
 char* hash_insert (int ,int ,void*) ;
 int now_seg ;
 int sprintf (char*,char*,long) ;
 int strcpy (int ,char*) ;
 size_t strlen (char*) ;
 struct alpha_reloc_tag* xcalloc (int,int) ;

__attribute__((used)) static struct alpha_reloc_tag *
get_alpha_reloc_tag (long sequence)
{
  char buffer[ALPHA_RELOC_DIGITS];
  struct alpha_reloc_tag *info;

  sprintf (buffer, "!%ld", sequence);

  info = (struct alpha_reloc_tag *) hash_find (alpha_literal_hash, buffer);
  if (! info)
    {
      size_t len = strlen (buffer);
      const char *errmsg;

      info = xcalloc (sizeof (struct alpha_reloc_tag) + len, 1);

      info->segment = now_seg;
      info->sequence = sequence;
      strcpy (info->string, buffer);
      errmsg = hash_insert (alpha_literal_hash, info->string, (void *) info);
      if (errmsg)
 as_fatal (errmsg);
    }

  return info;
}
