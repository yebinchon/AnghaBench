; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanUpdateRxRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_ccmd.c_zfWlanUpdateRxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i64 }
%struct.zsAdditionInfo = type { i32*, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@wd = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfWlanUpdateRxRate(i32* %0, %struct.zsAdditionInfo* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.zsAdditionInfo*, align 8
  %5 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store %struct.zsAdditionInfo* %1, %struct.zsAdditionInfo** %4, align 8
  %6 = load i32*, i32** %3, align 8
  %7 = call i32 @zmw_get_wlan_dev(i32* %6)
  %8 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %9 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = and i32 %12, 16
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %90

15:                                               ; preds = %2
  %16 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %17 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = and i32 %20, 3
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %64 [
    i32 0, label %27
    i32 1, label %38
    i32 2, label %49
  ]

27:                                               ; preds = %15
  %28 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %29 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 0
  %32 = load i32, i32* %31, align 4
  %33 = and i32 %32, 255
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  store i32 0, i32* %37, align 8
  br label %65

38:                                               ; preds = %15
  %39 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %40 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 15
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 0, i32* %48, align 8
  br label %65

49:                                               ; preds = %15
  %50 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %51 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.zsAdditionInfo*, %struct.zsAdditionInfo** %4, align 8
  %58 = getelementptr inbounds %struct.zsAdditionInfo, %struct.zsAdditionInfo* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 6
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %65

64:                                               ; preds = %15
  br label %65

65:                                               ; preds = %64, %49, %38, %27
  %66 = load i32*, i32** %3, align 8
  %67 = call i64 @zfUpdateRxRate(i32* %66)
  store i64 %67, i64* %5, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 1
  br i1 %71, label %72, label %83

72:                                               ; preds = %65
  %73 = load i64, i64* %5, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = icmp sgt i64 %73, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i64, i64* %5, align 8
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 4
  store i64 %79, i64* %81, align 8
  br label %82

82:                                               ; preds = %78, %72
  br label %89

83:                                               ; preds = %65
  %84 = load i64, i64* %5, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %89

89:                                               ; preds = %83, %82
  br label %90

90:                                               ; preds = %89, %2
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i64 @zfUpdateRxRate(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
