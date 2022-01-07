
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_info {int mode; int default_val; } ;




 int assert (char const*) ;
 void* fdt_getprop (void const*,int,char const*,int*) ;
 int list_properties (void const*,int) ;
 int list_subnodes (void const*,int) ;
 int printf (char*) ;
 int puts (int ) ;
 int report_error (char const*,int) ;
 int show_data (struct display_info*,void const*,int) ;

__attribute__((used)) static int show_data_for_item(const void *blob, struct display_info *disp,
  int node, const char *property)
{
 const void *value = ((void*)0);
 int len, err = 0;

 switch (disp->mode) {
 case 129:
  err = list_properties(blob, node);
  break;

 case 128:
  err = list_subnodes(blob, node);
  break;

 default:
  assert(property);
  value = fdt_getprop(blob, node, property, &len);
  if (value) {
   if (show_data(disp, value, len))
    err = -1;
   else
    printf("\n");
  } else if (disp->default_val) {
   puts(disp->default_val);
  } else {
   report_error(property, len);
   err = -1;
  }
  break;
 }

 return err;
}
