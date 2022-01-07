
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct target_ops {int dummy; } ;
typedef enum target_object { ____Placeholder_target_object } target_object ;
typedef int ULONGEST ;
typedef int LONGEST ;


 int NATIVE_XFER_AUXV (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 int NATIVE_XFER_DIRTY (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 int NATIVE_XFER_UNWIND_TABLE (struct target_ops*,int,char const*,void*,void const*,int ,int) ;
 int NATIVE_XFER_WCOOKIE (struct target_ops*,int,char const*,void*,void const*,int ,int) ;





 int child_xfer_memory (int ,void*,int,int,int *,struct target_ops*) ;

__attribute__((used)) static LONGEST
child_xfer_partial (struct target_ops *ops, enum target_object object,
      const char *annex, void *readbuf,
      const void *writebuf, ULONGEST offset, LONGEST len)
{
  switch (object)
    {
    case 130:
      if (readbuf)
 return child_xfer_memory (offset, readbuf, len, 0 ,
      ((void*)0), ops);
      if (writebuf)
 return child_xfer_memory (offset, readbuf, len, 1 ,
      ((void*)0), ops);
      return -1;

    case 129:



      return (-1);


    case 132:



      return (-1);


    case 128:



      return (-1);


    case 131:



      return (-1);


    default:
      return -1;
    }
}
