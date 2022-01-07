
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stab_handle {int dummy; } ;
typedef scalar_t__ debug_type ;
typedef int bfd_vma ;
typedef int bfd_signed_vma ;
typedef int bfd_boolean ;


 scalar_t__ CONST_STRNEQ (char const*,int ) ;
 scalar_t__ DEBUG_TYPE_NULL ;
 int FALSE ;
 int LLHIGH ;
 int LLLOW ;
 int TRUE ;
 int ULLHIGH ;
 int _ (char*) ;
 int bad_stab (char const*) ;
 scalar_t__ debug_make_complex_type (void*,int) ;
 scalar_t__ debug_make_float_type (void*,int) ;
 scalar_t__ debug_make_int_type (void*,int,int ) ;
 scalar_t__ debug_make_range_type (void*,scalar_t__,int,int) ;
 scalar_t__ debug_make_void_type (void*) ;
 int parse_number (char const**,int*) ;
 scalar_t__ parse_stab_type (void*,struct stab_handle*,char const*,char const**,scalar_t__**) ;
 int parse_stab_type_number (char const**,int*) ;
 scalar_t__ stab_find_type (void*,struct stab_handle*,int*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int warn_stab (char const*,int ) ;

__attribute__((used)) static debug_type
parse_stab_range_type (void *dhandle, struct stab_handle *info, const char *typename, const char **pp, const int *typenums)
{
  const char *orig;
  int rangenums[2];
  bfd_boolean self_subrange;
  debug_type index_type;
  const char *s2, *s3;
  bfd_signed_vma n2, n3;
  bfd_boolean ov2, ov3;

  orig = *pp;

  index_type = DEBUG_TYPE_NULL;



  if (! parse_stab_type_number (pp, rangenums))
    return DEBUG_TYPE_NULL;

  self_subrange = (rangenums[0] == typenums[0]
     && rangenums[1] == typenums[1]);

  if (**pp == '=')
    {
      *pp = orig;
      index_type = parse_stab_type (dhandle, info, (const char *) ((void*)0),
        pp, (debug_type **) ((void*)0));
      if (index_type == DEBUG_TYPE_NULL)
 return DEBUG_TYPE_NULL;
    }

  if (**pp == ';')
    ++*pp;



  s2 = *pp;
  n2 = parse_number (pp, &ov2);
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  s3 = *pp;
  n3 = parse_number (pp, &ov3);
  if (**pp != ';')
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }
  ++*pp;

  if (ov2 || ov3)
    {





      if (index_type == DEBUG_TYPE_NULL)
 {
   if (CONST_STRNEQ (s2, "01000000000000000000000;")
       && CONST_STRNEQ (s3, "0777777777777777777777;"))
     return debug_make_int_type (dhandle, 8, FALSE);
   if (! ov2
       && n2 == 0
       && CONST_STRNEQ (s3, "01777777777777777777777;"))
     return debug_make_int_type (dhandle, 8, TRUE);
 }

      warn_stab (orig, _("numeric overflow"));
    }

  if (index_type == DEBUG_TYPE_NULL)
    {


      if (self_subrange && n2 == 0 && n3 == 0)
 return debug_make_void_type (dhandle);



      if (self_subrange && n3 == 0 && n2 > 0)
 return debug_make_complex_type (dhandle, n2);



      if (n3 == 0 && n2 > 0)
 return debug_make_float_type (dhandle, n2);


      if (n2 == 0 && n3 == -1)
 {




   if (typename != ((void*)0))
     {
       if (strcmp (typename, "long long int") == 0)
  return debug_make_int_type (dhandle, 8, FALSE);
       else if (strcmp (typename, "long long unsigned int") == 0)
  return debug_make_int_type (dhandle, 8, TRUE);
     }

   return debug_make_int_type (dhandle, 4, TRUE);
 }


      if (self_subrange && n2 == 0 && n3 == 127)
 return debug_make_int_type (dhandle, 1, FALSE);



      if (n2 == 0)
 {
   if (n3 < 0)
     return debug_make_int_type (dhandle, - n3, TRUE);
   else if (n3 == 0xff)
     return debug_make_int_type (dhandle, 1, TRUE);
   else if (n3 == 0xffff)
     return debug_make_int_type (dhandle, 2, TRUE);
   else if (n3 == (bfd_signed_vma) 0xffffffff)
     return debug_make_int_type (dhandle, 4, TRUE);




 }
      else if (n3 == 0
        && n2 < 0
        && (self_subrange || n2 == -8))
 return debug_make_int_type (dhandle, - n2, TRUE);
      else if (n2 == - n3 - 1 || n2 == n3 + 1)
 {
   if (n3 == 0x7f)
     return debug_make_int_type (dhandle, 1, FALSE);
   else if (n3 == 0x7fff)
     return debug_make_int_type (dhandle, 2, FALSE);
   else if (n3 == 0x7fffffff)
     return debug_make_int_type (dhandle, 4, FALSE);




 }
    }




  if (self_subrange)
    {
      bad_stab (orig);
      return DEBUG_TYPE_NULL;
    }

  index_type = stab_find_type (dhandle, info, rangenums);
  if (index_type == DEBUG_TYPE_NULL)
    {


      warn_stab (orig, _("missing index type"));
      index_type = debug_make_int_type (dhandle, 4, FALSE);
    }

  return debug_make_range_type (dhandle, index_type, n2, n3);
}
