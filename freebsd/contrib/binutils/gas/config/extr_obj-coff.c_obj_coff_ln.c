
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int add_lineno (int ,int ,int) ;
 int as_warn (int ) ;
 int coff_line_base ;
 int * current_lineno_sym ;
 int * def_symbol_in_progress ;
 int demand_empty_rest_of_line () ;
 int frag_now ;
 int frag_now_fix () ;
 int get_absolute_expression () ;
 int listing_source_line (int) ;
 int new_logical_line (char*,int) ;

__attribute__((used)) static void
obj_coff_ln (int appline)
{
  int l;

  if (! appline && def_symbol_in_progress != ((void*)0))
    {
      as_warn (_(".ln pseudo-op inside .def/.endef: ignored."));
      demand_empty_rest_of_line ();
      return;
    }

  l = get_absolute_expression ();



  if (appline || current_lineno_sym == ((void*)0))
    new_logical_line ((char *) ((void*)0), l - 1);
  else
    add_lineno (frag_now, frag_now_fix (), l);


  {
    extern int listing;

    if (listing)
      {
 if (! appline)
   l += coff_line_base - 1;
 listing_source_line (l);
      }
  }


  demand_empty_rest_of_line ();
}
