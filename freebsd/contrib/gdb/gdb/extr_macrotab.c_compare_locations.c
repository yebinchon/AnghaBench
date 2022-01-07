
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct macro_source_file {int included_at_line; struct macro_source_file* included_by; } ;


 int gdb_assert (int) ;
 int inclusion_depth (struct macro_source_file*) ;

__attribute__((used)) static int
compare_locations (struct macro_source_file *file1, int line1,
                   struct macro_source_file *file2, int line2)
{






  int included1 = 0;
  int included2 = 0;



  if (! file1)
    {
      if (! file2)
        return 0;
      else
        return 1;
    }
  else if (! file2)
    return -1;



  if (file1 != file2)
    {




      int depth1 = inclusion_depth (file1);
      int depth2 = inclusion_depth (file2);



      while (depth1 > depth2)
        {
          line1 = file1->included_at_line;
          file1 = file1->included_by;
          included1 = 1;
          depth1--;
        }
      while (depth2 > depth1)
        {
          line2 = file2->included_at_line;
          file2 = file2->included_by;
          included2 = 1;
          depth2--;
        }



      while (file1 != file2)
        {
          line1 = file1->included_at_line;
          file1 = file1->included_by;



          included1 = 1;

          line2 = file2->included_at_line;
          file2 = file2->included_by;
          included2 = 1;




          gdb_assert (file1 && file2);
        }
    }


  if (line1 == line2)
    {


      gdb_assert (! included1 || ! included2);



      if (included1)
        return 1;
      else if (included2)
        return -1;
      else
        return 0;
    }
  else
    return line1 - line2;
}
