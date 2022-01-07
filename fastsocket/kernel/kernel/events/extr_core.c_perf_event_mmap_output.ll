; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_mmap_output.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/events/extr_core.c_perf_event_mmap_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_event = type { i32 }
%struct.perf_mmap_event = type { %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.perf_output_handle = type { i32 }
%struct.perf_sample_data = type { i32 }

@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_event*, %struct.perf_mmap_event*)* @perf_event_mmap_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_event_mmap_output(%struct.perf_event* %0, %struct.perf_mmap_event* %1) #0 {
  %3 = alloca %struct.perf_event*, align 8
  %4 = alloca %struct.perf_mmap_event*, align 8
  %5 = alloca %struct.perf_output_handle, align 4
  %6 = alloca %struct.perf_sample_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca { i64, i32 }, align 4
  store %struct.perf_event* %0, %struct.perf_event** %3, align 8
  store %struct.perf_mmap_event* %1, %struct.perf_mmap_event** %4, align 8
  %10 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %11 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %16 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %19 = call i32 @perf_event_header__init_id(%struct.TYPE_4__* %17, %struct.perf_sample_data* %6, %struct.perf_event* %18)
  %20 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %21 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %22 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @perf_output_begin(%struct.perf_output_handle* %5, %struct.perf_event* %20, i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %2
  br label %62

30:                                               ; preds = %2
  %31 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %32 = load i32, i32* @current, align 4
  %33 = call i32 @perf_event_pid(%struct.perf_event* %31, i32 %32)
  %34 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %35 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 2
  store i32 %33, i32* %36, align 4
  %37 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %38 = load i32, i32* @current, align 4
  %39 = call i32 @perf_event_tid(%struct.perf_event* %37, i32 %38)
  %40 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %41 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  store i32 %39, i32* %42, align 4
  %43 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %44 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %43, i32 0, i32 0
  %45 = bitcast { i64, i32 }* %9 to i8*
  %46 = bitcast %struct.TYPE_3__* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %45, i8* align 4 %46, i64 12, i1 false)
  %47 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 0
  %48 = load i64, i64* %47, align 4
  %49 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %9, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @perf_output_put(%struct.perf_output_handle* %5, i64 %48, i32 %50)
  %52 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %53 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %56 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @__output_copy(%struct.perf_output_handle* %5, i32 %54, i32 %57)
  %59 = load %struct.perf_event*, %struct.perf_event** %3, align 8
  %60 = call i32 @perf_event__output_id_sample(%struct.perf_event* %59, %struct.perf_output_handle* %5, %struct.perf_sample_data* %6)
  %61 = call i32 @perf_output_end(%struct.perf_output_handle* %5)
  br label %62

62:                                               ; preds = %30, %29
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.perf_mmap_event*, %struct.perf_mmap_event** %4, align 8
  %65 = getelementptr inbounds %struct.perf_mmap_event, %struct.perf_mmap_event* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
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
