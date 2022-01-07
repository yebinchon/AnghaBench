
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef enum tree_code { ____Placeholder_tree_code } tree_code ;
struct TYPE_2__ {scalar_t__ identifier; } ;


 char const* IDENTIFIER_POINTER (scalar_t__) ;
 TYPE_1__* assignment_operator_name_info ;

__attribute__((used)) static const char *
assop_to_string (enum tree_code p)
{
  tree id = assignment_operator_name_info[(int) p].identifier;
  return id ? IDENTIFIER_POINTER (id) : "{unknown}";
}
