
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int __be32 ;


 int cpu_to_be32 (int ) ;
 int simple_strtoul (char*,char**,int) ;

__attribute__((used)) static int parse_dcc(char *data, const char *data_end, __be32 *ip,
       u_int16_t *port, char **ad_beg_p, char **ad_end_p)
{
 char *tmp;


 while (*data++ != ' ')
  if (data > data_end - 12)
   return -1;



 for (tmp = data; tmp <= data_end; tmp++)
  if (*tmp == '\n')
   break;
 if (tmp > data_end || *tmp != '\n')
  return -1;

 *ad_beg_p = data;
 *ip = cpu_to_be32(simple_strtoul(data, &data, 10));


 while (*data == ' ') {
  if (data >= data_end)
   return -1;
  data++;
 }

 *port = simple_strtoul(data, &data, 10);
 *ad_end_p = data;

 return 0;
}
