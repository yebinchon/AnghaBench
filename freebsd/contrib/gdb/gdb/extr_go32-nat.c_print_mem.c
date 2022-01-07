
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf_filtered (char*,unsigned long) ;
 int puts_filtered (char const*) ;

__attribute__((used)) static void
print_mem (unsigned long datum, const char *header, int in_pages_p)
{
  if (datum != 0xffffffffUL)
    {
      if (in_pages_p)
 datum <<= 12;
      puts_filtered (header);
      if (datum > 1024)
 {
   printf_filtered ("%lu KB", datum >> 10);
   if (datum > 1024 * 1024)
     printf_filtered (" (%lu MB)", datum >> 20);
 }
      else
 printf_filtered ("%lu Bytes", datum);
      puts_filtered ("\n");
    }
}
