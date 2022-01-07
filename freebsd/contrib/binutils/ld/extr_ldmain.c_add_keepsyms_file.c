
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct bfd_hash_table {int dummy; } ;
struct bfd_hash_entry {int dummy; } ;
struct TYPE_2__ {scalar_t__ strip; void* keep_hash; } ;
typedef int FILE ;


 int EOF ;
 scalar_t__ ISSPACE (int) ;
 int TRUE ;
 int _ (char*) ;
 int bfd_error_system_call ;
 int * bfd_hash_lookup (void*,char*,int ,int ) ;
 int bfd_hash_newfunc ;
 int bfd_hash_table_init (void*,int ,int) ;
 int bfd_set_error (int ) ;
 int einfo (char*,...) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int getc (int *) ;
 TYPE_1__ link_info ;
 scalar_t__ strip_none ;
 scalar_t__ strip_some ;
 void* xmalloc (size_t) ;
 char* xrealloc (char*,size_t) ;

void
add_keepsyms_file (const char *filename)
{
  FILE *file;
  char *buf;
  size_t bufsize;
  int c;

  if (link_info.strip == strip_some)
    einfo (_("%X%P: error: duplicate retain-symbols-file\n"));

  file = fopen (filename, "r");
  if (file == ((void*)0))
    {
      bfd_set_error (bfd_error_system_call);
      einfo ("%X%P: %s: %E\n", filename);
      return;
    }

  link_info.keep_hash = xmalloc (sizeof (struct bfd_hash_table));
  if (!bfd_hash_table_init (link_info.keep_hash, bfd_hash_newfunc,
       sizeof (struct bfd_hash_entry)))
    einfo (_("%P%F: bfd_hash_table_init failed: %E\n"));

  bufsize = 100;
  buf = xmalloc (bufsize);

  c = getc (file);
  while (c != EOF)
    {
      while (ISSPACE (c))
 c = getc (file);

      if (c != EOF)
 {
   size_t len = 0;

   while (! ISSPACE (c) && c != EOF)
     {
       buf[len] = c;
       ++len;
       if (len >= bufsize)
  {
    bufsize *= 2;
    buf = xrealloc (buf, bufsize);
  }
       c = getc (file);
     }

   buf[len] = '\0';

   if (bfd_hash_lookup (link_info.keep_hash, buf, TRUE, TRUE) == ((void*)0))
     einfo (_("%P%F: bfd_hash_lookup for insertion failed: %E\n"));
 }
    }

  if (link_info.strip != strip_none)
    einfo (_("%P: `-retain-symbols-file' overrides `-s' and `-S'\n"));

  free (buf);
  link_info.strip = strip_some;
}
