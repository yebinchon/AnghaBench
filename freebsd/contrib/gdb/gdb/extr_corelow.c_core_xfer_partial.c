
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int (* to_xfer_memory ) (int,void*,int,int,int *,struct target_ops*) ;TYPE_1__* beneath; } ;
struct bfd_section {int dummy; } ;
typedef int file_ptr ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int bfd_size_type ;
typedef int ULONGEST ;
struct TYPE_2__ {int (* to_xfer_partial ) (TYPE_1__*,int,char const*,void*,void const*,int,int) ;} ;
typedef int LONGEST ;





 struct bfd_section* bfd_get_section_by_name (int ,char*) ;
 int bfd_get_section_contents (int ,struct bfd_section*,void*,int ,int) ;
 int bfd_section_size (int ,struct bfd_section*) ;
 int core_bfd ;
 int stub1 (int,void*,int,int,int *,struct target_ops*) ;
 int stub2 (int,void const*,int,int,int *,struct target_ops*) ;
 int stub3 (int,void*,int,int,int *,struct target_ops*) ;
 int stub4 (int,void const*,int,int,int *,struct target_ops*) ;
 int stub5 (TYPE_1__*,int,char const*,void*,void const*,int,int) ;
 int warning (char*) ;

__attribute__((used)) static LONGEST
core_xfer_partial (struct target_ops *ops, enum target_object object,
     const char *annex, void *readbuf,
     const void *writebuf, ULONGEST offset, LONGEST len)
{
  switch (object)
    {
    case 128:
      if (readbuf)
 return (*ops->to_xfer_memory) (offset, readbuf, len, 0 ,
           ((void*)0), ops);
      if (writebuf)
 return (*ops->to_xfer_memory) (offset, writebuf, len, 1 ,
           ((void*)0), ops);
      return -1;

    case 130:
      if (readbuf)
 {



   struct bfd_section *section;
   bfd_size_type size;
   char *contents;

   section = bfd_get_section_by_name (core_bfd, ".auxv");
   if (section == ((void*)0))
     return -1;

   size = bfd_section_size (core_bfd, section);
   if (offset >= size)
     return 0;
   size -= offset;
   if (size > len)
     size = len;
   if (size > 0 &&
       ! bfd_get_section_contents (core_bfd, section, readbuf,
       (file_ptr) offset, size))
     {
       warning ("Couldn't read NT_AUXV note in core file.");
       return -1;
     }

   return size;
 }
      return -1;

    case 129:
      {
 ULONGEST addr;
 addr = *(ULONGEST*)annex + offset;
 if (readbuf)
   return (*ops->to_xfer_memory) (addr, readbuf, len, 0 ,
      ((void*)0), ops);
 if (writebuf)
   return (*ops->to_xfer_memory) (addr, writebuf, len, 1 ,
      ((void*)0), ops);
 return -1;
      }

    default:
      if (ops->beneath != ((void*)0))
 return ops->beneath->to_xfer_partial (ops->beneath, object, annex,
           readbuf, writebuf, offset, len);
      return -1;
    }
}
