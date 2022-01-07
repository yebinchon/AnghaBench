
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ s32 ;
typedef scalar_t__ fixed ;


 int AG_CONST ;
 scalar_t__* Angles ;
 scalar_t__ FIXED (int ) ;
 scalar_t__ abs (scalar_t__) ;

void _sin_cos(s32 angle, s32 *sin, s32 *cos)
{
    fixed X, Y, TargetAngle, CurrAngle;
    unsigned Step;

    X=FIXED(AG_CONST);
    Y=0;
    TargetAngle=abs(angle);
    CurrAngle=0;

    for (Step=0; Step < 12; Step++)
    {
        fixed NewX;

        if(TargetAngle > CurrAngle)
        {
            NewX=X - (Y >> Step);
            Y=(X >> Step) + Y;
            X=NewX;
            CurrAngle += Angles[Step];
        }
        else
        {
            NewX=X + (Y >> Step);
            Y=-(X >> Step) + Y;
            X=NewX;
            CurrAngle -= Angles[Step];
        }
    }

    if (angle > 0)
    {
        *cos = X;
        *sin = Y;
    }
    else
    {
        *cos = X;
        *sin = -Y;
    }
}
