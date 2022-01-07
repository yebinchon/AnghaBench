
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int has_armap; int flags; struct TYPE_11__* archive_next; } ;
typedef TYPE_1__ bfd ;


 int BFD_TRADITIONAL_FORMAT ;
 scalar_t__ ar_truncate ;
 int bfd_archive ;
 int bfd_close (TYPE_1__*) ;
 int bfd_fatal (char*) ;
 int bfd_get_filename (TYPE_1__*) ;
 int bfd_get_target (TYPE_1__*) ;
 TYPE_1__* bfd_openw (char*,int ) ;
 int bfd_set_archive_head (TYPE_1__*,TYPE_1__*) ;
 int bfd_set_format (TYPE_1__*,int ) ;
 char* make_tempname (char*) ;
 TYPE_1__* output_bfd ;
 char* output_filename ;
 scalar_t__ smart_rename (char*,char*,int ) ;
 int strcpy (char*,int ) ;
 scalar_t__ strlen (int ) ;
 scalar_t__ write_armap ;
 int xexit (int) ;
 char* xmalloc (scalar_t__) ;

__attribute__((used)) static void
write_archive (bfd *iarch)
{
  bfd *obfd;
  char *old_name, *new_name;
  bfd *contents_head = iarch->archive_next;

  old_name = xmalloc (strlen (bfd_get_filename (iarch)) + 1);
  strcpy (old_name, bfd_get_filename (iarch));
  new_name = make_tempname (old_name);

  if (new_name == ((void*)0))
    bfd_fatal ("could not create temporary file whilst writing archive");

  output_filename = new_name;

  obfd = bfd_openw (new_name, bfd_get_target (iarch));

  if (obfd == ((void*)0))
    bfd_fatal (old_name);

  output_bfd = obfd;

  bfd_set_format (obfd, bfd_archive);



  obfd->has_armap = write_armap >= 0;

  if (ar_truncate)
    {


      obfd->flags |= BFD_TRADITIONAL_FORMAT;
    }

  if (!bfd_set_archive_head (obfd, contents_head))
    bfd_fatal (old_name);

  if (!bfd_close (obfd))
    bfd_fatal (old_name);

  output_bfd = ((void*)0);
  output_filename = ((void*)0);


  bfd_close (iarch);

  if (smart_rename (new_name, old_name, 0) != 0)
    xexit (1);
}
