
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int s_nt ;


 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static const char *
note_type_unknown(unsigned int nt)
{
 static char s_nt[32];

 snprintf(s_nt, sizeof(s_nt),
     nt >= 0x100 ? "<unknown: 0x%x>" : "<unknown: %u>", nt);
 return (s_nt);
}
