
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ctf_id_t ;
typedef int ctf_file_t ;


 int * ctf_type_name (int *,int ,char*,size_t) ;
 int snprintf (char*,size_t,char*,int ) ;

__attribute__((used)) static void
dt_print_type_name(ctf_file_t *ctfp, ctf_id_t id, char *buf, size_t buflen)
{
 if (ctf_type_name(ctfp, id, buf, buflen) == ((void*)0))
  (void) snprintf(buf, buflen, "<%ld>", id);
}
