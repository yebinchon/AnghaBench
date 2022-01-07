; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxDeleteQueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggTxDeleteQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.aggSta*, %struct.aggQueue** }
%struct.aggSta = type { i64*, i32**, i64* }
%struct.aggQueue = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@wd = common dso_local global %struct.TYPE_2__* null, align 8
@ZM_LV_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"queue deleted! qnum=\00", align 1
@ZM_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggTxDeleteQueue(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.aggQueue*, align 8
  %8 = alloca %struct.aggSta*, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = call i32 @zmw_get_wlan_dev(i32* %9)
  %11 = call i32 (...) @zmw_declare_for_critical_section()
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.aggQueue**, %struct.aggQueue*** %13, align 8
  %15 = load i64, i64* %4, align 8
  %16 = getelementptr inbounds %struct.aggQueue*, %struct.aggQueue** %14, i64 %15
  %17 = load %struct.aggQueue*, %struct.aggQueue** %16, align 8
  store %struct.aggQueue* %17, %struct.aggQueue** %7, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.aggSta*, %struct.aggSta** %19, align 8
  %21 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %22 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.aggSta, %struct.aggSta* %20, i64 %23
  store %struct.aggSta* %24, %struct.aggSta** %8, align 8
  %25 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %26 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %5, align 8
  %28 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %29 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %6, align 8
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @zmw_enter_critical_section(i32* %31)
  %33 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %34 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %33, i32 0, i32 9
  store i64 0, i64* %34, align 8
  %35 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %36 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %38 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %37, i32 0, i32 8
  store i64 0, i64* %38, align 8
  %39 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %40 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %42 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %44 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %43, i32 0, i32 5
  store i64 0, i64* %44, align 8
  %45 = load %struct.aggQueue*, %struct.aggQueue** %7, align 8
  %46 = getelementptr inbounds %struct.aggQueue, %struct.aggQueue* %45, i32 0, i32 3
  store i64 0, i64* %46, align 8
  %47 = load %struct.aggSta*, %struct.aggSta** %8, align 8
  %48 = getelementptr inbounds %struct.aggSta, %struct.aggSta* %47, i32 0, i32 2
  %49 = load i64*, i64** %48, align 8
  %50 = load i64, i64* %5, align 8
  %51 = getelementptr inbounds i64, i64* %49, i64 %50
  store i64 0, i64* %51, align 8
  %52 = load %struct.aggSta*, %struct.aggSta** %8, align 8
  %53 = getelementptr inbounds %struct.aggSta, %struct.aggSta* %52, i32 0, i32 1
  %54 = load i32**, i32*** %53, align 8
  %55 = load i64, i64* %6, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  store i32* null, i32** %56, align 8
  %57 = load %struct.aggSta*, %struct.aggSta** %8, align 8
  %58 = getelementptr inbounds %struct.aggSta, %struct.aggSta* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  store i64 0, i64* %61, align 8
  %62 = load i32*, i32** %3, align 8
  %63 = call i32 @zmw_leave_critical_section(i32* %62)
  %64 = load i32, i32* @ZM_LV_0, align 4
  %65 = load i64, i64* %4, align 8
  %66 = call i32 @zm_msg1_agg(i32 %64, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i64 %65)
  %67 = load i64, i64* @ZM_SUCCESS, align 8
  ret i64 %67
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg1_agg(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
