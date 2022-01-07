
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_declspecs {scalar_t__ typespec_word; scalar_t__ storage_class; int thread_p; int inline_p; int complex_p; int unsigned_p; int signed_p; int short_p; int long_long_p; int long_p; int deprecated_p; int explicit_signed_p; int typedef_p; int decl_attr; int type; scalar_t__ restrict_p; scalar_t__ volatile_p; scalar_t__ const_p; } ;


 int TYPE_QUAL_CONST ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_QUAL_VOLATILE ;
 scalar_t__ csc_none ;
 scalar_t__ cts_none ;
 int gcc_assert (int) ;

int
quals_from_declspecs (const struct c_declspecs *specs)
{
  int quals = ((specs->const_p ? TYPE_QUAL_CONST : 0)
        | (specs->volatile_p ? TYPE_QUAL_VOLATILE : 0)
        | (specs->restrict_p ? TYPE_QUAL_RESTRICT : 0));
  gcc_assert (!specs->type
       && !specs->decl_attr
       && specs->typespec_word == cts_none
       && specs->storage_class == csc_none
       && !specs->typedef_p
       && !specs->explicit_signed_p
       && !specs->deprecated_p
       && !specs->long_p
       && !specs->long_long_p
       && !specs->short_p
       && !specs->signed_p
       && !specs->unsigned_p
       && !specs->complex_p
       && !specs->inline_p
       && !specs->thread_p);
  return quals;
}
