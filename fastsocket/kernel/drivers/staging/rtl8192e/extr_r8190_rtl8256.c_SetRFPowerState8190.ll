; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_SetRFPowerState8190.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_SetRFPowerState8190.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 (%struct.TYPE_12__*, i32)* }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_9__*, i32, i32, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@COMP_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"===========> SetRFPowerState8190()!\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"SetRFPowerState8190() eRfOn !\0A\00", align 1
@ANAPAR = common dso_local global i32 0, align 4
@MacBlkCtrl = common dso_local global i32 0, align 4
@BB_RESET = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter2 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter1 = common dso_local global i32 0, align 4
@rFPGA0_AnalogParameter4 = common dso_local global i32 0, align 4
@rFPGA0_XA_RFInterfaceOE = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@rFPGA0_XB_RFInterfaceOE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"SetRFPowerState8190() eRfOff/Sleep !\0A\00", align 1
@MAX_TX_QUEUE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"eRf Off/Sleep: %d times BusyQueue[%d] !=0 before doze!\0A\00", align 1
@MAX_DOZE_WAITING_TIMES_9x = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [80 x i8] c"\0A\0A\0A TimeOut!! SetRFPowerState8190(): eRfOff: %d times BusyQueue[%d] != 0 !!!\0A\0A\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [53 x i8] c"SetRFPowerState8190(): unknow state to set: 0x%X!!!\0A\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"SetRFPowerState8190(): Unknown RF type\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@IEEE80211_LINKED = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [50 x i8] c"<=========== SetRFPowerState8190() bResult = %d!\0A\00", align 1
@Adapter = common dso_local global %struct.TYPE_12__* null, align 8
@LED_CTL_LINK = common dso_local global i32 0, align 4
@LED_CTL_NO_LINK = common dso_local global i32 0, align 4
@LED_CTL_POWER_OFF = common dso_local global i32 0, align 4
@RF_1T2R = common dso_local global i32 0, align 4
@RF_2T4R = common dso_local global i32 0, align 4
@rFPGA0_XC_RFInterfaceOE = common dso_local global i32 0, align 4
@rOFDM0_TRxPathEnable = common dso_local global i32 0, align 4
@rOFDM1_TRxPathEnable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @SetRFPowerState8190 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetRFPowerState8190(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.r8192_priv*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %13)
  store %struct.r8192_priv* %14, %struct.r8192_priv** %6, align 8
  %15 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %16 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = bitcast i32* %18 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %7, align 8
  store i32 1, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %250

25:                                               ; preds = %2
  %26 = load i32, i32* @COMP_POWER, align 4
  %27 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %29 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  switch i32 %32, label %194 [
    i32 133, label %33
  ]

33:                                               ; preds = %25
  %34 = load i32, i32* %5, align 4
  switch i32 %34, label %189 [
    i32 129, label %35
    i32 128, label %75
    i32 130, label %75
  ]

35:                                               ; preds = %33
  %36 = load i32, i32* @COMP_POWER, align 4
  %37 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %36, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load i32, i32* @ANAPAR, align 4
  %40 = call i32 @write_nic_byte(%struct.net_device* %38, i32 %39, i32 55)
  %41 = load %struct.net_device*, %struct.net_device** %4, align 8
  %42 = load i32, i32* @MacBlkCtrl, align 4
  %43 = call i32 @write_nic_byte(%struct.net_device* %41, i32 %42, i32 23)
  %44 = call i32 @mdelay(i32 1)
  %45 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %46 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %45, i32 0, i32 3
  store i32 0, i32* %46, align 8
  %47 = load %struct.net_device*, %struct.net_device** %4, align 8
  %48 = load i32, i32* @BB_RESET, align 4
  %49 = load %struct.net_device*, %struct.net_device** %4, align 8
  %50 = load i32, i32* @BB_RESET, align 4
  %51 = call i32 @read_nic_byte(%struct.net_device* %49, i32 %50)
  %52 = load i32, i32* @BIT0, align 4
  %53 = or i32 %51, %52
  %54 = call i32 @write_nic_byte(%struct.net_device* %47, i32 %48, i32 %53)
  %55 = load %struct.net_device*, %struct.net_device** %4, align 8
  %56 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %57 = call i32 @rtl8192_setBBreg(%struct.net_device* %55, i32 %56, i32 536870912, i32 1)
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %60 = call i32 @rtl8192_setBBreg(%struct.net_device* %58, i32 %59, i32 96, i32 3)
  %61 = load %struct.net_device*, %struct.net_device** %4, align 8
  %62 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %63 = call i32 @rtl8192_setBBreg(%struct.net_device* %61, i32 %62, i32 152, i32 19)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %66 = call i32 @rtl8192_setBBreg(%struct.net_device* %64, i32 %65, i32 3843, i32 3843)
  %67 = load %struct.net_device*, %struct.net_device** %4, align 8
  %68 = load i32, i32* @rFPGA0_XA_RFInterfaceOE, align 4
  %69 = load i32, i32* @BIT4, align 4
  %70 = call i32 @rtl8192_setBBreg(%struct.net_device* %67, i32 %68, i32 %69, i32 1)
  %71 = load %struct.net_device*, %struct.net_device** %4, align 8
  %72 = load i32, i32* @rFPGA0_XB_RFInterfaceOE, align 4
  %73 = load i32, i32* @BIT4, align 4
  %74 = call i32 @rtl8192_setBBreg(%struct.net_device* %71, i32 %72, i32 %73, i32 1)
  br label %193

75:                                               ; preds = %33, %33
  %76 = load i32, i32* @COMP_POWER, align 4
  %77 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %76, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %152

82:                                               ; preds = %75
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %83

83:                                               ; preds = %150, %129, %82
  %84 = load i32, i32* %10, align 4
  %85 = load i32, i32* @MAX_TX_QUEUE, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %151

87:                                               ; preds = %83
  %88 = load i32, i32* %10, align 4
  switch i32 %88, label %124 [
    i32 134, label %89
    i32 135, label %96
    i32 136, label %103
    i32 132, label %110
    i32 131, label %117
  ]

89:                                               ; preds = %87
  %90 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %91 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %90, i32 0, i32 14
  %92 = load i32*, i32** %91, align 8
  store i32* %92, i32** %12, align 8
  %93 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %94 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %93, i32 0, i32 13
  %95 = load i32*, i32** %94, align 8
  store i32* %95, i32** %11, align 8
  br label %125

96:                                               ; preds = %87
  %97 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %98 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %97, i32 0, i32 12
  %99 = load i32*, i32** %98, align 8
  store i32* %99, i32** %12, align 8
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 11
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %11, align 8
  br label %125

103:                                              ; preds = %87
  %104 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %105 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %104, i32 0, i32 10
  %106 = load i32*, i32** %105, align 8
  store i32* %106, i32** %12, align 8
  %107 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %108 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %107, i32 0, i32 9
  %109 = load i32*, i32** %108, align 8
  store i32* %109, i32** %11, align 8
  br label %125

110:                                              ; preds = %87
  %111 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %112 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %111, i32 0, i32 8
  %113 = load i32*, i32** %112, align 8
  store i32* %113, i32** %12, align 8
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 7
  %116 = load i32*, i32** %115, align 8
  store i32* %116, i32** %11, align 8
  br label %125

117:                                              ; preds = %87
  %118 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %119 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %118, i32 0, i32 6
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %12, align 8
  %121 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %122 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %121, i32 0, i32 5
  %123 = load i32*, i32** %122, align 8
  store i32* %123, i32** %11, align 8
  br label %125

124:                                              ; preds = %87
  store i32* null, i32** %11, align 8
  store i32* null, i32** %12, align 8
  br label %125

125:                                              ; preds = %124, %117, %110, %103, %96, %89
  %126 = load i32*, i32** %12, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = icmp eq i32* %126, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %125
  %130 = load i32, i32* %10, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %10, align 4
  br label %83

132:                                              ; preds = %125
  %133 = load i32, i32* @COMP_POWER, align 4
  %134 = load i32, i32* %9, align 4
  %135 = add nsw i32 %134, 1
  %136 = load i32, i32* %10, align 4
  %137 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %133, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %135, i32 %136)
  %138 = call i32 @udelay(i32 10)
  %139 = load i32, i32* %9, align 4
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  br label %141

141:                                              ; preds = %132
  %142 = load i32, i32* %9, align 4
  %143 = load i32, i32* @MAX_DOZE_WAITING_TIMES_9x, align 4
  %144 = icmp sge i32 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %141
  %146 = load i32, i32* @COMP_POWER, align 4
  %147 = load i32, i32* @MAX_DOZE_WAITING_TIMES_9x, align 4
  %148 = load i32, i32* %10, align 4
  %149 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %146, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0), i32 %147, i32 %148)
  br label %151

150:                                              ; preds = %141
  br label %83

151:                                              ; preds = %145, %83
  br label %152

152:                                              ; preds = %151, %75
  %153 = load %struct.net_device*, %struct.net_device** %4, align 8
  %154 = load i32, i32* @rFPGA0_XA_RFInterfaceOE, align 4
  %155 = load i32, i32* @BIT4, align 4
  %156 = call i32 @rtl8192_setBBreg(%struct.net_device* %153, i32 %154, i32 %155, i32 0)
  %157 = load %struct.net_device*, %struct.net_device** %4, align 8
  %158 = load i32, i32* @rFPGA0_XB_RFInterfaceOE, align 4
  %159 = load i32, i32* @BIT4, align 4
  %160 = call i32 @rtl8192_setBBreg(%struct.net_device* %157, i32 %158, i32 %159, i32 0)
  %161 = load %struct.net_device*, %struct.net_device** %4, align 8
  %162 = load i32, i32* @rFPGA0_AnalogParameter4, align 4
  %163 = call i32 @rtl8192_setBBreg(%struct.net_device* %161, i32 %162, i32 3843, i32 0)
  %164 = load %struct.net_device*, %struct.net_device** %4, align 8
  %165 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %166 = call i32 @rtl8192_setBBreg(%struct.net_device* %164, i32 %165, i32 152, i32 0)
  %167 = load %struct.net_device*, %struct.net_device** %4, align 8
  %168 = load i32, i32* @rFPGA0_AnalogParameter1, align 4
  %169 = call i32 @rtl8192_setBBreg(%struct.net_device* %167, i32 %168, i32 96, i32 0)
  %170 = load %struct.net_device*, %struct.net_device** %4, align 8
  %171 = load i32, i32* @rFPGA0_AnalogParameter2, align 4
  %172 = call i32 @rtl8192_setBBreg(%struct.net_device* %170, i32 %171, i32 536870912, i32 0)
  %173 = load %struct.net_device*, %struct.net_device** %4, align 8
  %174 = load i32, i32* @BB_RESET, align 4
  %175 = load %struct.net_device*, %struct.net_device** %4, align 8
  %176 = load i32, i32* @BB_RESET, align 4
  %177 = call i32 @read_nic_byte(%struct.net_device* %175, i32 %176)
  %178 = load i32, i32* @BIT0, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @write_nic_byte(%struct.net_device* %173, i32 %174, i32 %179)
  %181 = load %struct.net_device*, %struct.net_device** %4, align 8
  %182 = load i32, i32* @MacBlkCtrl, align 4
  %183 = call i32 @write_nic_byte(%struct.net_device* %181, i32 %182, i32 0)
  %184 = load %struct.net_device*, %struct.net_device** %4, align 8
  %185 = load i32, i32* @ANAPAR, align 4
  %186 = call i32 @write_nic_byte(%struct.net_device* %184, i32 %185, i32 7)
  %187 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %188 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %187, i32 0, i32 3
  store i32 0, i32* %188, align 8
  br label %193

189:                                              ; preds = %33
  store i32 0, i32* %8, align 4
  %190 = load i32, i32* @COMP_ERR, align 4
  %191 = load i32, i32* %5, align 4
  %192 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %190, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %191)
  br label %193

193:                                              ; preds = %189, %152, %35
  br label %197

194:                                              ; preds = %25
  %195 = load i32, i32* @COMP_ERR, align 4
  %196 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %195, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %197

197:                                              ; preds = %194, %193
  %198 = load i32, i32* %8, align 4
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %243

200:                                              ; preds = %197
  %201 = load i32, i32* %5, align 4
  %202 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %203 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %202, i32 0, i32 2
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  store i32 %201, i32* %205, align 4
  %206 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %207 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  switch i32 %208, label %239 [
    i32 133, label %209
  ]

209:                                              ; preds = %200
  %210 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %211 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %210, i32 0, i32 2
  %212 = load %struct.TYPE_9__*, %struct.TYPE_9__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  switch i32 %214, label %237 [
    i32 130, label %215
    i32 129, label %226
  ]

215:                                              ; preds = %209
  %216 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %217 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %216, i32 0, i32 2
  %218 = load %struct.TYPE_9__*, %struct.TYPE_9__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %218, i32 0, i32 2
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %222 = icmp eq i32 %220, %221
  br i1 %222, label %223, label %224

223:                                              ; preds = %215
  br label %225

224:                                              ; preds = %215
  br label %225

225:                                              ; preds = %224, %223
  br label %238

226:                                              ; preds = %209
  %227 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %228 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %227, i32 0, i32 2
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IEEE80211_LINKED, align 4
  %233 = icmp eq i32 %231, %232
  br i1 %233, label %234, label %235

234:                                              ; preds = %226
  br label %236

235:                                              ; preds = %226
  br label %236

236:                                              ; preds = %235, %234
  br label %238

237:                                              ; preds = %209
  br label %238

238:                                              ; preds = %237, %236, %225
  br label %242

239:                                              ; preds = %200
  %240 = load i32, i32* @COMP_ERR, align 4
  %241 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %240, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.6, i64 0, i64 0))
  br label %242

242:                                              ; preds = %239, %238
  br label %243

243:                                              ; preds = %242, %197
  %244 = load %struct.r8192_priv*, %struct.r8192_priv** %6, align 8
  %245 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %244, i32 0, i32 0
  store i32 0, i32* %245, align 8
  %246 = load i32, i32* @COMP_POWER, align 4
  %247 = load i32, i32* %8, align 4
  %248 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %246, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i64 0, i64 0), i32 %247)
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %3, align 4
  br label %250

250:                                              ; preds = %243, %24
  %251 = load i32, i32* %3, align 4
  ret i32 %251
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32) #1

declare dso_local i32 @rtl8192_setBBreg(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
