; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniLowerImmunity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniLowerImmunity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.zsAniState = type { i64, i64, i64, i64, i64, i64 }
%struct.zsHpPriv = type { %struct.zsAniState* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ZM_HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4
@ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpAniLowerImmunity(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.zsAniState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %2, align 8
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.zsHpPriv*
  store %struct.zsHpPriv* %11, %struct.zsHpPriv** %5, align 8
  %12 = load %struct.zsHpPriv*, %struct.zsHpPriv** %5, align 8
  %13 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %12, i32 0, i32 0
  %14 = load %struct.zsAniState*, %struct.zsAniState** %13, align 8
  store %struct.zsAniState* %14, %struct.zsAniState** %3, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @BEACON_RSSI(i32* %15)
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %19 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp sgt i64 %17, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %68

23:                                               ; preds = %1
  %24 = load i64, i64* %4, align 8
  %25 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %26 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp sgt i64 %24, %27
  br i1 %28, label %29, label %53

29:                                               ; preds = %23
  %30 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %31 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load i32*, i32** %2, align 8
  %36 = load i32, i32* @ZM_HAL_ANI_OFDM_WEAK_SIGNAL_DETECTION, align 4
  %37 = load i64, i64* @TRUE, align 8
  %38 = call i32 @zfHpAniControl(i32* %35, i32 %36, i64 %37)
  br label %94

39:                                               ; preds = %29
  %40 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %41 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %39
  %45 = load i32*, i32** %2, align 8
  %46 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %47 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %48 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %49, 1
  %51 = call i32 @zfHpAniControl(i32* %45, i32 %46, i64 %50)
  br label %94

52:                                               ; preds = %39
  br label %67

53:                                               ; preds = %23
  %54 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %55 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %53
  %59 = load i32*, i32** %2, align 8
  %60 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %61 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %62 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %63, 1
  %65 = call i32 @zfHpAniControl(i32* %59, i32 %60, i64 %64)
  br label %94

66:                                               ; preds = %53
  br label %67

67:                                               ; preds = %66, %52
  br label %68

68:                                               ; preds = %67, %22
  %69 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %70 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %69, i32 0, i32 3
  %71 = load i64, i64* %70, align 8
  %72 = icmp sgt i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32*, i32** %2, align 8
  %75 = load i32, i32* @ZM_HAL_ANI_SPUR_IMMUNITY_LEVEL, align 4
  %76 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %77 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %76, i32 0, i32 3
  %78 = load i64, i64* %77, align 8
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @zfHpAniControl(i32* %74, i32 %75, i64 %79)
  br label %94

81:                                               ; preds = %68
  %82 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %83 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %82, i32 0, i32 4
  %84 = load i64, i64* %83, align 8
  %85 = icmp sgt i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %81
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* @ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL, align 4
  %89 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %90 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %89, i32 0, i32 4
  %91 = load i64, i64* %90, align 8
  %92 = sub nsw i64 %91, 1
  %93 = call i32 @zfHpAniControl(i32* %87, i32 %88, i64 %92)
  br label %94

94:                                               ; preds = %34, %44, %58, %73, %86, %81
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @BEACON_RSSI(i32*) #1

declare dso_local i32 @zfHpAniControl(i32*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
