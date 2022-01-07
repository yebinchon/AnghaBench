
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_4__ {TYPE_1__* hdr; } ;
struct TYPE_3__ {int c_signo; } ;


 TYPE_2__* core_hdr (int *) ;

__attribute__((used)) static int
sunos4_core_file_failing_signal (bfd *abfd)
{
  return core_hdr (abfd)->hdr->c_signo;
}
