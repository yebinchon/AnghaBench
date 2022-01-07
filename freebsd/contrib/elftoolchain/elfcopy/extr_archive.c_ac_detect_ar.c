
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive_entry {int dummy; } ;
struct archive {int dummy; } ;


 int ARCHIVE_OK ;
 int archive_read_close (struct archive*) ;
 int archive_read_free (struct archive*) ;
 struct archive* archive_read_new () ;
 int archive_read_next_header (struct archive*,struct archive_entry**) ;
 int archive_read_open_fd (struct archive*,int,int) ;
 int archive_read_support_format_ar (struct archive*) ;

int
ac_detect_ar(int ifd)
{
 struct archive *a;
 struct archive_entry *entry;
 int r;

 r = -1;
 if ((a = archive_read_new()) == ((void*)0))
  return (0);
 archive_read_support_format_ar(a);
 if (archive_read_open_fd(a, ifd, 10240) == ARCHIVE_OK)
  r = archive_read_next_header(a, &entry);
 archive_read_close(a);
 archive_read_free(a);

 return (r == ARCHIVE_OK);
}
