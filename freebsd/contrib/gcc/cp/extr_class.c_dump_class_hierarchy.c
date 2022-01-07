
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int TDI_class ;
 int * dump_begin (int ,int*) ;
 int dump_class_hierarchy_1 (int *,int,int ) ;
 int dump_end (int ,int *) ;

__attribute__((used)) static void
dump_class_hierarchy (tree t)
{
  int flags;
  FILE *stream = dump_begin (TDI_class, &flags);

  if (stream)
    {
      dump_class_hierarchy_1 (stream, flags, t);
      dump_end (TDI_class, stream);
    }
}
