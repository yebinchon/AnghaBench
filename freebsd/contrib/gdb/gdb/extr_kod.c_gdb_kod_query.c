
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONGEST ;


 int TARGET_OBJECT_KOD ;
 int current_target ;
 int error (char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;
 scalar_t__ target_read_partial (int *,int ,char*,char*,int ,int) ;

__attribute__((used)) static void
gdb_kod_query (char *arg, char *result, int *maxsiz)
{
  LONGEST bufsiz = 0;



  bufsiz = target_read_partial (&current_target, TARGET_OBJECT_KOD,
    ((void*)0), ((void*)0), 0, 0);
  if (bufsiz < 0)
    {
      strcpy (result,
              "ERR: Kernel Object Display not supported by current target\n");
      return;
    }




  if (*maxsiz == 0)
    {
      *maxsiz = bufsiz;
      strcpy (result, "OK");
      return;
    }


  if (bufsiz > *maxsiz)
    bufsiz = *maxsiz;



  if (strlen (arg) >= bufsiz)
    error ("kod: query argument too long");


  if (target_read_partial (&current_target, TARGET_OBJECT_KOD,
      arg, result, 0, bufsiz) < 0)
    strcpy (result, "ERR: remote query failed");
}
