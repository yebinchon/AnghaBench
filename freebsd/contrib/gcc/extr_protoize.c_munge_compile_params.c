
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 char* HOST_BIT_BUCKET ;
 scalar_t__ ISSPACE (unsigned char const) ;
 int S_ISDIR (int ) ;
 int W_OK ;
 scalar_t__ access (char*,int ) ;
 char** alloca (int) ;
 int aux_info_file_name_index ;
 int compile_params ;
 char* compiler_file_name ;
 char* dupnstr (char const*,size_t) ;
 int input_file_name_index ;
 int memcpy (int ,char const**,int) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strlen (char const*) ;
 int xmalloc (int) ;

__attribute__((used)) static void
munge_compile_params (const char *params_list)
{


  const char **temp_params
    = alloca ((strlen (params_list) + 8) * sizeof (char *));
  int param_count = 0;
  const char *param;
  struct stat st;

  temp_params[param_count++] = compiler_file_name;
  for (;;)
    {
      while (ISSPACE ((const unsigned char)*params_list))
 params_list++;
      if (!*params_list)
 break;
      param = params_list;
      while (*params_list && !ISSPACE ((const unsigned char)*params_list))
 params_list++;
      if (param[0] != '-')
 temp_params[param_count++]
   = dupnstr (param, (size_t) (params_list - param));
      else
 {
   switch (param[1])
     {
     case 'g':
     case 'O':
     case 'S':
     case 'c':
       break;
     case 'o':
       while (ISSPACE ((const unsigned char)*params_list))
  params_list++;
       while (*params_list
       && !ISSPACE ((const unsigned char)*params_list))
  params_list++;
       break;
     default:
       temp_params[param_count++]
  = dupnstr (param, (size_t) (params_list - param));
     }
 }
      if (!*params_list)
 break;
    }
  temp_params[param_count++] = "-aux-info";


  aux_info_file_name_index = param_count;
  temp_params[param_count++] = ((void*)0);

  temp_params[param_count++] = "-S";
  temp_params[param_count++] = "-o";

  if ((stat (HOST_BIT_BUCKET, &st) == 0)
      && (!S_ISDIR (st.st_mode))
      && (access (HOST_BIT_BUCKET, W_OK) == 0))
    temp_params[param_count++] = HOST_BIT_BUCKET;
  else



    temp_params[param_count++] = "/dev/null";


  input_file_name_index = param_count;
  temp_params[param_count++] = ((void*)0);

  temp_params[param_count++] = ((void*)0);



  compile_params = xmalloc (sizeof (char *) * (param_count+1));
  memcpy (compile_params, temp_params, sizeof (char *) * param_count);
}
