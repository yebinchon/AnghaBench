
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct elf_backend_data {TYPE_1__* s; } ;
struct bfd_link_info {scalar_t__ optimize; } ;
typedef int bfd_size_type ;
typedef int bfd ;
struct TYPE_4__ {size_t dynsymcount; int * dynobj; } ;
struct TYPE_3__ {int sizeof_hash_entry; } ;
typedef unsigned long BFD_HOST_U_64_BIT ;


 unsigned long BFD_TARGET_PAGESIZE ;
 unsigned long* bfd_malloc (int) ;
 unsigned long* elf_buckets ;
 TYPE_2__* elf_hash_table (struct bfd_link_info*) ;
 int free (unsigned long*) ;
 struct elf_backend_data* get_elf_backend_data (int *) ;
 int memset (unsigned long*,char,unsigned long) ;

__attribute__((used)) static size_t
compute_bucket_count (struct bfd_link_info *info, unsigned long int *hashcodes,
        unsigned long int nsyms, int gnu_hash)
{
  size_t dynsymcount = elf_hash_table (info)->dynsymcount;
  size_t best_size = 0;
  unsigned long int i;
  bfd_size_type amt;
    {



      for (i = 0; elf_buckets[i] != 0; i++)
 {
   best_size = elf_buckets[i];
   if (nsyms < elf_buckets[i + 1])
     break;
 }
      if (gnu_hash && best_size < 2)
 best_size = 2;
    }

  return best_size;
}
