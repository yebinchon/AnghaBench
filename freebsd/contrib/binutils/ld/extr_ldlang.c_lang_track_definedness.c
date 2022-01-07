
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 int TRUE ;
 int _ (char*) ;
 int * bfd_hash_lookup (int *,char const*,int ,int ) ;
 int einfo (int ,char const*) ;
 int lang_definedness_table ;

void
lang_track_definedness (const char *name)
{
  if (bfd_hash_lookup (&lang_definedness_table, name, TRUE, FALSE) == ((void*)0))
    einfo (_("%P%F: bfd_hash_lookup failed creating symbol %s\n"), name);
}
