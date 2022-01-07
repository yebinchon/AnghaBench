
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue {int mailf; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ MAX_LINE_RFC822 ;
 int fwrite (char const*,int,int,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int
writeline(struct queue *queue, const char *line, ssize_t linelen)
{
 ssize_t len;

 while (linelen > 0) {
  len = linelen;
  if (linelen > MAX_LINE_RFC822) {
   len = MAX_LINE_RFC822 - 10;
  }

  if (fwrite(line, len, 1, queue->mailf) != 1)
   return (-1);

  if (linelen <= MAX_LINE_RFC822)
   break;

  if (fwrite("\n", 1, 1, queue->mailf) != 1)
   return (-1);

  line += MAX_LINE_RFC822 - 10;
  linelen = strlen(line);
 }
 return (0);
}
