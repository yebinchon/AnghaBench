
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd ;
struct TYPE_6__ {scalar_t__ pe; } ;
struct TYPE_4__ {int SizeOfHeapReserve; int SizeOfStackReserve; int SizeOfHeapCommit; int SizeOfStackCommit; } ;
struct TYPE_5__ {TYPE_1__ pe_opthdr; } ;


 TYPE_3__* coff_data (int *) ;
 TYPE_2__* pe_data (int *) ;
 int strtoul (char*,char**,int ) ;

__attribute__((used)) static char *
dores_com (char *ptr, bfd *output_bfd, int heap)
{
  if (coff_data(output_bfd)->pe)
    {
      int val = strtoul (ptr, &ptr, 0);

      if (heap)
 pe_data(output_bfd)->pe_opthdr.SizeOfHeapReserve = val;
      else
 pe_data(output_bfd)->pe_opthdr.SizeOfStackReserve = val;

      if (ptr[0] == ',')
 {
   val = strtoul (ptr+1, &ptr, 0);
   if (heap)
     pe_data(output_bfd)->pe_opthdr.SizeOfHeapCommit = val;
   else
     pe_data(output_bfd)->pe_opthdr.SizeOfStackCommit = val;
 }
    }
  return ptr;
}
