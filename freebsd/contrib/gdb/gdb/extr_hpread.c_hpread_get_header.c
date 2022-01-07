
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct objfile {char* name; int obfd; } ;
typedef int asection ;
struct TYPE_5__ {int version; int oi_entries; int aa_entries; int cd_entries; int files; int functions; int pg_entries; int time; int globals; int inlined; int sa_header; int bighdr; scalar_t__ pxdbed; int md_entries; int fd_entries; int pd_entries; } ;
typedef TYPE_1__* PXDB_header_ptr ;
typedef int PXDB_header ;
typedef TYPE_1__ DOC_info_PXDB_header ;


 int * bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,int *,TYPE_1__*,int ,int) ;
 int printf (char*,char*) ;
 int warning (char*,char*) ;

__attribute__((used)) static int
hpread_get_header (struct objfile *objfile, PXDB_header_ptr pxdb_header_p)
{
  asection *pinfo_section, *debug_section, *header_section;






  header_section = bfd_get_section_by_name (objfile->obfd, "$HEADER$");
  if (!header_section)
    {
      return 0;
    }





  debug_section = bfd_get_section_by_name (objfile->obfd, "$DEBUG$");
  pinfo_section = bfd_get_section_by_name (objfile->obfd, "$PINFO$");
  if (debug_section)
    {

      bfd_get_section_contents (objfile->obfd, header_section,
    pxdb_header_p, 0, sizeof (PXDB_header));

      if (!pxdb_header_p->pxdbed)
 {

   return 0;
 }
    }

  else if (pinfo_section)
    {


      DOC_info_PXDB_header doc_header;
      bfd_get_section_contents (objfile->obfd,
    header_section,
    &doc_header, 0,
    sizeof (DOC_info_PXDB_header));

      if (!doc_header.pxdbed)
 {

   warning ("File \"%s\" not processed by pxdb!", objfile->name);
   return 0;
 }


      pxdb_header_p->pd_entries = doc_header.pd_entries;
      pxdb_header_p->fd_entries = doc_header.fd_entries;
      pxdb_header_p->md_entries = doc_header.md_entries;
      pxdb_header_p->pxdbed = doc_header.pxdbed;
      pxdb_header_p->bighdr = doc_header.bighdr;
      pxdb_header_p->sa_header = doc_header.sa_header;
      pxdb_header_p->inlined = doc_header.inlined;
      pxdb_header_p->globals = doc_header.globals;
      pxdb_header_p->time = doc_header.time;
      pxdb_header_p->pg_entries = doc_header.pg_entries;
      pxdb_header_p->functions = doc_header.functions;
      pxdb_header_p->files = doc_header.files;
      pxdb_header_p->cd_entries = doc_header.cd_entries;
      pxdb_header_p->aa_entries = doc_header.aa_entries;
      pxdb_header_p->oi_entries = doc_header.oi_entries;
      pxdb_header_p->version = doc_header.version;
    }

  else
    {





      return 0;

    }

  return 1;
}
