; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaGetTxRate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cmmsta.c_zfStaGetTxRate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i64* }

@wd = common dso_local global %struct.TYPE_8__* null, align 8
@ZM_MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@zcRateToPhyCtrl = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @zfStaGetTxRate(i32* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca [6 x i64], align 16
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %12 = load i32*, i32** %5, align 8
  %13 = call i32 @zmw_get_wlan_dev(i32* %12)
  %14 = call i32 (...) @zmw_declare_for_critical_section()
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %17 = call i32 @ZM_MAC_WORD_TO_BYTE(i32* %15, i64* %16)
  %18 = load i32*, i32** %7, align 8
  store i32 0, i32* %18, align 4
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ZM_MODE_INFRASTRUCTURE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %4
  %25 = load i32*, i32** %5, align 8
  %26 = call i32 @zmw_enter_critical_section(i32* %25)
  %27 = load i32*, i32** %5, align 8
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i64 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32*, i32** %8, align 8
  %35 = call i64 @zfRateCtrlGetTxRate(i32* %27, %struct.TYPE_7__* %33, i32* %34)
  store i64 %35, i64* %11, align 8
  %36 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %37 = load i64, i64* %11, align 8
  %38 = getelementptr inbounds i32, i32* %36, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @zmw_leave_critical_section(i32* %41)
  br label %110

43:                                               ; preds = %4
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @zmw_enter_critical_section(i32* %44)
  store i64 0, i64* %10, align 8
  br label %46

46:                                               ; preds = %104, %43
  %47 = load i64, i64* %10, align 8
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp ult i64 %47, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %46
  %54 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %55 = load i64, i64* %54, align 16
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %53
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load i64, i64* %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 0
  %66 = load i64*, i64** %65, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 0
  %68 = load i64, i64* %67, align 8
  store i64 %68, i64* %11, align 8
  %69 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %70 = load i64, i64* %11, align 8
  %71 = getelementptr inbounds i32, i32* %69, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = load i32*, i32** %7, align 8
  store i32 %72, i32* %73, align 4
  br label %107

74:                                               ; preds = %53
  %75 = getelementptr inbounds [6 x i64], [6 x i64]* %9, i64 0, i64 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @zfMemoryIsEqual(i64* %75, i32 %83, i32 6)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %74
  %87 = load i32*, i32** %5, align 8
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** @wd, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = load i64, i64* %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32*, i32** %8, align 8
  %96 = call i64 @zfRateCtrlGetTxRate(i32* %87, %struct.TYPE_7__* %94, i32* %95)
  store i64 %96, i64* %11, align 8
  %97 = load i32*, i32** @zcRateToPhyCtrl, align 8
  %98 = load i64, i64* %11, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32*, i32** %7, align 8
  store i32 %100, i32* %101, align 4
  br label %107

102:                                              ; preds = %74
  br label %103

103:                                              ; preds = %102
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %10, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %10, align 8
  br label %46

107:                                              ; preds = %86, %57, %46
  %108 = load i32*, i32** %5, align 8
  %109 = call i32 @zmw_leave_critical_section(i32* %108)
  br label %110

110:                                              ; preds = %107, %24
  ret void
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @ZM_MAC_WORD_TO_BYTE(i32*, i64*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i64 @zfRateCtrlGetTxRate(i32*, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i64 @zfMemoryIsEqual(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
