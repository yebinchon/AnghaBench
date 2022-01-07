
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BFD_VERSION_STRING ;
 int _ (char*) ;
 int _bfd_error_handler (int ,int ,char const*,int) ;
 int stub1 (int ,int ,char const*,int) ;

void
bfd_assert (const char *file, int line)
{
  (*_bfd_error_handler) (_("BFD %s assertion fail %s:%d"),
    BFD_VERSION_STRING, file, line);
}
