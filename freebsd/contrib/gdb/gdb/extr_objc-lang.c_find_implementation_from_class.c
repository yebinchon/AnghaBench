
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objc_method {scalar_t__ name; scalar_t__ imp; } ;
struct objc_class {scalar_t__ super_class; scalar_t__ methods; } ;
typedef scalar_t__ CORE_ADDR ;


 int fprintf (int ,char*,scalar_t__,scalar_t__) ;
 scalar_t__ read_memory_unsigned_integer (scalar_t__,int) ;
 int read_objc_class (scalar_t__,struct objc_class*) ;
 int read_objc_methlist_method (scalar_t__,unsigned long,struct objc_method*) ;
 unsigned long read_objc_methlist_nmethods (scalar_t__) ;
 int stderr ;

__attribute__((used)) static CORE_ADDR
find_implementation_from_class (CORE_ADDR class, CORE_ADDR sel)
{
  CORE_ADDR subclass = class;

  while (subclass != 0)
    {

      struct objc_class class_str;
      unsigned mlistnum = 0;

      read_objc_class (subclass, &class_str);

      for (;;)
 {
   CORE_ADDR mlist;
   unsigned long nmethods;
   unsigned long i;

   mlist = read_memory_unsigned_integer (class_str.methods +
      (4 * mlistnum), 4);
   if (mlist == 0)
     break;

   nmethods = read_objc_methlist_nmethods (mlist);

   for (i = 0; i < nmethods; i++)
     {
       struct objc_method meth_str;
       read_objc_methlist_method (mlist, i, &meth_str);







       if (meth_str.name == sel)


  return meth_str.imp;
     }
   mlistnum++;
 }
      subclass = class_str.super_class;
    }

  return 0;
}
