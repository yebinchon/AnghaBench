; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_set_tracer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_set_tracer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_option_dentry = type { i32 }
%struct.trace_array = type { i32 }
%struct.tracer = type { i64, i64, i32 (%struct.trace_array.0*)*, i32, %struct.tracer* }
%struct.trace_array.0 = type opaque
%struct.TYPE_2__ = type { i32, i32 }

@tracing_set_tracer.topts = internal global %struct.trace_option_dentry* null, align 8
@global_trace = common dso_local global %struct.trace_array zeroinitializer, align 4
@trace_types_lock = common dso_local global i32 0, align 4
@ring_buffer_expanded = common dso_local global i32 0, align 4
@trace_buf_size = common dso_local global i32 0, align 4
@trace_types = common dso_local global %struct.tracer* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@current_trace = common dso_local global %struct.tracer* null, align 8
@max_tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @tracing_set_tracer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_set_tracer(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.tracer*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store %struct.trace_array* @global_trace, %struct.trace_array** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @mutex_lock(i32* @trace_types_lock)
  %7 = load i32, i32* @ring_buffer_expanded, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @trace_buf_size, align 4
  %11 = call i32 @tracing_resize_ring_buffer(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  br label %107

15:                                               ; preds = %9
  store i32 0, i32* %5, align 4
  br label %16

16:                                               ; preds = %15, %1
  %17 = load %struct.tracer*, %struct.tracer** @trace_types, align 8
  store %struct.tracer* %17, %struct.tracer** %4, align 8
  br label %18

18:                                               ; preds = %30, %16
  %19 = load %struct.tracer*, %struct.tracer** %4, align 8
  %20 = icmp ne %struct.tracer* %19, null
  br i1 %20, label %21, label %34

21:                                               ; preds = %18
  %22 = load %struct.tracer*, %struct.tracer** %4, align 8
  %23 = getelementptr inbounds %struct.tracer, %struct.tracer* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = load i8*, i8** %2, align 8
  %26 = call i64 @strcmp(i32 %24, i8* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.tracer*, %struct.tracer** %4, align 8
  %32 = getelementptr inbounds %struct.tracer, %struct.tracer* %31, i32 0, i32 4
  %33 = load %struct.tracer*, %struct.tracer** %32, align 8
  store %struct.tracer* %33, %struct.tracer** %4, align 8
  br label %18

34:                                               ; preds = %28, %18
  %35 = load %struct.tracer*, %struct.tracer** %4, align 8
  %36 = icmp ne %struct.tracer* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %107

40:                                               ; preds = %34
  %41 = load %struct.tracer*, %struct.tracer** %4, align 8
  %42 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %43 = icmp eq %struct.tracer* %41, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %40
  br label %107

45:                                               ; preds = %40
  %46 = call i32 (...) @trace_branch_disable()
  %47 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %48 = icmp ne %struct.tracer* %47, null
  br i1 %48, label %49, label %61

49:                                               ; preds = %45
  %50 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %51 = getelementptr inbounds %struct.tracer, %struct.tracer* %50, i32 0, i32 2
  %52 = load i32 (%struct.trace_array.0*)*, i32 (%struct.trace_array.0*)** %51, align 8
  %53 = icmp ne i32 (%struct.trace_array.0*)* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %49
  %55 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %56 = getelementptr inbounds %struct.tracer, %struct.tracer* %55, i32 0, i32 2
  %57 = load i32 (%struct.trace_array.0*)*, i32 (%struct.trace_array.0*)** %56, align 8
  %58 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %59 = bitcast %struct.trace_array* %58 to %struct.trace_array.0*
  %60 = call i32 %57(%struct.trace_array.0* %59)
  br label %61

61:                                               ; preds = %54, %49, %45
  %62 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %63 = icmp ne %struct.tracer* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %61
  %65 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %66 = getelementptr inbounds %struct.tracer, %struct.tracer* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_tr, i32 0, i32 1), align 4
  %71 = call i32 @ring_buffer_resize(i32 %70, i32 1)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_tr, i32 0, i32 0), align 4
  br label %72

72:                                               ; preds = %69, %64, %61
  %73 = load %struct.trace_option_dentry*, %struct.trace_option_dentry** @tracing_set_tracer.topts, align 8
  %74 = call i32 @destroy_trace_option_files(%struct.trace_option_dentry* %73)
  %75 = load %struct.tracer*, %struct.tracer** %4, align 8
  store %struct.tracer* %75, %struct.tracer** @current_trace, align 8
  %76 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %77 = call %struct.trace_option_dentry* @create_trace_option_files(%struct.tracer* %76)
  store %struct.trace_option_dentry* %77, %struct.trace_option_dentry** @tracing_set_tracer.topts, align 8
  %78 = load %struct.tracer*, %struct.tracer** @current_trace, align 8
  %79 = getelementptr inbounds %struct.tracer, %struct.tracer* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %72
  %83 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_tr, i32 0, i32 1), align 4
  %84 = load i32, i32* getelementptr inbounds (%struct.trace_array, %struct.trace_array* @global_trace, i32 0, i32 0), align 4
  %85 = call i32 @ring_buffer_resize(i32 %83, i32 %84)
  store i32 %85, i32* %5, align 4
  %86 = load i32, i32* %5, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %107

89:                                               ; preds = %82
  %90 = load i32, i32* getelementptr inbounds (%struct.trace_array, %struct.trace_array* @global_trace, i32 0, i32 0), align 4
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @max_tr, i32 0, i32 0), align 4
  br label %91

91:                                               ; preds = %89, %72
  %92 = load %struct.tracer*, %struct.tracer** %4, align 8
  %93 = getelementptr inbounds %struct.tracer, %struct.tracer* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %91
  %97 = load %struct.tracer*, %struct.tracer** %4, align 8
  %98 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %99 = call i32 @tracer_init(%struct.tracer* %97, %struct.trace_array* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %107

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103, %91
  %105 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %106 = call i32 @trace_branch_enable(%struct.trace_array* %105)
  br label %107

107:                                              ; preds = %104, %102, %88, %44, %37, %14
  %108 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %109 = load i32, i32* %5, align 4
  ret i32 %109
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tracing_resize_ring_buffer(i32) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @trace_branch_disable(...) #1

declare dso_local i32 @ring_buffer_resize(i32, i32) #1

declare dso_local i32 @destroy_trace_option_files(%struct.trace_option_dentry*) #1

declare dso_local %struct.trace_option_dentry* @create_trace_option_files(%struct.tracer*) #1

declare dso_local i32 @tracer_init(%struct.tracer*, %struct.trace_array*) #1

declare dso_local i32 @trace_branch_enable(%struct.trace_array*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
