; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniCckErrTrigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpani.c_zfHpAniCckErrTrigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }
%struct.zsAniState = type { i64, i64, i64 }
%struct.zsHpPriv = type { i32, %struct.zsAniState* }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_HAL_PROCESS_ANI = common dso_local global i32 0, align 4
@ZM_HAL_NOISE_IMMUNE_MAX = common dso_local global i64 0, align 8
@ZM_HAL_ANI_NOISE_IMMUNITY_LEVEL = common dso_local global i32 0, align 4
@ZM_HAL_FIRST_STEP_MAX = common dso_local global i64 0, align 8
@ZM_HAL_ANI_FIRSTEP_LEVEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpAniCckErrTrigger(i32* %0) #0 {
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
  br label %75

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
  br label %75

36:                                               ; preds = %19
  %37 = load i32*, i32** %2, align 8
  %38 = call i64 @BEACON_RSSI(i32* %37)
  store i64 %38, i64* %4, align 8
  %39 = load i64, i64* %4, align 8
  %40 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %41 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp sgt i64 %39, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %36
  %45 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %46 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ZM_HAL_FIRST_STEP_MAX, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32*, i32** %2, align 8
  %52 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %53 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %54 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %55, 1
  %57 = call i32 @zfHpAniControl(i32* %51, i32 %52, i64 %56)
  br label %58

58:                                               ; preds = %50, %44
  br label %75

59:                                               ; preds = %36
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %62, 3000
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.zsAniState*, %struct.zsAniState** %3, align 8
  %66 = getelementptr inbounds %struct.zsAniState, %struct.zsAniState* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = icmp sgt i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32*, i32** %2, align 8
  %71 = load i32, i32* @ZM_HAL_ANI_FIRSTEP_LEVEL, align 4
  %72 = call i32 @zfHpAniControl(i32* %70, i32 %71, i64 0)
  br label %73

73:                                               ; preds = %69, %64
  br label %74

74:                                               ; preds = %73, %59
  br label %75

75:                                               ; preds = %18, %28, %74, %58
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
