
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int EXPECT ;
 int EXPECT_RR ;
 void* RRexpect ;
 void* SRexpect ;
 int* cptr ;
 void* get_number () ;
 scalar_t__ isalpha (int) ;
 scalar_t__ isdigit (int) ;
 int isspace (int) ;
 int line ;
 int lineno ;
 int prec ;
 int syntax_error (int ,int ,int*) ;
 int unexpected_EOF () ;

__attribute__((used)) static void
declare_expect(int assoc)
{
    int c;

    if (assoc != EXPECT && assoc != EXPECT_RR)
 ++prec;





    c = *++cptr;
    if (c == EOF)
 unexpected_EOF();

    for (;;)
    {
 if (isdigit(c))
 {
     if (assoc == EXPECT)
  SRexpect = get_number();
     else
  RRexpect = get_number();
     break;
 }





 else if (c == '\n' || isalpha(c) || !isspace(c))
 {
     syntax_error(lineno, line, cptr);
 }
 else
 {
     c = *++cptr;
     if (c == EOF)
  unexpected_EOF();
 }
    }
}
