; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxGetQueue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxGetQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.agg_tid_rx** }
%struct.agg_tid_rx = type { i64, i64 }

@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agg_tid_rx* @zfAggRxGetQueue(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i64], align 16
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.agg_tid_rx*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i64 0, i64* %9, align 8
  store %struct.agg_tid_rx* null, %struct.agg_tid_rx** %10, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = call i32 @zmw_get_wlan_dev(i32* %11)
  %13 = load i32*, i32** %3, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = load i64, i64* %9, align 8
  %16 = add i64 %15, 10
  %17 = trunc i64 %16 to i32
  %18 = call i32 @zmw_rx_buf_readh(i32* %13, i32* %14, i32 %17)
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load i32*, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i64, i64* %9, align 8
  %24 = add i64 %23, 12
  %25 = trunc i64 %24 to i32
  %26 = call i32 @zmw_rx_buf_readh(i32* %21, i32* %22, i32 %25)
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 1
  store i64 %27, i64* %28, align 8
  %29 = load i32*, i32** %3, align 8
  %30 = load i32*, i32** %4, align 8
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 14
  %33 = trunc i64 %32 to i32
  %34 = call i32 @zmw_rx_buf_readh(i32* %29, i32* %30, i32 %33)
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 2
  store i64 %35, i64* %36, align 16
  %37 = load i32*, i32** %3, align 8
  %38 = getelementptr inbounds [3 x i64], [3 x i64]* %5, i64 0, i64 0
  %39 = call i64 @zfApFindSta(i32* %37, i64* %38)
  store i64 %39, i64* %6, align 8
  %40 = load i32*, i32** %3, align 8
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @zmw_rx_buf_readh(i32* %40, i32* %41, i32 24)
  %43 = and i32 %42, 15
  %44 = sext i32 %43 to i64
  store i64 %44, i64* %7, align 8
  store i64 0, i64* %8, align 8
  br label %45

45:                                               ; preds = %79, %2
  %46 = load i64, i64* %8, align 8
  %47 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %48 = icmp ult i64 %46, %47
  br i1 %48, label %49, label %82

49:                                               ; preds = %45
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %51, align 8
  %53 = load i64, i64* %8, align 8
  %54 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %52, i64 %53
  %55 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %54, align 8
  %56 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %78

60:                                               ; preds = %49
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %62, align 8
  %64 = load i64, i64* %8, align 8
  %65 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %63, i64 %64
  %66 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %65, align 8
  %67 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %78

71:                                               ; preds = %60
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @wd, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %73, align 8
  %75 = load i64, i64* %8, align 8
  %76 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %74, i64 %75
  %77 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %76, align 8
  store %struct.agg_tid_rx* %77, %struct.agg_tid_rx** %10, align 8
  br label %82

78:                                               ; preds = %60, %49
  br label %79

79:                                               ; preds = %78
  %80 = load i64, i64* %8, align 8
  %81 = add i64 %80, 1
  store i64 %81, i64* %8, align 8
  br label %45

82:                                               ; preds = %71, %45
  %83 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %10, align 8
  ret %struct.agg_tid_rx* %83
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i64 @zfApFindSta(i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
