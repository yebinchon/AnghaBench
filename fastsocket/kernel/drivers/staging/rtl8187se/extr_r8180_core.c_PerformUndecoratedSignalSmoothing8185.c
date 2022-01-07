
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct r8180_priv {int bCurCCKPkt; int UndecoratedSmoothedSS; int SignalStrength; int UndercorateSmoothedRxPower; int RxPower; scalar_t__ CurCCKRSSI; scalar_t__ RSSI; } ;



void PerformUndecoratedSignalSmoothing8185(struct r8180_priv *priv,
        bool bCckRate)
{

 priv->bCurCCKPkt = bCckRate;

 if (priv->UndecoratedSmoothedSS >= 0)
  priv->UndecoratedSmoothedSS = ( (priv->UndecoratedSmoothedSS * 5) + (priv->SignalStrength * 10) ) / 6;
 else
  priv->UndecoratedSmoothedSS = priv->SignalStrength * 10;

 priv->UndercorateSmoothedRxPower = ( (priv->UndercorateSmoothedRxPower * 50) + (priv->RxPower* 11)) / 60;

 if (bCckRate)
  priv->CurCCKRSSI = priv->RSSI;
 else
  priv->CurCCKRSSI = 0;
}
