
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;
 int shared_obj ;
 int write_c_file_glob (int *,char const*) ;
 int write_c_file_stat (int *,char const*) ;

__attribute__((used)) static void
write_c_file (FILE *stream, const char *name)
{
  fprintf (stream, "#ifdef __cplusplus\nextern \"C\" {\n#endif\n");

  if (! shared_obj)
    write_c_file_glob (stream, name);
  else

    write_c_file_stat (stream, name);
  fprintf (stream, "#ifdef __cplusplus\n}\n#endif\n");
}
