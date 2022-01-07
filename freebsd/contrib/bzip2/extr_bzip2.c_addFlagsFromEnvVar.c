
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Int32 ;
typedef scalar_t__ Char ;
typedef int Cell ;


 int APPEND_FLAG (int *,scalar_t__*) ;
 int FILE_NAME_LEN ;
 scalar_t__ True ;
 scalar_t__* getenv (scalar_t__*) ;
 scalar_t__ isspace (size_t) ;
 scalar_t__* tmpName ;

__attribute__((used)) static
void addFlagsFromEnvVar ( Cell** argList, Char* varName )
{
   Int32 i, j, k;
   Char *envbase, *p;

   envbase = getenv(varName);
   if (envbase != ((void*)0)) {
      p = envbase;
      i = 0;
      while (True) {
         if (p[i] == 0) break;
         p += i;
         i = 0;
         while (isspace((Int32)(p[0]))) p++;
         while (p[i] != 0 && !isspace((Int32)(p[i]))) i++;
         if (i > 0) {
            k = i; if (k > FILE_NAME_LEN-10) k = FILE_NAME_LEN-10;
            for (j = 0; j < k; j++) tmpName[j] = p[j];
            tmpName[k] = 0;
            APPEND_FLAG(*argList, tmpName);
         }
      }
   }
}
