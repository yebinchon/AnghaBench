
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tree ;
struct TYPE_4__ {scalar_t__ line; int file; } ;
typedef TYPE_1__ location_t ;


 scalar_t__ DECL_INITIAL (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ NULL_TREE ;
 int OPT_Wunused_label ;
 int SET_IDENTIFIER_LABEL_VALUE (int ,int ) ;
 int TREE_USED (int ) ;
 int define_label (TYPE_1__,int ) ;
 int error (char*,int ) ;
 int input_filename ;
 TYPE_1__ input_location ;
 int processing_template_decl ;
 int warning (int ,char*,int ) ;

__attribute__((used)) static void
pop_label (tree label, tree old_value)
{
  if (!processing_template_decl)
    {
      if (DECL_INITIAL (label) == NULL_TREE)
 {
   location_t location;

   error ("label %q+D used but not defined", label);



   location.file = input_filename;
   location.line = 0;


   define_label (location, DECL_NAME (label));
 }
      else if (!TREE_USED (label))
 warning (OPT_Wunused_label, "label %q+D defined but not used", label);
    }

  SET_IDENTIFIER_LABEL_VALUE (DECL_NAME (label), old_value);
}
