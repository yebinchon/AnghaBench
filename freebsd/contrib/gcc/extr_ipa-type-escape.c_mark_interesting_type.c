
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum escape_t { ____Placeholder_escape_t } escape_t ;


 int EXPOSED_PARAMETER ;
 int FULL_ESCAPE ;
 scalar_t__ POINTER_TYPE_P (int ) ;
 scalar_t__ ipa_type_escape_star_count_of_interesting_type (int ) ;
 int mark_type (int ,int) ;

__attribute__((used)) static void
mark_interesting_type (tree type, enum escape_t escape_status)
{
  if (!type) return;
  if (ipa_type_escape_star_count_of_interesting_type (type) >= 0)
    {
      if ((escape_status == EXPOSED_PARAMETER)
   && POINTER_TYPE_P (type))



 mark_type (type, FULL_ESCAPE);
      else
 mark_type (type, escape_status);
    }
}
