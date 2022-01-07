
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ieee_info {int dummy; } ;
typedef int bfd_byte ;


 int _ (char*) ;
 int ieee_error (struct ieee_info*,int const*,int ) ;

__attribute__((used)) static void
ieee_eof (struct ieee_info *info)
{
  ieee_error (info, (const bfd_byte *) ((void*)0),
       _("unexpected end of debugging information"));
}
