
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;



 int GET_CODE (int ) ;

 int UNSPEC_TLS ;
 int XEXP (int ,int ) ;
 int XINT (int ,int) ;

int
tls_mentioned_p (rtx x)
{
  switch (GET_CODE (x))
    {
    case 129:
      return tls_mentioned_p (XEXP (x, 0));

    case 128:
      if (XINT (x, 1) == UNSPEC_TLS)
 return 1;

    default:
      return 0;
    }
}
