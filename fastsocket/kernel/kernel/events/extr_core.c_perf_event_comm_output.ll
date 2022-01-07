; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_comm_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_comm_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_comm_event = type { %struct.TYPE_3__, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_comm_event*)* @perf_event_comm_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_comm_output(%struct.perf_event* %0, %struct.perf_comm_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_comm_event*, align 8
  %5 = alloca %struct.perf_output_handle, align 4
  %6 = alloca %struct.perf_sample_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_comm_event* %1, %struct.perf_comm_event** %4, align 8
  %10 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %17, %struct.perf_sample_data* %6, %struct.perf_event* %18)
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @perf_output_begin(%struct.perf_output_handle* %5, %struct.perf_event* %20, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %66

30:                                               ; preds = %2
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %33 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @perf_event_pid(%struct.perf_event* %31, i32 %34)
  %36 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %37 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 2
  store i32 %35, i32* %38, align 4
  %39 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %40 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @perf_event_tid(%struct.perf_event* %39, i32 %42)
  %44 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %45 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i32 %43, i32* %46, align 4
  %47 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %48 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %47, i32 0, i32 0
  %49 = bitcast { i64, i32 }* %9 to i8*
  %50 = bitcast %struct.TYPE_3__* %48 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %49, i8* align 4 %50, i64 12, i1 false)
  %51 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %52 = load i64, i64* %51, align 4
  %53 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @perf_output_put(%struct.perf_output_handle* %5, i64 %52, i32 %54)
  %56 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %57 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %60 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @__output_copy(%struct.perf_output_handle* %5, i32 %58, i32 %61)
  %63 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %64 = call i32 @perf_event__output_id_sample(%struct.perf_event* %63, %struct.perf_output_handle* %5, %struct.perf_sample_data* %6)
  %65 = call i32 @perf_output_end(%struct.perf_output_handle* %5)
  br label %66

66:                                               ; preds = %30, %29
  %67 = load i32, i32* %7, align 4
  %68 = load %struct.perf_comm_event*, %struct.perf_comm_event** %4, align 8
  %69 = getelementptr inbounds %struct.perf_comm_event, %struct.perf_comm_event* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  store i32 %67, i32* %71, align 4
  ret void
}

declare dso_local i32 @perf_event_header__init_id(%struct.TYPE_4__*, %struct.perf_sample_data*, %struct.perf_event*) #1

declare dso_local i32 @perf_output_begin(%struct.perf_output_handle*, %struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_pid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_event_tid(%struct.perf_event*, i32) #1

declare dso_local i32 @perf_output_put(%struct.perf_output_handle*, i64, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__output_copy(%struct.perf_output_handle*, i32, i32) #1

declare dso_local i32 @perf_event__output_id_sample(%struct.perf_event*, %struct.perf_output_handle*, %struct.perf_sample_data*) #1

declare dso_local i32 @perf_output_end(%struct.perf_output_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
