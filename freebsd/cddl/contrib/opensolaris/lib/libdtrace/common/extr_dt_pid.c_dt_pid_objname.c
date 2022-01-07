
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Lmid_t ;


 scalar_t__ LM_ID_BASE ;
 int snprintf (char*,size_t,char*,scalar_t__,char const*) ;
 int strncpy (char*,char const*,size_t) ;

__attribute__((used)) static void
dt_pid_objname(char *buf, size_t len, Lmid_t lmid, const char *obj)
{






 (void) strncpy(buf, obj, len);

}
