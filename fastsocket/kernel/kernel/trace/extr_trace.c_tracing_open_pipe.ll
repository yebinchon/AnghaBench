; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_open_pipe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace.c_tracing_open_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i64, %struct.trace_iterator*, i32 (%struct.trace_iterator*)*, i32, i32*, i32, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.inode = type { i64 }
%struct.file = type { %struct.trace_iterator* }

@tracing_disabled = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@trace_types_lock = common dso_local global i32 0, align 4
@TRACE_PIPE_ALL_CPU = common dso_local global i64 0, align 8
@tracing_reader_cpumask = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current_trace = common dso_local global %struct.trace_iterator* null, align 8
@trace_flags = common dso_local global i32 0, align 4
@TRACE_ITER_LATENCY_FMT = common dso_local global i32 0, align 4
@TRACE_FILE_LAT_FMT = common dso_local global i32 0, align 4
@trace_clocks = common dso_local global %struct.TYPE_2__* null, align 8
@trace_clock_id = common dso_local global i64 0, align 8
@TRACE_FILE_TIME_IN_NS = common dso_local global i32 0, align 4
@global_trace = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @tracing_open_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tracing_open_pipe(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.trace_iterator*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* @tracing_disabled, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %151

17:                                               ; preds = %2
  %18 = call i32 @mutex_lock(i32* @trace_types_lock)
  %19 = load i64, i64* %6, align 8
  %20 = load i64, i64* @TRACE_PIPE_ALL_CPU, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %32

22:                                               ; preds = %17
  %23 = load i32, i32* @tracing_reader_cpumask, align 4
  %24 = call i32 @cpumask_empty(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %139

29:                                               ; preds = %22
  %30 = load i32, i32* @tracing_reader_cpumask, align 4
  %31 = call i32 @cpumask_setall(i32 %30)
  br label %45

32:                                               ; preds = %17
  %33 = load i64, i64* %6, align 8
  %34 = load i32, i32* @tracing_reader_cpumask, align 4
  %35 = call i32 @cpumask_test_cpu(i64 %33, i32 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @tracing_reader_cpumask, align 4
  %40 = call i32 @cpumask_set_cpu(i64 %38, i32 %39)
  br label %44

41:                                               ; preds = %32
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %8, align 4
  br label %139

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %29
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call %struct.trace_iterator* @kzalloc(i32 48, i32 %46)
  store %struct.trace_iterator* %47, %struct.trace_iterator** %7, align 8
  %48 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %49 = icmp ne %struct.trace_iterator* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %8, align 4
  br label %139

53:                                               ; preds = %45
  %54 = load i32, i32* @GFP_KERNEL, align 4
  %55 = call %struct.trace_iterator* @kmalloc(i32 48, i32 %54)
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 1
  store %struct.trace_iterator* %55, %struct.trace_iterator** %57, align 8
  %58 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %59 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %58, i32 0, i32 1
  %60 = load %struct.trace_iterator*, %struct.trace_iterator** %59, align 8
  %61 = icmp ne %struct.trace_iterator* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %53
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %142

65:                                               ; preds = %53
  %66 = load %struct.trace_iterator*, %struct.trace_iterator** @current_trace, align 8
  %67 = icmp ne %struct.trace_iterator* %66, null
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %70 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %69, i32 0, i32 1
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %70, align 8
  %72 = load %struct.trace_iterator*, %struct.trace_iterator** @current_trace, align 8
  %73 = bitcast %struct.trace_iterator* %71 to i8*
  %74 = bitcast %struct.trace_iterator* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 48, i1 false)
  br label %75

75:                                               ; preds = %68, %65
  %76 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %77 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %76, i32 0, i32 6
  %78 = load i32, i32* @GFP_KERNEL, align 4
  %79 = call i32 @alloc_cpumask_var(i32* %77, i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %142

84:                                               ; preds = %75
  %85 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %86 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @cpumask_setall(i32 %87)
  %89 = load i32, i32* @trace_flags, align 4
  %90 = load i32, i32* @TRACE_ITER_LATENCY_FMT, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %84
  %94 = load i32, i32* @TRACE_FILE_LAT_FMT, align 4
  %95 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %96 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 8
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 8
  br label %99

99:                                               ; preds = %93, %84
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** @trace_clocks, align 8
  %101 = load i64, i64* @trace_clock_id, align 8
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @TRACE_FILE_TIME_IN_NS, align 4
  %108 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %109 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 8
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 8
  br label %112

112:                                              ; preds = %106, %99
  %113 = load i64, i64* %6, align 8
  %114 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %115 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %114, i32 0, i32 0
  store i64 %113, i64* %115, align 8
  %116 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %117 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %116, i32 0, i32 4
  store i32* @global_trace, i32** %117, align 8
  %118 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %119 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %118, i32 0, i32 3
  %120 = call i32 @mutex_init(i32* %119)
  %121 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %122 = load %struct.file*, %struct.file** %5, align 8
  %123 = getelementptr inbounds %struct.file, %struct.file* %122, i32 0, i32 0
  store %struct.trace_iterator* %121, %struct.trace_iterator** %123, align 8
  %124 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %125 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %124, i32 0, i32 1
  %126 = load %struct.trace_iterator*, %struct.trace_iterator** %125, align 8
  %127 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %126, i32 0, i32 2
  %128 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %127, align 8
  %129 = icmp ne i32 (%struct.trace_iterator*)* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %112
  %131 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %132 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %131, i32 0, i32 1
  %133 = load %struct.trace_iterator*, %struct.trace_iterator** %132, align 8
  %134 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %133, i32 0, i32 2
  %135 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %134, align 8
  %136 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %137 = call i32 %135(%struct.trace_iterator* %136)
  br label %138

138:                                              ; preds = %130, %112
  br label %139

139:                                              ; preds = %138, %50, %41, %26
  %140 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %3, align 4
  br label %151

142:                                              ; preds = %81, %62
  %143 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %144 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %143, i32 0, i32 1
  %145 = load %struct.trace_iterator*, %struct.trace_iterator** %144, align 8
  %146 = call i32 @kfree(%struct.trace_iterator* %145)
  %147 = load %struct.trace_iterator*, %struct.trace_iterator** %7, align 8
  %148 = call i32 @kfree(%struct.trace_iterator* %147)
  %149 = call i32 @mutex_unlock(i32* @trace_types_lock)
  %150 = load i32, i32* %8, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %142, %139, %14
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cpumask_empty(i32) #1

declare dso_local i32 @cpumask_setall(i32) #1

declare dso_local i32 @cpumask_test_cpu(i64, i32) #1

declare dso_local i32 @cpumask_set_cpu(i64, i32) #1

declare dso_local %struct.trace_iterator* @kzalloc(i32, i32) #1

declare dso_local %struct.trace_iterator* @kmalloc(i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
