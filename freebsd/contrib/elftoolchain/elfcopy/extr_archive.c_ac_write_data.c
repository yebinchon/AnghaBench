
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int EXIT_FAILURE ;
 int archive_error_string (struct archive*) ;
 scalar_t__ archive_write_data (struct archive*,void const*,size_t) ;
 int errx (int ,char*,int ) ;

__attribute__((used)) static void
ac_write_data(struct archive *a, const void *buf, size_t s)
{
 if (archive_write_data(a, buf, s) != (ssize_t)s)
  errx(EXIT_FAILURE, "%s", archive_error_string(a));
}
