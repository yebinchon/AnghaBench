
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct coff_link_hash_entry {int dummy; } ;
struct bfd_link_hash_table {int dummy; } ;
struct TYPE_2__ {struct bfd_link_hash_table root; } ;
struct coff_arm_link_hash_table {TYPE_1__ root; int * bfd_of_glue_owner; scalar_t__ arm_glue_size; scalar_t__ thumb_glue_size; } ;
typedef int bfd_size_type ;
typedef int bfd ;


 int _bfd_coff_link_hash_newfunc ;
 int _bfd_coff_link_hash_table_init (TYPE_1__*,int *,int ,int) ;
 struct coff_arm_link_hash_table* bfd_malloc (int) ;
 int free (struct coff_arm_link_hash_table*) ;

__attribute__((used)) static struct bfd_link_hash_table *
coff_arm_link_hash_table_create (bfd * abfd)
{
  struct coff_arm_link_hash_table * ret;
  bfd_size_type amt = sizeof (struct coff_arm_link_hash_table);

  ret = bfd_malloc (amt);
  if (ret == ((void*)0))
    return ((void*)0);

  if (!_bfd_coff_link_hash_table_init (&ret->root,
           abfd,
           _bfd_coff_link_hash_newfunc,
           sizeof (struct coff_link_hash_entry)))
    {
      free (ret);
      return ((void*)0);
    }

  ret->thumb_glue_size = 0;
  ret->arm_glue_size = 0;
  ret->bfd_of_glue_owner = ((void*)0);

  return & ret->root.root;
}
