
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_cu {scalar_t__ language; } ;
struct die_info {int tag; int * type; struct die_info* parent; } ;





 char* TYPE_TAG_NAME (int *) ;
 char* determine_class_name (struct die_info*,struct dwarf2_cu*) ;
 scalar_t__ language_cplus ;
 int namespace_name (struct die_info*,int*,struct dwarf2_cu*) ;
 char const* processing_current_prefix ;
 char* typename_concat (char*,int ) ;
 int xfree (char*) ;
 char* xstrdup (char*) ;

__attribute__((used)) static char *
determine_prefix (struct die_info *die, struct dwarf2_cu *cu)
{
  struct die_info *parent;

  if (cu->language != language_cplus)
    return ((void*)0);

  parent = die->parent;

  if (parent == ((void*)0))
    {
      return xstrdup ("");
    }
  else
    {
      switch (parent->tag) {
      case 129:
 {


   if (parent->type != ((void*)0) && TYPE_TAG_NAME (parent->type) != ((void*)0))
     {
       return xstrdup (TYPE_TAG_NAME (parent->type));
     }
   else
     {
       int dummy;
       char *parent_prefix = determine_prefix (parent, cu);
       char *retval = typename_concat (parent_prefix,
           namespace_name (parent, &dummy,
             cu));
       xfree (parent_prefix);
       return retval;
     }
 }
 break;
      case 130:
      case 128:
 {
   if (parent->type != ((void*)0) && TYPE_TAG_NAME (parent->type) != ((void*)0))
     {
       return xstrdup (TYPE_TAG_NAME (parent->type));
     }
   else
     {
       const char *old_prefix = processing_current_prefix;
       char *new_prefix = determine_prefix (parent, cu);
       char *retval;

       processing_current_prefix = new_prefix;
       retval = determine_class_name (parent, cu);
       processing_current_prefix = old_prefix;

       xfree (new_prefix);
       return retval;
     }
 }
      default:
 return determine_prefix (parent, cu);
      }
    }
}
