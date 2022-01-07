
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 int MANGLE_TRACE_TREE (char*,int const) ;
 scalar_t__ STRING_CST ;
 scalar_t__ TREE_CODE (int const) ;
 int discriminator_for_local_entity (int const) ;
 int discriminator_for_string_literal (int const,int const) ;
 int write_char (char) ;
 int write_discriminator (int ) ;
 int write_encoding (int const) ;
 int write_name (int const,int) ;

__attribute__((used)) static void
write_local_name (const tree function, const tree local_entity,
    const tree entity)
{
  MANGLE_TRACE_TREE ("local-name", entity);

  write_char ('Z');
  write_encoding (function);
  write_char ('E');
  if (TREE_CODE (entity) == STRING_CST)
    {
      write_char ('s');
      write_discriminator (discriminator_for_string_literal (function,
            entity));
    }
  else
    {



      write_name (entity, 1);
      write_discriminator (discriminator_for_local_entity (local_entity));
    }
}
