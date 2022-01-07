
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PATH_MAX ;
 char* READ_PATH_FMT ;
 char* WRITE_PATH_FMT ;
 int free (char*) ;
 int pr_err (char*,...) ;
 int snprintf (char*,int ,char*,int) ;
 char* zalloc (int ) ;

__attribute__((used)) static const char *make_path(int cpu_num, bool this_is_write_path)
{
 int ret;
 char *buf;

 buf = zalloc(PATH_MAX);
 if (buf == ((void*)0)) {
  pr_err("Could not allocate buffer\n");
  goto error;
 }

 if (this_is_write_path)

  ret = snprintf(buf, PATH_MAX, WRITE_PATH_FMT, cpu_num);
 else

  ret = snprintf(buf, PATH_MAX, READ_PATH_FMT, cpu_num);

 if (ret <= 0) {
  pr_err("Failed to generate %s path(CPU#%d):%d\n",
   this_is_write_path ? "read" : "write", cpu_num, ret);
  goto error;
 }

 return buf;

error:
 free(buf);
 return ((void*)0);
}
