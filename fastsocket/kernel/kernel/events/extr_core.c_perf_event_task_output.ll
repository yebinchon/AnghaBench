; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_task_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_task_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32 }
%struct.perf_event = type { i32 }
%struct.perf_task_event = type { %struct.TYPE_3__, %struct.task_struct* }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i8*, i8*, i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@current = common dso_local global %struct.task_struct* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_task_event*)* @perf_event_task_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_task_output(%struct.perf_event* %0, %struct.perf_task_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_task_event*, align 8
  %5 = alloca %struct.perf_output_handle, align 4
  %6 = alloca %struct.perf_sample_data, align 4
  %7 = alloca %struct.task_struct*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_task_event* %1, %struct.perf_task_event** %4, align 8
  %10 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %10, i32 0, i32 1
  %12 = load %struct.task_struct*, %struct.task_struct** %11, align 8
  store %struct.task_struct* %12, %struct.task_struct** %7, align 8
  %13 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %14 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %19 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %22 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %20, %struct.perf_sample_data* %6, %struct.perf_event* %21)
  %23 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %24 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %25 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @perf_output_begin(%struct.perf_output_handle* %5, %struct.perf_event* %23, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %64

33:                                               ; preds = %2
  %34 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %35 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %36 = call i8* @perf_event_pid(%struct.perf_event* %34, %struct.task_struct* %35)
  %37 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %38 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i8* %36, i8** %39, align 8
  %40 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %41 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %42 = call i8* @perf_event_pid(%struct.perf_event* %40, %struct.task_struct* %41)
  %43 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 3
  store i8* %42, i8** %45, align 8
  %46 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %47 = load %struct.task_struct*, %struct.task_struct** %7, align 8
  %48 = call i8* @perf_event_tid(%struct.perf_event* %46, %struct.task_struct* %47)
  %49 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %50 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i8* %48, i8** %51, align 8
  %52 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %53 = load %struct.task_struct*, %struct.task_struct** @current, align 8
  %54 = call i8* @perf_event_tid(%struct.perf_event* %52, %struct.task_struct* %53)
  %55 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %56 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 1
  store i8* %54, i8** %57, align 8
  %58 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %59 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %58, i32 0, i32 0
  %60 = call i32 @perf_output_put(%struct.perf_output_handle* %5, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8 %59)
  %61 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %62 = call i32 @perf_event__output_id_sample(%struct.perf_event* %61, %struct.perf_output_handle* %5, %struct.perf_sample_data* %6)
  %63 = call i32 @perf_output_end(%struct.perf_output_handle* %5)
  br label %64

64:                                               ; preds = %33, %32
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.perf_task_event*, %struct.perf_task_event** %4, align 8
  %67 = getelementptr inbounds %struct.perf_task_event, %struct.perf_task_event* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  store i32 %65, i32* %69, align 8
  ret void
}

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_4__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i8* @perf_event_pid(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i8* @perf_event_tid(%struct.perf_event*, %struct.task_struct*) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, %struct.TYPE_3__* byval(%struct.TYPE_3__) align 8) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
