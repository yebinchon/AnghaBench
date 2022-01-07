; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxFreeBuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxFreeBuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.agg_tid_rx**, %struct.agg_tid_rx** }
%struct.agg_tid_rx = type { i64, i64, i32, i32 (i32*, %struct.TYPE_7__*)*, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_5__ = type { i32* }

@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_6__* null, align 8
@ZM_AGG_BAW_SIZE = common dso_local global i64 0, align 8
@ZM_MAX_STA_SUPPORT = common dso_local global i32 0, align 4
@ZM_SUCCESS = common dso_local global i64 0, align 8
@BAW = common dso_local global %struct.agg_tid_rx* null, align 8
@ZM_AGG_BAW_MASK = common dso_local global i32 0, align 4
@ZM_LV_0 = common dso_local global i32 0, align 4
@tid_baw = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggRxFreeBuf(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.agg_tid_rx*, align 8
  %8 = alloca %struct.agg_tid_rx*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32*, i32** %3, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = call i32 (...) @zmw_declare_for_critical_section()
  store i64 0, i64* %5, align 8
  br label %13

13:                                               ; preds = %121, %2
  %14 = load i64, i64* %5, align 8
  %15 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %124

17:                                               ; preds = %13
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %20, i64 %21
  %23 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %22, align 8
  store %struct.agg_tid_rx* %23, %struct.agg_tid_rx** %7, align 8
  store i64 0, i64* %9, align 8
  br label %24

24:                                               ; preds = %53, %17
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @ZM_AGG_BAW_SIZE, align 8
  %27 = icmp ule i64 %25, %26
  br i1 %27, label %28, label %56

28:                                               ; preds = %24
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @zmw_enter_critical_section(i32* %29)
  %31 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %32 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %31, i32 0, i32 6
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i64, i64* %9, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %6, align 8
  %38 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %39 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %38, i32 0, i32 6
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32* null, i32** %43, align 8
  %44 = load i32*, i32** %3, align 8
  %45 = call i32 @zmw_leave_critical_section(i32* %44)
  %46 = load i32*, i32** %6, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %52

48:                                               ; preds = %28
  %49 = load i32*, i32** %3, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @zfwBufFree(i32* %49, i32* %50, i32 0)
  br label %52

52:                                               ; preds = %48, %28
  br label %53

53:                                               ; preds = %52
  %54 = load i64, i64* %9, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %9, align 8
  br label %24

56:                                               ; preds = %24
  %57 = load i32*, i32** %3, align 8
  %58 = call i32 @zmw_enter_critical_section(i32* %57)
  %59 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %60 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %59, i32 0, i32 5
  store i64 0, i64* %60, align 8
  %61 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %62 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %61, i32 0, i32 1
  store i64 0, i64* %62, align 8
  %63 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %64 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load i32, i32* @ZM_MAX_STA_SUPPORT, align 4
  %66 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %7, align 8
  %67 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %66, i32 0, i32 4
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %3, align 8
  %69 = call i32 @zmw_leave_critical_section(i32* %68)
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %71, align 8
  %73 = load i64, i64* %5, align 8
  %74 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %72, i64 %73
  %75 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %74, align 8
  %76 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 1, %77
  br i1 %78, label %79, label %100

79:                                               ; preds = %56
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %81, align 8
  %83 = load i64, i64* %5, align 8
  %84 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %82, i64 %83
  %85 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %84, align 8
  store %struct.agg_tid_rx* %85, %struct.agg_tid_rx** %8, align 8
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %8, align 8
  %88 = call i32* @zfAggTxGetVtxq(i32* %86, %struct.agg_tid_rx* %87)
  store i32* %88, i32** %6, align 8
  br label %89

89:                                               ; preds = %92, %79
  %90 = load i32*, i32** %6, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %99

92:                                               ; preds = %89
  %93 = load i32*, i32** %3, align 8
  %94 = load i32*, i32** %6, align 8
  %95 = call i32 @zfwBufFree(i32* %93, i32* %94, i32 0)
  %96 = load i32*, i32** %3, align 8
  %97 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %8, align 8
  %98 = call i32* @zfAggTxGetVtxq(i32* %96, %struct.agg_tid_rx* %97)
  store i32* %98, i32** %6, align 8
  br label %89

99:                                               ; preds = %89
  br label %100

100:                                              ; preds = %99, %56
  %101 = load i64, i64* %4, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %100
  %104 = load i32*, i32** %3, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 1
  %107 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %106, align 8
  %108 = load i64, i64* %5, align 8
  %109 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %107, i64 %108
  %110 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %109, align 8
  %111 = call i32 @zfwMemFree(i32* %104, %struct.agg_tid_rx* %110, i32 4)
  %112 = load i32*, i32** %3, align 8
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** @wd, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %114, align 8
  %116 = load i64, i64* %5, align 8
  %117 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %115, i64 %116
  %118 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %117, align 8
  %119 = call i32 @zfwMemFree(i32* %112, %struct.agg_tid_rx* %118, i32 56)
  br label %120

120:                                              ; preds = %103, %100
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %5, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %5, align 8
  br label %13

124:                                              ; preds = %13
  %125 = load i64, i64* @ZM_SUCCESS, align 8
  ret i64 %125
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfwBufFree(i32*, i32*, i32) #1

declare dso_local i32* @zfAggTxGetVtxq(i32*, %struct.agg_tid_rx*) #1

declare dso_local i32 @zfwMemFree(i32*, %struct.agg_tid_rx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
