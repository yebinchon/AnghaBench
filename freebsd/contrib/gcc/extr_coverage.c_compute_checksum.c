
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int line; int file; } ;
typedef TYPE_1__ expanded_location ;


 int DECL_ASSEMBLER_NAME (int ) ;
 int DECL_SOURCE_LOCATION (int ) ;
 int IDENTIFIER_POINTER (int ) ;
 unsigned int coverage_checksum_string (unsigned int,int ) ;
 int current_function_decl ;
 TYPE_1__ expand_location (int ) ;

__attribute__((used)) static unsigned
compute_checksum (void)
{
  expanded_location xloc
    = expand_location (DECL_SOURCE_LOCATION (current_function_decl));
  unsigned chksum = xloc.line;

  chksum = coverage_checksum_string (chksum, xloc.file);
  chksum = coverage_checksum_string
    (chksum, IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (current_function_decl)));

  return chksum;
}
