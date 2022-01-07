; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfUpdateRxRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfUpdateRxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@zcIndextoRateBG = common dso_local global i32* null, align 8
@zcIndextoRateN40S = common dso_local global i32* null, align 8
@zcIndextoRateN40L = common dso_local global i32* null, align 8
@zcIndextoRateN20S = common dso_local global i32* null, align 8
@zcIndextoRateN20L = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfUpdateRxRate(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  store i32 130000, i32* %5, align 4
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %89 [
    i32 0, label %11
    i32 1, label %21
    i32 2, label %35
  ]

11:                                               ; preds = %1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 10, label %15
    i32 20, label %16
    i32 55, label %17
    i32 110, label %18
  ]

15:                                               ; preds = %11
  store i32 1000, i32* %5, align 4
  br label %20

16:                                               ; preds = %11
  store i32 2000, i32* %5, align 4
  br label %17

17:                                               ; preds = %11, %16
  store i32 5500, i32* %5, align 4
  br label %20

18:                                               ; preds = %11
  store i32 11000, i32* %5, align 4
  br label %20

19:                                               ; preds = %11
  br label %20

20:                                               ; preds = %19, %18, %17, %15
  br label %90

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp sle i32 %24, 15
  br i1 %25, label %26, label %34

26:                                               ; preds = %21
  %27 = load i32*, i32** @zcIndextoRateBG, align 8
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %26, %21
  br label %90

35:                                               ; preds = %1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 127
  store i32 %39, i32* %3, align 4
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 128
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %3, align 4
  %45 = icmp sle i32 %44, 15
  br i1 %45, label %46, label %88

46:                                               ; preds = %35
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %68

49:                                               ; preds = %46
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %52, 128
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32*, i32** @zcIndextoRateN40S, align 8
  %57 = load i32, i32* %3, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %5, align 4
  br label %67

61:                                               ; preds = %49
  %62 = load i32*, i32** @zcIndextoRateN40L, align 8
  %63 = load i32, i32* %3, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %61, %55
  br label %87

68:                                               ; preds = %46
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %71, 128
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %68
  %75 = load i32*, i32** @zcIndextoRateN20S, align 8
  %76 = load i32, i32* %3, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  store i32 %79, i32* %5, align 4
  br label %86

80:                                               ; preds = %68
  %81 = load i32*, i32** @zcIndextoRateN20L, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  %85 = load i32, i32* %84, align 4
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %80, %74
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %35
  br label %90

89:                                               ; preds = %1
  br label %90

90:                                               ; preds = %89, %88, %34, %20
  %91 = load i32, i32* %5, align 4
  ret i32 %91
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
