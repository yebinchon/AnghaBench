
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Token ;
typedef int Boolean ;


 scalar_t__ TOK_AND ;
 scalar_t__ TOK_EOF ;
 scalar_t__ TOK_LPAREN ;
 scalar_t__ TOK_NONE ;
 scalar_t__ TOK_NOT ;
 scalar_t__ TOK_OR ;
 scalar_t__ TOK_RPAREN ;
 scalar_t__ compare_expression (int ) ;
 scalar_t__ compare_function (int ) ;
 char* condExpr ;
 scalar_t__ condPushBack ;

__attribute__((used)) static Token
CondToken(Boolean doEval)
{
    Token t;

    t = condPushBack;
    if (t != TOK_NONE) {
 condPushBack = TOK_NONE;
 return t;
    }

    while (*condExpr == ' ' || *condExpr == '\t') {
 condExpr++;
    }

    switch (*condExpr) {

    case '(':
 condExpr++;
 return TOK_LPAREN;

    case ')':
 condExpr++;
 return TOK_RPAREN;

    case '|':
 if (condExpr[1] == '|') {
     condExpr++;
 }
 condExpr++;
 return TOK_OR;

    case '&':
 if (condExpr[1] == '&') {
     condExpr++;
 }
 condExpr++;
 return TOK_AND;

    case '!':
 condExpr++;
 return TOK_NOT;

    case '#':
    case '\n':
    case '\0':
 return TOK_EOF;

    case '"':
    case '$':
 return compare_expression(doEval);

    default:
 return compare_function(doEval);
    }
}
