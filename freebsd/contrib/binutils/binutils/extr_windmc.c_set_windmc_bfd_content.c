
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rc_uint_type ;
struct TYPE_2__ {int sec; int abfd; } ;


 int bfd_fatal (char*) ;
 int bfd_set_section_contents (int ,int ,void const*,int ,int ) ;
 TYPE_1__ mc_bfd ;

__attribute__((used)) static void
set_windmc_bfd_content (const void *data, rc_uint_type off, rc_uint_type length)
{
  if (! bfd_set_section_contents (mc_bfd.abfd, mc_bfd.sec, data, off, length))
    bfd_fatal ("bfd_set_section_contents");
}
