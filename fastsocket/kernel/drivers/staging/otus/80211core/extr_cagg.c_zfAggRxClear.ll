; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxClear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/otus/80211core/extr_cagg.c_zfAggRxClear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.agg_tid_rx** }
%struct.agg_tid_rx = type { i64, i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@ZM_AGG_POOL_SIZE = common dso_local global i64 0, align 8
@wd = common dso_local global %struct.TYPE_4__* null, align 8
@ZM_AGG_BAW_MASK = common dso_local global i64 0, align 8
@ZM_AGG_CLEAR_TIME = common dso_local global i32 0, align 4
@ZM_LV_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"queue RxFlush by RxClear\00", align 1
@ZM_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @zfAggRxClear(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.agg_tid_rx*, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @zmw_get_wlan_dev(i32* %8)
  %10 = call i32 (...) @zmw_declare_for_critical_section()
  store i64 0, i64* %5, align 8
  br label %11

11:                                               ; preds = %91, %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @ZM_AGG_POOL_SIZE, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @zmw_enter_critical_section(i32* %16)
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @wd, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.agg_tid_rx**, %struct.agg_tid_rx*** %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = getelementptr inbounds %struct.agg_tid_rx*, %struct.agg_tid_rx** %20, i64 %21
  %23 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %22, align 8
  store %struct.agg_tid_rx* %23, %struct.agg_tid_rx** %6, align 8
  %24 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %25 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %28 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %88

31:                                               ; preds = %15
  %32 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %33 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %7, align 8
  br label %35

35:                                               ; preds = %53, %31
  %36 = load i64, i64* %7, align 8
  %37 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %38 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %36, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %43 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %42, i32 0, i32 2
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i64, i64* %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  %50 = xor i1 %49, true
  br label %51

51:                                               ; preds = %41, %35
  %52 = phi i1 [ false, %35 ], [ %50, %41 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load i64, i64* %7, align 8
  %55 = add i64 %54, 1
  %56 = load i64, i64* @ZM_AGG_BAW_MASK, align 8
  %57 = and i64 %55, %56
  store i64 %57, i64* %7, align 8
  br label %35

58:                                               ; preds = %51
  %59 = load i64, i64* %7, align 8
  %60 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %61 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %58
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %67 = getelementptr inbounds %struct.agg_tid_rx, %struct.agg_tid_rx* %66, i32 0, i32 2
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = load i64, i64* %7, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %65, %72
  %74 = load i32, i32* @ZM_AGG_CLEAR_TIME, align 4
  %75 = sub nsw i32 %74, 5
  %76 = icmp sgt i32 %73, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load i32*, i32** %3, align 8
  %79 = call i32 @zmw_leave_critical_section(i32* %78)
  %80 = load i32, i32* @ZM_LV_1, align 4
  %81 = call i32 @zm_msg0_agg(i32 %80, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %82 = load i32*, i32** %3, align 8
  %83 = load %struct.agg_tid_rx*, %struct.agg_tid_rx** %6, align 8
  %84 = call i32 @zfAggRxFlush(i32* %82, i32 0, %struct.agg_tid_rx* %83)
  %85 = load i32*, i32** %3, align 8
  %86 = call i32 @zmw_enter_critical_section(i32* %85)
  br label %87

87:                                               ; preds = %77, %64, %58
  br label %88

88:                                               ; preds = %87, %15
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @zmw_leave_critical_section(i32* %89)
  br label %91

91:                                               ; preds = %88
  %92 = load i64, i64* %5, align 8
  %93 = add i64 %92, 1
  store i64 %93, i64* %5, align 8
  br label %11

94:                                               ; preds = %11
  %95 = load i64, i64* @ZM_SUCCESS, align 8
  ret i64 %95
}

declare dso_local i32 @zmw_get_wlan_dev(i32*) #1

declare dso_local i32 @zmw_declare_for_critical_section(...) #1

declare dso_local i32 @zmw_enter_critical_section(i32*) #1

declare dso_local i32 @zmw_leave_critical_section(i32*) #1

declare dso_local i32 @zm_msg0_agg(i32, i8*) #1

declare dso_local i32 @zfAggRxFlush(i32*, i32, %struct.agg_tid_rx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
