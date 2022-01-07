; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlFindMaxUDPTP.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ratectrl.c_zfRateCtrlFindMaxUDPTP.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.zsRcCell = type { i64, i64*, i64 }

@zcRate = common dso_local global i32* null, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfRateCtrlFindMaxUDPTP(i32* %0, %struct.zsRcCell* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsRcCell*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsRcCell* %1, %struct.zsRcCell** %4, align 8
  store i64 0, i64* %6, align 8
  store i64 0, i64* %8, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %13 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add i64 %14, 3
  %16 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %17 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = sub nsw i64 %18, 1
  %20 = call i64 @zm_agg_min(i64 %15, i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %22 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %5, align 8
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* %7, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %61

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** @zcRate, align 8
  %31 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %32 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32, i32* %30, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %43 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %5, align 8
  %46 = getelementptr inbounds i64, i64* %44, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %41, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @zfRateCtrlUDPTP(i32* %29, i32 %38, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %28
  %55 = load i64, i64* %9, align 8
  store i64 %55, i64* %8, align 8
  %56 = load i64, i64* %5, align 8
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %54, %28
  br label %58

58:                                               ; preds = %57
  %59 = load i64, i64* %5, align 8
  %60 = add i64 %59, 1
  store i64 %60, i64* %5, align 8
  br label %24

61:                                               ; preds = %24
  %62 = load %struct.zsRcCell*, %struct.zsRcCell** %4, align 8
  %63 = getelementptr inbounds %struct.zsRcCell, %struct.zsRcCell* %62, i32 0, i32 1
  %64 = load i64*, i64** %63, align 8
  %65 = load i64, i64* %6, align 8
  %66 = getelementptr inbounds i64, i64* %64, i64 %65
  %67 = load i64, i64* %66, align 8
  ret i64 %67
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zm_agg_min(i64, i64) #1

declare dso_local i64 @zfRateCtrlUDPTP(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
