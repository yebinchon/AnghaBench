; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpPowerSaveSetState.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/hal/extr_hpmain.c_zfHpPowerSaveSetState.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.zsHpPriv* }
%struct.zsHpPriv = type { i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_CH_G_14 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfHpPowerSaveSetState(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.zsHpPriv*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.zsHpPriv*, %struct.zsHpPriv** %9, align 8
  store %struct.zsHpPriv* %10, %struct.zsHpPriv** %5, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = call i32 @reg_write(i32 38956, i32 40960)
  %15 = call i32 @reg_write(i32 38920, i32 0)
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.zsHpPriv*, %struct.zsHpPriv** %17, align 8
  %19 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ZM_CH_G_14, align 8
  %22 = icmp sle i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %13
  %24 = call i32 @reg_write(i32 39152, i32 29491352)
  br label %27

25:                                               ; preds = %13
  %26 = call i32 @reg_write(i32 39152, i32 21102744)
  br label %27

27:                                               ; preds = %25, %23
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @zfFlushDelayWrite(i32* %28)
  br label %47

30:                                               ; preds = %2
  %31 = call i32 @reg_write(i32 38920, i32 134217728)
  %32 = call i32 @reg_write(i32 38956, i32 -1610571776)
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load %struct.zsHpPriv*, %struct.zsHpPriv** %34, align 8
  %36 = getelementptr inbounds %struct.zsHpPriv, %struct.zsHpPriv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ZM_CH_G_14, align 8
  %39 = icmp sle i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i32 @reg_write(i32 39152, i32 12582936)
  br label %44

42:                                               ; preds = %30
  %43 = call i32 @reg_write(i32 39152, i32 4194328)
  br label %44

44:                                               ; preds = %42, %40
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @zfFlushDelayWrite(i32* %45)
  br label %47

47:                                               ; preds = %44, %27
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @reg_write(i32, i32) #1

declare dso_local i32 @zfFlushDelayWrite(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
