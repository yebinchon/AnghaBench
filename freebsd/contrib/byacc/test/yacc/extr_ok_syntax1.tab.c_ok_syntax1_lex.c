
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ival; } ;


 int DIGIT ;
 int LETTER ;
 int* base ;
 int getchar () ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 TYPE_1__* yylval ;

int
YYLEX_DECL()
{





    int c;

    while( (c=getchar()) == ' ' ) { }



    if( islower( c )) {
 yylval->ival = (c - 'a');
 return ( LETTER );
    }
    if( isdigit( c )) {
 yylval->ival = (c - '0') % (*base);
 return ( DIGIT );
    }
    return( c );
}
