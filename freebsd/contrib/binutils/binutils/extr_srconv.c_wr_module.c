
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_ofile {int dummy; } ;


 int wr_cs () ;
 int wr_debug (struct coff_ofile*) ;
 int wr_hd (struct coff_ofile*) ;
 int wr_object_body (struct coff_ofile*) ;
 int wr_tr () ;
 int wr_unit_info (struct coff_ofile*) ;

__attribute__((used)) static void
wr_module (struct coff_ofile *p)
{
  wr_cs ();
  wr_hd (p);
  wr_unit_info (p);
  wr_object_body (p);
  wr_debug (p);
  wr_tr ();
}
