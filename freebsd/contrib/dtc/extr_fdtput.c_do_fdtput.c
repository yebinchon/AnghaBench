
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct display_info {int oper; int auto_path; } ;






 int assert (int) ;
 int create_node (char**,char*) ;
 int create_paths (char**,char*) ;
 int delete_node (char*,char*) ;
 int delete_prop (char*,char*,char*) ;
 int encode_value (struct display_info*,char**,int,char**,int*) ;
 int fdt_pack (char*) ;
 int free (char*) ;
 int store_key_value (char**,char*,char*,char*,int) ;
 char* utilfdt_read (char const*) ;
 int utilfdt_write (char const*,char*) ;

__attribute__((used)) static int do_fdtput(struct display_info *disp, const char *filename,
      char **arg, int arg_count)
{
 char *value = ((void*)0);
 char *blob;
 char *node;
 int len, ret = 0;

 blob = utilfdt_read(filename);
 if (!blob)
  return -1;

 switch (disp->oper) {
 case 128:




  assert(arg_count >= 2);
  if (disp->auto_path && create_paths(&blob, *arg))
   return -1;
  if (encode_value(disp, arg + 2, arg_count - 2, &value, &len) ||
   store_key_value(&blob, *arg, arg[1], value, len))
   ret = -1;
  break;
 case 131:
  for (; ret >= 0 && arg_count--; arg++) {
   if (disp->auto_path)
    ret = create_paths(&blob, *arg);
   else
    ret = create_node(&blob, *arg);
  }
  break;
 case 129:
  for (; ret >= 0 && arg_count--; arg++)
   ret = delete_node(blob, *arg);
  break;
 case 130:
  node = *arg;
  for (arg++; ret >= 0 && arg_count-- > 1; arg++)
   ret = delete_prop(blob, node, *arg);
  break;
 }
 if (ret >= 0) {
  fdt_pack(blob);
  ret = utilfdt_write(filename, blob);
 }

 free(blob);

 if (value) {
  free(value);
 }

 return ret;
}
