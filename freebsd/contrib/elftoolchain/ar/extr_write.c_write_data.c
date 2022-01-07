
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bsdar {int dummy; } ;
struct archive {int dummy; } ;
typedef scalar_t__ ssize_t ;


 int archive_error_string (struct archive*) ;
 scalar_t__ archive_write_data (struct archive*,void const*,size_t) ;
 int bsdar_errc (struct bsdar*,int ,char*,int ) ;

__attribute__((used)) static void
write_data(struct bsdar *bsdar, struct archive *a, const void *buf, size_t s)
{
 if (archive_write_data(a, buf, s) != (ssize_t)s)
  bsdar_errc(bsdar, 0, "%s", archive_error_string(a));
}
