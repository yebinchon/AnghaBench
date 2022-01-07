
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int conf ;
 int conf_delayed_char ;
 int conf_linenum ;
 int fgetc (int ) ;

__attribute__((used)) static int
conf_next_low(void)
{
 int x;

 x = conf_delayed_char;
 if (x >= 0) {
  conf_delayed_char = -1;
 } else {
  x = fgetc(conf);
  if (x == EOF) {
   x = -1;
  }
 }
 if (x == '\r') {
  x = fgetc(conf);
  if (x == EOF) {
   x = -1;
  }
  if (x != '\n') {
   conf_delayed_char = x;
   x = '\n';
  }
 }
 if (x == '\n') {
  conf_linenum ++;
 }
 return x;
}
