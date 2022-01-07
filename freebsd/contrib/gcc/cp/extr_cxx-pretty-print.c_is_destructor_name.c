
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 scalar_t__ base_dtor_identifier ;
 scalar_t__ complete_dtor_identifier ;
 scalar_t__ deleting_dtor_identifier ;

__attribute__((used)) static inline bool
is_destructor_name (tree name)
{
  return name == complete_dtor_identifier
    || name == base_dtor_identifier
    || name == deleting_dtor_identifier;
}
