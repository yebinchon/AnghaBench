
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
typedef scalar_t__ u_longlong_t ;


 int EINVAL ;
 int EIO ;
 int ENOTSUP ;
 int EOVERFLOW ;
 int RTLD_LAZY ;
 scalar_t__ UINT32_MAX ;
 int dlclose (void*) ;
 void* dlopen (char*,int ) ;
 scalar_t__* dlsym (void*,char*) ;
 int fprintf (int ,char*,...) ;
 int stderr ;
 char* strchr (char*,char) ;
 scalar_t__ strtoull (char*,int *,int ) ;

int
set_global_var(char *arg)
{
 void *zpoolhdl;
 char *varname = arg, *varval;
 u_longlong_t val;







 fprintf(stderr, "Setting global variables is only supported on "
     "little-endian systems\n", varname);
 return (ENOTSUP);

 if ((varval = strchr(arg, '=')) != ((void*)0)) {
  *varval = '\0';
  varval++;
  val = strtoull(varval, ((void*)0), 0);
  if (val > UINT32_MAX) {
   fprintf(stderr, "Value for global variable '%s' must "
       "be a 32-bit unsigned integer\n", varname);
   return (EOVERFLOW);
  }
 } else {
  return (EINVAL);
 }

 zpoolhdl = dlopen("libzpool.so", RTLD_LAZY);
 if (zpoolhdl != ((void*)0)) {
  uint32_t *var;
  var = dlsym(zpoolhdl, varname);
  if (var == ((void*)0)) {
   fprintf(stderr, "Global variable '%s' does not exist "
       "in libzpool.so\n", varname);
   return (EINVAL);
  }
  *var = (uint32_t)val;

  dlclose(zpoolhdl);
 } else {
  fprintf(stderr, "Failed to open libzpool.so to set global "
      "variable\n");
  return (EIO);
 }

 return (0);
}
