
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int BITS_PER_UNIT ;
 int CLASSTYPE_AS_BASE (int ) ;
 int TFF_PLAIN_IDENTIFIER ;
 int TYPE_ALIGN (int ) ;
 int TYPE_BINFO (int ) ;
 int TYPE_SIZE (int ) ;
 int dump_class_hierarchy_r (int *,int,int ,int ,int ) ;
 int fprintf (int *,char*,...) ;
 int tree_low_cst (int ,int ) ;
 char* type_as_string (int ,int ) ;

__attribute__((used)) static void
dump_class_hierarchy_1 (FILE *stream, int flags, tree t)
{
  fprintf (stream, "Class %s\n", type_as_string (t, TFF_PLAIN_IDENTIFIER));
  fprintf (stream, "   size=%lu align=%lu\n",
    (unsigned long)(tree_low_cst (TYPE_SIZE (t), 0) / BITS_PER_UNIT),
    (unsigned long)(TYPE_ALIGN (t) / BITS_PER_UNIT));
  fprintf (stream, "   base size=%lu base align=%lu\n",
    (unsigned long)(tree_low_cst (TYPE_SIZE (CLASSTYPE_AS_BASE (t)), 0)
      / BITS_PER_UNIT),
    (unsigned long)(TYPE_ALIGN (CLASSTYPE_AS_BASE (t))
      / BITS_PER_UNIT));
  dump_class_hierarchy_r (stream, flags, TYPE_BINFO (t), TYPE_BINFO (t), 0);
  fprintf (stream, "\n");
}
