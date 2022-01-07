; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniOfdmErrTrigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniOfdmErrTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.zsAniState = type { i64, i64, i64, i64, i64, i64 }
%struct.zsHpPriv = type { i32, %struct.zsAniState* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_HAL_PROCESS_ANI = common dso_local global i32 0, align 4
@ZM_HAL_NOISE_IMMUNE_MAX = common dso_local global i64 0, align 8
@ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ZM_HAL_SPUR_IMMUNE_MAX = common dso_local global i64 0, align 8
@ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@ZM_HAL_FIRST_STEP_MAX = common dso_local global i64 0, align 8
@ZM_HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpAniOfdmErrTrigger(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsAniState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.zsHpPriv*
  store %struct.zsHpPriv* %11, %struct.zsHpPriv** %5, align 8
  %12 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %13 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @ZM_HAL_PROCESS_ANI, align 4
  %16 = and i32 %14, %15
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  br label %144

19:                                               ; preds = %1
  %20 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %21 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %20, i32 0, i32 1
  %22 = load %struct.zsAniState*, %struct.zsAniState** %21, align 8
  store %struct.zsAniState* %22, %struct.zsAniState** %3, align 8
  %23 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %24 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ZM_HAL_NOISE_IMMUNE_MAX, align 8
  %27 = icmp slt i64 %25, %26
  br i1 %27, label %28, label %36

28:                                               ; preds = %19
  %29 = load i32*, i32** %2, align 8
  %30 = load i32, i32* @ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %31 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %32 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, 1
  %35 = call i32 @zfHpAniControl(i32* %29, i32 %30, i64 %34)
  br label %144

36:                                               ; preds = %19
  %37 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %38 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @ZM_HAL_SPUR_IMMUNE_MAX, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32*, i32** %2, align 8
  %44 = load i32, i32* @ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %45 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %46 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @zfHpAniControl(i32* %43, i32 %44, i64 %48)
  br label %144

50:                                               ; preds = %36
  %51 = load i32*, i32** %2, align 8
  %52 = call i64 @BEACON_RSSI(i32* %51)
  store i64 %52, i64* %4, align 8
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %55 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %53, %56
  br i1 %57, label %58, label %86

58:                                               ; preds = %50
  %59 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %60 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %58
  %64 = load i32*, i32** %2, align 8
  %65 = load i32, i32* @ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %66 = load i64, i64* @FALSE, align 8
  %67 = call i32 @zfHpAniControl(i32* %64, i32 %65, i64 %66)
  %68 = load i32*, i32** %2, align 8
  %69 = load i32, i32* @ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %70 = call i32 @zfHpAniControl(i32* %68, i32 %69, i64 0)
  br label %144

71:                                               ; preds = %58
  %72 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %73 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %72, i32 0, i32 3
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @ZM_HAL_FIRST_STEP_MAX, align 8
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %71
  %78 = load i32*, i32** %2, align 8
  %79 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %80 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %81 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, 1
  %84 = call i32 @zfHpAniControl(i32* %78, i32 %79, i64 %83)
  br label %144

85:                                               ; preds = %71
  br label %144

86:                                               ; preds = %50
  %87 = load i64, i64* %4, align 8
  %88 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %89 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp sgt i64 %87, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %86
  %93 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %94 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %93, i32 0, i32 5
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i32*, i32** %2, align 8
  %99 = load i32, i32* @ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %100 = load i64, i64* @TRUE, align 8
  %101 = call i32 @zfHpAniControl(i32* %98, i32 %99, i64 %100)
  br label %102

102:                                              ; preds = %97, %92
  %103 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %104 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %103, i32 0, i32 3
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @ZM_HAL_FIRST_STEP_MAX, align 8
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %108, label %116

108:                                              ; preds = %102
  %109 = load i32*, i32** %2, align 8
  %110 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %111 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %112 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %111, i32 0, i32 3
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %113, 1
  %115 = call i32 @zfHpAniControl(i32* %109, i32 %110, i64 %114)
  br label %116

116:                                              ; preds = %108, %102
  br label %144

117:                                              ; preds = %86
  %118 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp slt i32 %120, 3000
  br i1 %121, label %122, label %142

122:                                              ; preds = %117
  %123 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %124 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %123, i32 0, i32 5
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %132, label %127

127:                                              ; preds = %122
  %128 = load i32*, i32** %2, align 8
  %129 = load i32, i32* @ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %130 = load i64, i64* @FALSE, align 8
  %131 = call i32 @zfHpAniControl(i32* %128, i32 %129, i64 %130)
  br label %132

132:                                              ; preds = %127, %122
  %133 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %134 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %133, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp sgt i64 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %132
  %138 = load i32*, i32** %2, align 8
  %139 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %140 = call i32 @zfHpAniControl(i32* %138, i32 %139, i64 0)
  br label %141

141:                                              ; preds = %137, %132
  br label %144

142:                                              ; preds = %117
  br label %143

143:                                              ; preds = %142
  br label %144

144:                                              ; preds = %18, %28, %42, %63, %77, %116, %141, %143, %85
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zfHpAniControl(i32*, i32, i64) #1

declare dso_local i64 @BEACON_RSSI(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
