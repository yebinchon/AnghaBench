; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxFlush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxFlush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (i32*, i32*, %struct.zsAdditionInfo*)* }
%struct.zsAdditionInfo = type { i32 }
%struct.agg_tid_rx = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@ZM_AGG_BAW_MASK = common dso_local global i32 0, align 4
@wd = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfAggRxFlush(i32* %0, i32 %1, %struct.agg_tid_rx* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.agg_tid_rx*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.zsAdditionInfo, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.agg_tid_rx* %2, %struct.agg_tid_rx** %6, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = call i32 @zmw_get_wlan_dev(i32* %10)
  %12 = call i32 (...) @zmw_declare_for_critical_section()
  %13 = load i32*, i32** %4, align 8
  %14 = call i32 @ZM_PERFORMANCE_RX_FLUSH(i32* %13)
  br label %15

15:                                               ; preds = %3, %105
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %19 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %22 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %20, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %15
  %26 = load i32*, i32** %4, align 8
  %27 = call i32 @zmw_leave_critical_section(i32* %26)
  br label %106

28:                                               ; preds = %15
  %29 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %30 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %29, i32 0, i32 3
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %33 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %7, align 8
  %38 = bitcast %struct.zsAdditionInfo* %9 to i8*
  %39 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %40 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %39, i32 0, i32 3
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %43 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = bitcast i32* %46 to i8*
  %48 = call i32 @zfwMemoryCopy(i8* %38, i8* %47, i32 4)
  %49 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %50 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %49, i32 0, i32 3
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %53 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  store i32* null, i32** %56, align 8
  %57 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %58 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add i64 %59, 1
  %61 = load i32, i32* @ZM_AGG_BAW_MASK, align 4
  %62 = sext i32 %61 to i64
  %63 = and i64 %60, %62
  %64 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %65 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %64, i32 0, i32 0
  store i64 %63, i64* %65, align 8
  %66 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %67 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  %70 = and i32 %69, 4095
  %71 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %72 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 8
  %73 = load i32*, i32** %4, align 8
  %74 = call i32 @zmw_leave_critical_section(i32* %73)
  %75 = load i32*, i32** %7, align 8
  %76 = icmp ne i32* %75, null
  br i1 %76, label %77, label %105

77:                                               ; preds = %28
  %78 = load i32*, i32** %4, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = call i32 @ZM_PERFORMANCE_RX_SEQ(i32* %78, i32* %79)
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 0
  %83 = load i32 (i32*, i32*, %struct.zsAdditionInfo*)*, i32 (i32*, i32*, %struct.zsAdditionInfo*)** %82, align 8
  %84 = icmp ne i32 (i32*, i32*, %struct.zsAdditionInfo*)* %83, null
  br i1 %84, label %85, label %96

85:                                               ; preds = %77
  %86 = load i32*, i32** %4, align 8
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @zmw_rx_buf_readh(i32* %86, i32* %87, i32 22)
  %89 = ashr i32 %88, 4
  store i32 %89, i32* %8, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32 (i32*, i32*, %struct.zsAdditionInfo*)*, i32 (i32*, i32*, %struct.zsAdditionInfo*)** %91, align 8
  %93 = load i32*, i32** %4, align 8
  %94 = load i32*, i32** %7, align 8
  %95 = call i32 %92(i32* %93, i32* %94, %struct.zsAdditionInfo* %9)
  br label %104

96:                                               ; preds = %77
  %97 = load i32*, i32** %4, align 8
  %98 = load i32*, i32** %7, align 8
  %99 = call i32 @zmw_rx_buf_readh(i32* %97, i32* %98, i32 22)
  %100 = ashr i32 %99, 4
  store i32 %100, i32* %8, align 4
  %101 = load i32*, i32** %4, align 8
  %102 = load i32*, i32** %7, align 8
  %103 = call i32 @zfiRecv80211(i32* %101, i32* %102, %struct.zsAdditionInfo* %9)
  br label %104

104:                                              ; preds = %96, %85
  br label %105

105:                                              ; preds = %104, %28
  br label %15

106:                                              ; preds = %25
  %107 = load i32*, i32** %4, align 8
  %108 = call i32 @zmw_enter_critical_section(i32* %107)
  %109 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %110 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %109, i32 0, i32 0
  store i64 0, i64* %110, align 8
  %111 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %112 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %111, i32 0, i32 1
  store i64 0, i64* %112, align 8
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @zmw_leave_critical_section(i32* %113)
  ret i32 1
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @ZM_PERFORMANCE_RX_FLUSH(i32*) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zfwMemoryCopy(i8*, i8*, i32) #1

declare dso_local i32 @ZM_PERFORMANCE_RX_SEQ(i32*, i32*) #1

declare dso_local i32 @zmw_rx_buf_readh(i32*, i32*, i32) #1

declare dso_local i32 @zfiRecv80211(i32*, i32*, %struct.zsAdditionInfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
