; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MgntActSet_RF_State.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r8190_rtl8256.c_MgntActSet_RF_State.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@COMP_POWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"===>MgntActSet_RF_State(): StateToSet(%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [76 x i8] c"MgntActSet_RF_State(): RF Change in progress! Wait to set..StateToSet(%d).\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"MgntActSet_RF_State(): Wait 1 ms (%d times)...\0A\00", align 1
@COMP_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [48 x i8] c"MgntActSet_RF_State(): Wait too logn to set RF\0A\00", align 1
@RF_CHANGE_BY_HW = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [84 x i8] c"MgntActSet_RF_State - eRfon reject pMgntInfo->RfOffReason= 0x%x, ChangeSource=0x%X\0A\00", align 1
@RF_CHANGE_BY_IPS = common dso_local global i32 0, align 4
@disas_lv_ss = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [79 x i8] c"MgntActSet_RF_State(): Action is allowed.... StateToSet(%d), RfOffReason(%#X)\0A\00", align 1
@.str.6 = private unnamed_addr constant [99 x i8] c"MgntActSet_RF_State(): Action is rejected.... StateToSet(%d), ChangeSource(%#X), RfOffReason(%#X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"<===MgntActSet_RF_State()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @MgntActSet_RF_State(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.r8192_priv*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %14)
  store %struct.r8192_priv* %15, %struct.r8192_priv** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %16 = load i32, i32* @COMP_POWER, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %16, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %3, %62
  %20 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %21 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %13, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %25 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %19
  %29 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %30 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %29, i32 0, i32 1
  %31 = load i64, i64* %13, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @COMP_POWER, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %33, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %53, %28
  %37 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %38 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @COMP_POWER, align 4
  %45 = load i32, i32* %12, align 4
  %46 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %45)
  %47 = call i32 @udelay(i32 1000)
  %48 = load i32, i32* %12, align 4
  %49 = icmp sgt i32 %48, 100
  br i1 %49, label %50, label %53

50:                                               ; preds = %41
  %51 = load i32, i32* @COMP_ERR, align 4
  %52 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %51, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %189

53:                                               ; preds = %41
  br label %36

54:                                               ; preds = %36
  br label %62

55:                                               ; preds = %19
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 1
  %60 = load i64, i64* %13, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  br label %63

62:                                               ; preds = %54
  br label %19

63:                                               ; preds = %55
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %11, align 4
  %69 = load i32, i32* %6, align 4
  switch i32 %69, label %136 [
    i32 129, label %70
    i32 130, label %108
    i32 128, label %128
  ]

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  %72 = xor i32 %71, -1
  %73 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %74 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %73, i32 0, i32 2
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, %72
  store i32 %78, i32* %76, align 4
  %79 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %80 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %79, i32 0, i32 2
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %70
  %86 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %87 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %86, i32 0, i32 2
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 1
  store i32 0, i32* %89, align 4
  store i32 1, i32* %9, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 130
  br i1 %91, label %92, label %97

92:                                               ; preds = %85
  %93 = load i32, i32* %7, align 4
  %94 = load i32, i32* @RF_CHANGE_BY_HW, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %92
  store i32 1, i32* %10, align 4
  br label %97

97:                                               ; preds = %96, %92, %85
  br label %107

98:                                               ; preds = %70
  %99 = load i32, i32* @COMP_POWER, align 4
  %100 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %101 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %100, i32 0, i32 2
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %7, align 4
  %106 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %99, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.4, i64 0, i64 0), i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %98, %97
  br label %137

108:                                              ; preds = %63
  %109 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %110 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %109, i32 0, i32 2
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @RF_CHANGE_BY_IPS, align 4
  %115 = icmp sgt i32 %113, %114
  br i1 %115, label %116, label %120

116:                                              ; preds = %108
  %117 = load %struct.net_device*, %struct.net_device** %5, align 8
  %118 = load i32, i32* @disas_lv_ss, align 4
  %119 = call i32 @MgntDisconnect(%struct.net_device* %117, i32 %118)
  br label %120

120:                                              ; preds = %116, %108
  %121 = load i32, i32* %7, align 4
  %122 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %123 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = or i32 %126, %121
  store i32 %127, i32* %125, align 4
  store i32 1, i32* %9, align 4
  br label %137

128:                                              ; preds = %63
  %129 = load i32, i32* %7, align 4
  %130 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %131 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %130, i32 0, i32 2
  %132 = load %struct.TYPE_2__*, %struct.TYPE_2__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = or i32 %134, %129
  store i32 %135, i32* %133, align 4
  store i32 1, i32* %9, align 4
  br label %137

136:                                              ; preds = %63
  br label %137

137:                                              ; preds = %136, %128, %120, %107
  %138 = load i32, i32* %9, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %137
  %141 = load i32, i32* @COMP_POWER, align 4
  %142 = load i32, i32* %6, align 4
  %143 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %144 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %143, i32 0, i32 2
  %145 = load %struct.TYPE_2__*, %struct.TYPE_2__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %141, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.5, i64 0, i64 0), i32 %142, i32 %147)
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @SetRFPowerState(%struct.net_device* %149, i32 %150)
  %152 = load i32, i32* %6, align 4
  %153 = icmp eq i32 %152, 129
  br i1 %153, label %154, label %159

154:                                              ; preds = %140
  %155 = load i32, i32* %10, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %158

157:                                              ; preds = %154
  br label %158

158:                                              ; preds = %157, %154
  br label %164

159:                                              ; preds = %140
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 130
  br i1 %161, label %162, label %163

162:                                              ; preds = %159
  br label %163

163:                                              ; preds = %162, %159
  br label %164

164:                                              ; preds = %163, %158
  br label %175

165:                                              ; preds = %137
  %166 = load i32, i32* @COMP_POWER, align 4
  %167 = load i32, i32* %6, align 4
  %168 = load i32, i32* %7, align 4
  %169 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %170 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %169, i32 0, i32 2
  %171 = load %struct.TYPE_2__*, %struct.TYPE_2__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %166, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str.6, i64 0, i64 0), i32 %167, i32 %168, i32 %173)
  br label %175

175:                                              ; preds = %165, %164
  %176 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %177 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %176, i32 0, i32 1
  %178 = load i64, i64* %13, align 8
  %179 = call i32 @spin_lock_irqsave(i32* %177, i64 %178)
  %180 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %181 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %180, i32 0, i32 0
  store i32 0, i32* %181, align 8
  %182 = load %struct.r8192_priv*, %struct.r8192_priv** %8, align 8
  %183 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %182, i32 0, i32 1
  %184 = load i64, i64* %13, align 8
  %185 = call i32 @spin_unlock_irqrestore(i32* %183, i64 %184)
  %186 = load i32, i32* @COMP_POWER, align 4
  %187 = call i32 (i32, i8*, ...) @RT_TRACE(i32 %186, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %188 = load i32, i32* %9, align 4
  store i32 %188, i32* %4, align 4
  br label %189

189:                                              ; preds = %175, %50
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, ...) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @MgntDisconnect(%struct.net_device*, i32) #1

declare dso_local i32 @SetRFPowerState(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
