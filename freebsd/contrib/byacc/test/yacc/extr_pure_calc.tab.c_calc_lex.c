
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DIGIT ;
 int LETTER ;
 int getchar () ;
 scalar_t__ isdigit (int) ;
 scalar_t__ islower (int) ;
 int* yylval ;

int
YYLEX_DECL()
{





    int c;

    while( (c=getchar()) == ' ' ) { }



    if( islower( c )) {
 *yylval = c - 'a';
 return ( LETTER );
    }
    if( isdigit( c )) {
 *yylval = c - '0';
 return ( DIGIT );
    }
    return( c );
}
