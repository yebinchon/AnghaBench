
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct target_ops {int (* to_xfer_memory ) (int ,void*,int,int,int *,struct target_ops*) ;TYPE_1__* beneath; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
struct TYPE_2__ {int (* to_xfer_partial ) (TYPE_1__*,int,char const*,void*,void const*,int ,int) ;} ;
typedef int LONGEST ;




 int procfs_xfer_auxv (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 int stub1 (int ,void*,int,int,int *,struct target_ops*) ;
 int stub2 (int ,void*,int,int,int *,struct target_ops*) ;
 int stub3 (TYPE_1__*,int,char const*,void*,void const*,int ,int) ;

__attribute__((used)) static LONGEST
procfs_xfer_partial (struct target_ops *ops, enum target_object object,
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
 return (*ops->to_xfer_memory) (offset, readbuf, len, 1 ,
           ((void*)0), ops);
      return -1;







    default:
      if (ops->beneath != ((void*)0))
 return ops->beneath->to_xfer_partial (ops->beneath, object, annex,
           readbuf, writebuf, offset, len);
      return -1;
    }
}
