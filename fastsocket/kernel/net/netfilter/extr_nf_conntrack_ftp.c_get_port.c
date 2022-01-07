
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int16_t ;
typedef int __be16 ;


 int htons (int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int get_port(const char *data, int start, size_t dlen, char delim,
      __be16 *port)
{
 u_int16_t tmp_port = 0;
 int i;

 for (i = start; i < dlen; i++) {

  if (data[i] == delim) {
   if (tmp_port == 0)
    break;
   *port = htons(tmp_port);
   pr_debug("get_port: return %d\n", tmp_port);
   return i + 1;
  }
  else if (data[i] >= '0' && data[i] <= '9')
   tmp_port = tmp_port*10 + data[i] - '0';
  else {
   pr_debug("get_port: invalid char.\n");
   break;
  }
 }
 return 0;
}
