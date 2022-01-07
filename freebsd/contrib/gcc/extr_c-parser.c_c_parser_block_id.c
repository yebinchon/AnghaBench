
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * tree ;
struct c_declspecs {int type_seen_p; int declspecs_seen_p; } ;
struct c_declarator {int dummy; } ;
typedef int c_parser ;


 int C_DTR_BLOCK ;
 struct c_declspecs* build_null_declspecs () ;
 struct c_declarator* c_parser_declarator (int *,int ,int ,int*) ;
 int c_parser_declspecs (int *,struct c_declspecs*,int,int,int) ;
 int c_parser_error (int *,char*) ;
 int finish_declspecs (struct c_declspecs*) ;
 int * grokblockdecl (struct c_declspecs*,struct c_declarator*) ;
 int pending_xref_error () ;

__attribute__((used)) static tree
c_parser_block_id (c_parser* parser)
{
  struct c_declspecs *specs = build_null_declspecs ();
  struct c_declarator *declarator;
  bool dummy = 0;

  c_parser_declspecs (parser, specs, 0, 1, 1);
  if (!specs->declspecs_seen_p)
    {
      c_parser_error (parser, "expected specifier-qualifier-list");
      return ((void*)0);
    }
  pending_xref_error ();
  finish_declspecs (specs);
  declarator = c_parser_declarator (parser, specs->type_seen_p,
        C_DTR_BLOCK, &dummy);
  if (declarator == ((void*)0))
    return ((void*)0);

  return grokblockdecl (specs, declarator);
}
