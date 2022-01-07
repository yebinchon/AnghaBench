
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int red; } ;


 int die (char*) ;
 int is_gray (TYPE_1__) ;
 TYPE_1__** logo_data ;
 unsigned int logo_height ;
 unsigned int logo_width ;
 int write_footer () ;
 int write_header () ;
 int write_hex (int ) ;

__attribute__((used)) static void write_logo_gray256(void)
{
    unsigned int i, j;


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++)
     if (!is_gray(logo_data[i][j]))
  die("Image must be grayscale\n");


    write_header();


    for (i = 0; i < logo_height; i++)
 for (j = 0; j < logo_width; j++)
     write_hex(logo_data[i][j].red);


    write_footer();
}
