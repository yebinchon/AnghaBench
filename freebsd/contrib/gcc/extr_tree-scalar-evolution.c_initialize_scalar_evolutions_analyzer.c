
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TREE_TYPE ;


 scalar_t__ NULL_TREE ;
 int SCEV_KNOWN ;
 int SCEV_NOT_KNOWN ;
 scalar_t__ chrec_dont_know ;
 int chrec_known ;
 scalar_t__ chrec_not_analyzed_yet ;
 void* make_node (int ) ;
 int void_type_node ;

__attribute__((used)) static void
initialize_scalar_evolutions_analyzer (void)
{

  if (chrec_dont_know == NULL_TREE)
    {
      chrec_not_analyzed_yet = NULL_TREE;
      chrec_dont_know = make_node (SCEV_NOT_KNOWN);
      chrec_known = make_node (SCEV_KNOWN);
      TREE_TYPE (chrec_dont_know) = void_type_node;
      TREE_TYPE (chrec_known) = void_type_node;
    }
}
