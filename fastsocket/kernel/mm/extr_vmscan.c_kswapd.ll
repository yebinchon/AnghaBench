; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_kswapd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/mm/extr_vmscan.c_kswapd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.reclaim_state* }
%struct.reclaim_state = type { i32 }
%struct.TYPE_5__ = type { i64, i32, i32 }
%struct.cpumask = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@wait = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PF_MEMALLOC = common dso_local global i32 0, align 4
@PF_SWAPWRITE = common dso_local global i32 0, align 4
@PF_KSWAPD = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@calculate_normal_threshold = common dso_local global i32 0, align 4
@calculate_pressure_threshold = common dso_local global i32 0, align 4
@KSWAPD_LOW_WMARK_HIT_QUICKLY = common dso_local global i32 0, align 4
@KSWAPD_HIGH_WMARK_HIT_QUICKLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @kswapd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kswapd(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.reclaim_state, align 4
  %7 = alloca %struct.cpumask*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = bitcast i8* %10 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %4, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  store %struct.task_struct* %12, %struct.task_struct** %5, align 8
  %13 = load i32, i32* @wait, align 4
  %14 = call i32 @DEFINE_WAIT(i32 %13)
  %15 = bitcast %struct.reclaim_state* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %15, i8 0, i64 4, i1 false)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = call %struct.cpumask* @cpumask_of_node(i32 %18)
  store %struct.cpumask* %19, %struct.cpumask** %7, align 8
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call i32 @lockdep_set_current_reclaim_state(i32 %20)
  %22 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %23 = call i32 @cpumask_empty(%struct.cpumask* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %29, label %25

25:                                               ; preds = %1
  %26 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %27 = load %struct.cpumask*, %struct.cpumask** %7, align 8
  %28 = call i32 @set_cpus_allowed_ptr(%struct.task_struct* %26, %struct.cpumask* %27)
  br label %29

29:                                               ; preds = %25, %1
  %30 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %31 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %30, i32 0, i32 1
  store %struct.reclaim_state* %6, %struct.reclaim_state** %31, align 8
  %32 = load i32, i32* @PF_MEMALLOC, align 4
  %33 = load i32, i32* @PF_SWAPWRITE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @PF_KSWAPD, align 4
  %36 = or i32 %34, %35
  %37 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %38 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  %41 = call i32 (...) @set_freezable()
  store i64 0, i64* %3, align 8
  br label %42

42:                                               ; preds = %126, %29
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %46 = call i32 @prepare_to_wait(i32* %44, i32* @wait, i32 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  store i64 %49, i64* %8, align 8
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i64 0, i64* %51, align 8
  %52 = load i64, i64* %3, align 8
  %53 = load i64, i64* %8, align 8
  %54 = icmp ult i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %3, align 8
  br label %111

57:                                               ; preds = %42
  %58 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %59 = call i32 @freezing(%struct.task_struct* %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %107, label %61

61:                                               ; preds = %57
  store i64 0, i64* %9, align 8
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %63 = load i64, i64* %3, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @sleeping_prematurely(%struct.TYPE_5__* %62, i64 %63, i64 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %78, label %67

67:                                               ; preds = %61
  %68 = load i32, i32* @HZ, align 4
  %69 = sdiv i32 %68, 10
  %70 = call i64 @schedule_timeout(i32 %69)
  store i64 %70, i64* %9, align 8
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = call i32 @finish_wait(i32* %72, i32* @wait)
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 2
  %76 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %77 = call i32 @prepare_to_wait(i32* %75, i32* @wait, i32 %76)
  br label %78

78:                                               ; preds = %67, %61
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %80 = load i64, i64* %3, align 8
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @sleeping_prematurely(%struct.TYPE_5__* %79, i64 %80, i64 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %96, label %84

84:                                               ; preds = %78
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @trace_mm_vmscan_kswapd_sleep(i32 %87)
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %90 = load i32, i32* @calculate_normal_threshold, align 4
  %91 = call i32 @set_pgdat_percpu_threshold(%struct.TYPE_5__* %89, i32 %90)
  %92 = call i32 (...) @schedule()
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %94 = load i32, i32* @calculate_pressure_threshold, align 4
  %95 = call i32 @set_pgdat_percpu_threshold(%struct.TYPE_5__* %93, i32 %94)
  br label %106

96:                                               ; preds = %78
  %97 = load i64, i64* %9, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load i32, i32* @KSWAPD_LOW_WMARK_HIT_QUICKLY, align 4
  %101 = call i32 @count_vm_event(i32 %100)
  br label %105

102:                                              ; preds = %96
  %103 = load i32, i32* @KSWAPD_HIGH_WMARK_HIT_QUICKLY, align 4
  %104 = call i32 @count_vm_event(i32 %103)
  br label %105

105:                                              ; preds = %102, %99
  br label %106

106:                                              ; preds = %105, %84
  br label %107

107:                                              ; preds = %106, %57
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  store i64 %110, i64* %3, align 8
  br label %111

111:                                              ; preds = %107, %55
  %112 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = call i32 @finish_wait(i32* %113, i32* @wait)
  %115 = call i32 (...) @try_to_freeze()
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %126, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load i64, i64* %3, align 8
  %122 = call i32 @trace_mm_vmscan_kswapd_wake(i32 %120, i64 %121)
  %123 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %124 = load i64, i64* %3, align 8
  %125 = call i32 @balance_pgdat(%struct.TYPE_5__* %123, i64 %124)
  br label %126

126:                                              ; preds = %117, %111
  br label %42
}

declare dso_local i32 @DEFINE_WAIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local %struct.cpumask* @cpumask_of_node(i32) #1

declare dso_local i32 @lockdep_set_current_reclaim_state(i32) #1

declare dso_local i32 @cpumask_empty(%struct.cpumask*) #1

declare dso_local i32 @set_cpus_allowed_ptr(%struct.task_struct*, %struct.cpumask*) #1

declare dso_local i32 @set_freezable(...) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @freezing(%struct.task_struct*) #1

declare dso_local i32 @sleeping_prematurely(%struct.TYPE_5__*, i64, i64) #1

declare dso_local i64 @schedule_timeout(i32) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

declare dso_local i32 @trace_mm_vmscan_kswapd_sleep(i32) #1

declare dso_local i32 @set_pgdat_percpu_threshold(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @count_vm_event(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @trace_mm_vmscan_kswapd_wake(i32, i64) #1

declare dso_local i32 @balance_pgdat(%struct.TYPE_5__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
