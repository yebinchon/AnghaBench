
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char uint8_t ;
typedef size_t uint32_t ;
typedef int engine ;
struct TYPE_2__ {size_t engine_len; int* engine_id; int engine_boots; } ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int SNMP_ENGINE_ID_SIZ ;
 char* engine_file ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int *,char*,char*,int) ;
 scalar_t__ fscanf (int *,char*,int*) ;
 TYPE_1__ snmpd_engine ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;

int
set_snmpd_engine(void)
{
 FILE *fp;
 uint32_t i;
 uint8_t *cptr, engine[2 * SNMP_ENGINE_ID_SIZ + 2];
 uint8_t myengine[2 * SNMP_ENGINE_ID_SIZ + 2];

 if (engine_file[0] == '\0')
  return (-1);

 cptr = myengine;
 for (i = 0; i < snmpd_engine.engine_len; i++)
  cptr += sprintf(cptr, "%.2x", snmpd_engine.engine_id[i]);
 *cptr++ = '\n';
 *cptr++ = '\0';

 if ((fp = fopen(engine_file, "r+")) != ((void*)0)) {
  if (fgets(engine, sizeof(engine) - 1, fp) == ((void*)0) ||
      fscanf(fp, "%u", &snmpd_engine.engine_boots) <= 0) {
   fclose(fp);
   goto save_boots;
  }

  fclose(fp);
  if (strcmp(myengine, engine) != 0)
   snmpd_engine.engine_boots = 1;
  else
   snmpd_engine.engine_boots++;
 } else if (errno != ENOENT)
  return (-1);

save_boots:
 if ((fp = fopen(engine_file, "w+")) == ((void*)0))
  return (-1);
 fprintf(fp, "%s%u\n", myengine, snmpd_engine.engine_boots);
 fclose(fp);

 return (0);
}
