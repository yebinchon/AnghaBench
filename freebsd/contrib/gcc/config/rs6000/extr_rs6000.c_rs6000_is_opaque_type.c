
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ opaque_V2SF_type_node ;
 scalar_t__ opaque_V2SI_type_node ;
 scalar_t__ opaque_V4SI_type_node ;
 scalar_t__ opaque_p_V2SI_type_node ;

__attribute__((used)) static bool
rs6000_is_opaque_type (tree type)
{
  return (type == opaque_V2SI_type_node
       || type == opaque_V2SF_type_node
       || type == opaque_p_V2SI_type_node
       || type == opaque_V4SI_type_node);
}
