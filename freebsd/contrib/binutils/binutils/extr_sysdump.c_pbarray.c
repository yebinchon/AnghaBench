
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; char* data; } ;
typedef TYPE_1__ barray ;


 scalar_t__ ISPRINT (char) ;
 int printf (char*,...) ;

__attribute__((used)) static void
pbarray (barray *y)
{
  int x;

  printf ("%d (", y->len);

  for (x = 0; x < y->len; x++)
    printf ("(%02x %c)", y->data[x],
     ISPRINT (y->data[x]) ? y->data[x] : '.');

  printf (")\n");
}
