; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_CCK_Tx_Power_Track_BW_Switch_TSSI.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/extr_r819xE_phy.c_CCK_Tx_Power_Track_BW_Switch_TSSI.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.r8192_priv = type { i32, i8*, %struct.TYPE_4__*, i64, i64, i64, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@CCKTxBBGainTableLength = common dso_local global i32 0, align 4
@COMP_POWER_TRACKING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"20M, priv->CCKPresentAttentuation = %d\0A\00", align 1
@TRUE = common dso_local global i8* null, align 8
@FALSE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"40M, priv->CCKPresentAttentuation = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @CCK_Tx_Power_Track_BW_Switch_TSSI to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CCK_Tx_Power_Track_BW_Switch_TSSI(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %7 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %185 [
    i32 129, label %9
    i32 128, label %97
  ]

9:                                                ; preds = %1
  %10 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %11 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %10, i32 0, i32 6
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %14 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = add nsw i64 %12, %15
  %17 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %18 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %20 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %23 = sub nsw i32 %22, 1
  %24 = sext i32 %23 to i64
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %9
  %27 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %28 = sub nsw i32 %27, 1
  %29 = sext i32 %28 to i64
  %30 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %31 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %30, i32 0, i32 3
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %26, %9
  %33 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %34 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp slt i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %39 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  br label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %42 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %43 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %42, i32 0, i32 3
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @RT_TRACE(i32 %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %47 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 14
  br i1 %52, label %53, label %67

53:                                               ; preds = %40
  %54 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %55 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %54, i32 0, i32 1
  %56 = load i8*, i8** %55, align 8
  %57 = icmp ne i8* %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %53
  %59 = load i8*, i8** @TRUE, align 8
  %60 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %61 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %60, i32 0, i32 1
  store i8* %59, i8** %61, align 8
  %62 = load %struct.net_device*, %struct.net_device** %2, align 8
  %63 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %64 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %63, i32 0, i32 1
  %65 = load i8*, i8** %64, align 8
  %66 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %62, i8* %65)
  br label %96

67:                                               ; preds = %53, %40
  %68 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %69 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 14
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %77 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %76, i32 0, i32 1
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %80, label %89

80:                                               ; preds = %75
  %81 = load i8*, i8** @FALSE, align 8
  %82 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %83 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %82, i32 0, i32 1
  store i8* %81, i8** %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %86 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %85, i32 0, i32 1
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %84, i8* %87)
  br label %95

89:                                               ; preds = %75, %67
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %92 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %91, i32 0, i32 1
  %93 = load i8*, i8** %92, align 8
  %94 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %90, i8* %93)
  br label %95

95:                                               ; preds = %89, %80
  br label %96

96:                                               ; preds = %95, %58
  br label %185

97:                                               ; preds = %1
  %98 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %99 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %98, i32 0, i32 5
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %102 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %101, i32 0, i32 4
  %103 = load i64, i64* %102, align 8
  %104 = add nsw i64 %100, %103
  %105 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %106 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %105, i32 0, i32 3
  store i64 %104, i64* %106, align 8
  %107 = load i32, i32* @COMP_POWER_TRACKING, align 4
  %108 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %109 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @RT_TRACE(i32 %107, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i64 %110)
  %112 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %113 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %116 = sub nsw i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = icmp sgt i64 %114, %117
  br i1 %118, label %119, label %125

119:                                              ; preds = %97
  %120 = load i32, i32* @CCKTxBBGainTableLength, align 4
  %121 = sub nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %124 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %119, %97
  %126 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %127 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %126, i32 0, i32 3
  %128 = load i64, i64* %127, align 8
  %129 = icmp slt i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %125
  %131 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %132 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %131, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %133

133:                                              ; preds = %130, %125
  %134 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %135 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %134, i32 0, i32 2
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = icmp eq i32 %139, 14
  br i1 %140, label %141, label %155

141:                                              ; preds = %133
  %142 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %143 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %142, i32 0, i32 1
  %144 = load i8*, i8** %143, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %155, label %146

146:                                              ; preds = %141
  %147 = load i8*, i8** @TRUE, align 8
  %148 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %149 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %148, i32 0, i32 1
  store i8* %147, i8** %149, align 8
  %150 = load %struct.net_device*, %struct.net_device** %2, align 8
  %151 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %152 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %151, i32 0, i32 1
  %153 = load i8*, i8** %152, align 8
  %154 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %150, i8* %153)
  br label %184

155:                                              ; preds = %141, %133
  %156 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %157 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %156, i32 0, i32 2
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = icmp ne i32 %161, 14
  br i1 %162, label %163, label %177

163:                                              ; preds = %155
  %164 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %165 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = icmp ne i8* %166, null
  br i1 %167, label %168, label %177

168:                                              ; preds = %163
  %169 = load i8*, i8** @FALSE, align 8
  %170 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %171 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %170, i32 0, i32 1
  store i8* %169, i8** %171, align 8
  %172 = load %struct.net_device*, %struct.net_device** %2, align 8
  %173 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %174 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %173, i32 0, i32 1
  %175 = load i8*, i8** %174, align 8
  %176 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %172, i8* %175)
  br label %183

177:                                              ; preds = %163, %155
  %178 = load %struct.net_device*, %struct.net_device** %2, align 8
  %179 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %180 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %179, i32 0, i32 1
  %181 = load i8*, i8** %180, align 8
  %182 = call i32 @dm_cck_txpower_adjust(%struct.net_device* %178, i8* %181)
  br label %183

183:                                              ; preds = %177, %168
  br label %184

184:                                              ; preds = %183, %146
  br label %185

185:                                              ; preds = %1, %184, %96
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @RT_TRACE(i32, i8*, i64) #1

declare dso_local i32 @dm_cck_txpower_adjust(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
