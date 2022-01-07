
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_file_info {int filename; } ;


 int _ (char*) ;
 int fatal (int ,int ,char const*) ;

__attribute__((used)) static void
overrun (const struct coff_file_info *finfo, const char *msg)
{
  fatal (_("%s: %s: address out of bounds"), finfo->filename, msg);
}
