
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ tree ;


 int IDENTIFIER_LENGTH (scalar_t__) ;
 int IDENTIFIER_POINTER (scalar_t__) ;
 scalar_t__ IDENTIFIER_TEMPLATE (scalar_t__) ;
 int MANGLE_TRACE_TREE (char*,scalar_t__) ;
 int write_identifier (int ) ;
 int write_unsigned_number (int ) ;

__attribute__((used)) static void
write_source_name (tree identifier)
{
  MANGLE_TRACE_TREE ("source-name", identifier);



  if (IDENTIFIER_TEMPLATE (identifier))
    identifier = IDENTIFIER_TEMPLATE (identifier);

  write_unsigned_number (IDENTIFIER_LENGTH (identifier));
  write_identifier (IDENTIFIER_POINTER (identifier));
}
