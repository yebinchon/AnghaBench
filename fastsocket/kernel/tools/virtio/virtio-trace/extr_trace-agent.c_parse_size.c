
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PAGE_SIZE ;
 unsigned long PIPE_MAX_SIZE ;
 unsigned long PIPE_MIN_SIZE ;
 int pr_err (char*) ;
 unsigned long strtoul (char const*,char**,int) ;

__attribute__((used)) static unsigned long parse_size(const char *arg)
{
 unsigned long value, round;
 char *ptr;

 value = strtoul(arg, &ptr, 10);
 switch (*ptr) {
 case 'K': case 'k':
  value <<= 10;
  break;
 case 'M': case 'm':
  value <<= 20;
  break;
 default:
  break;
 }

 if (value > PIPE_MAX_SIZE) {
  pr_err("Pipe size must be less than 1MB\n");
  goto error;
 } else if (value < PIPE_MIN_SIZE) {
  pr_err("Pipe size must be over 64KB\n");
  goto error;
 }


 round = value & (PAGE_SIZE - 1);
 value = value - round;

 return value;
error:
 return 0;
}
