; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_mmap_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_machine.c_machine__process_mmap_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.machine = type { i32 }
%union.perf_event = type { %struct.TYPE_3__, [16 x i8] }
%struct.TYPE_3__ = type { i64 }
%struct.thread = type { i32 }
%struct.map = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }

@PERF_RECORD_MISC_CPUMODE_MASK = common dso_local global i64 0, align 8
@dump_trace = common dso_local global i64 0, align 8
@stdout = common dso_local global i32 0, align 4
@PERF_RECORD_MISC_GUEST_KERNEL = common dso_local global i64 0, align 8
@PERF_RECORD_MISC_KERNEL = common dso_local global i64 0, align 8
@MAP__FUNCTION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"problem processing PERF_RECORD_MMAP, skipping event.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @machine__process_mmap_event(%struct.machine* %0, %union.perf_event* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.machine*, align 8
  %5 = alloca %union.perf_event*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.thread*, align 8
  %8 = alloca %struct.map*, align 8
  %9 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %4, align 8
  store %union.perf_event* %1, %union.perf_event** %5, align 8
  %10 = load %union.perf_event*, %union.perf_event** %5, align 8
  %11 = bitcast %union.perf_event* %10 to %struct.TYPE_3__*
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @PERF_RECORD_MISC_CPUMODE_MASK, align 8
  %15 = and i64 %13, %14
  store i64 %15, i64* %6, align 8
  store i32 0, i32* %9, align 4
  %16 = load i64, i64* @dump_trace, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %union.perf_event*, %union.perf_event** %5, align 8
  %20 = load i32, i32* @stdout, align 4
  %21 = call i32 @perf_event__fprintf_mmap(%union.perf_event* %19, i32 %20)
  br label %22

22:                                               ; preds = %18, %2
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* @PERF_RECORD_MISC_GUEST_KERNEL, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @PERF_RECORD_MISC_KERNEL, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26, %22
  %31 = load %struct.machine*, %struct.machine** %4, align 8
  %32 = load %union.perf_event*, %union.perf_event** %5, align 8
  %33 = call i32 @machine__process_kernel_mmap_event(%struct.machine* %31, %union.perf_event* %32)
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %80

37:                                               ; preds = %30
  store i32 0, i32* %3, align 4
  br label %82

38:                                               ; preds = %26
  %39 = load %struct.machine*, %struct.machine** %4, align 8
  %40 = load %union.perf_event*, %union.perf_event** %5, align 8
  %41 = bitcast %union.perf_event* %40 to %struct.TYPE_4__*
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call %struct.thread* @machine__findnew_thread(%struct.machine* %39, i32 %43)
  store %struct.thread* %44, %struct.thread** %7, align 8
  %45 = load %struct.thread*, %struct.thread** %7, align 8
  %46 = icmp eq %struct.thread* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %38
  br label %80

48:                                               ; preds = %38
  %49 = load %struct.machine*, %struct.machine** %4, align 8
  %50 = getelementptr inbounds %struct.machine, %struct.machine* %49, i32 0, i32 0
  %51 = load %union.perf_event*, %union.perf_event** %5, align 8
  %52 = bitcast %union.perf_event* %51 to %struct.TYPE_4__*
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = load %union.perf_event*, %union.perf_event** %5, align 8
  %56 = bitcast %union.perf_event* %55 to %struct.TYPE_4__*
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %union.perf_event*, %union.perf_event** %5, align 8
  %60 = bitcast %union.perf_event* %59 to %struct.TYPE_4__*
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %union.perf_event*, %union.perf_event** %5, align 8
  %64 = bitcast %union.perf_event* %63 to %struct.TYPE_4__*
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %union.perf_event*, %union.perf_event** %5, align 8
  %68 = bitcast %union.perf_event* %67 to %struct.TYPE_4__*
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @MAP__FUNCTION, align 4
  %72 = call %struct.map* @map__new(i32* %50, i32 %54, i32 %58, i32 %62, i32 %66, i32 %70, i32 %71)
  store %struct.map* %72, %struct.map** %8, align 8
  %73 = load %struct.map*, %struct.map** %8, align 8
  %74 = icmp eq %struct.map* %73, null
  br i1 %74, label %75, label %76

75:                                               ; preds = %48
  br label %80

76:                                               ; preds = %48
  %77 = load %struct.thread*, %struct.thread** %7, align 8
  %78 = load %struct.map*, %struct.map** %8, align 8
  %79 = call i32 @thread__insert_map(%struct.thread* %77, %struct.map* %78)
  store i32 0, i32* %3, align 4
  br label %82

80:                                               ; preds = %75, %47, %36
  %81 = call i32 @dump_printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %76, %37
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @perf_event__fprintf_mmap(%union.perf_event*, i32) #1

declare dso_local i32 @machine__process_kernel_mmap_event(%struct.machine*, %union.perf_event*) #1

declare dso_local %struct.thread* @machine__findnew_thread(%struct.machine*, i32) #1

declare dso_local %struct.map* @map__new(i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @thread__insert_map(%struct.thread*, %struct.map*) #1

declare dso_local i32 @dump_printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
