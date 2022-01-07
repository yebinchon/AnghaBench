; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__sys_enter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/extr_builtin-trace.c_trace__sys_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace = type { i32, i32 }
%struct.perf_evsel = type { i32 }
%struct.perf_sample = type { i32, i32 }
%struct.thread = type { %struct.thread_trace* }
%struct.thread_trace = type { i8*, i32, i32 }
%struct.syscall = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"args\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"Problems reading syscall arguments\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"%s(\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"exit_group\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@stdout = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i8] c"%-70s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace*, %struct.perf_evsel*, %struct.perf_sample*)* @trace__sys_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace__sys_enter(%struct.trace* %0, %struct.perf_evsel* %1, %struct.perf_sample* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace*, align 8
  %6 = alloca %struct.perf_evsel*, align 8
  %7 = alloca %struct.perf_sample*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.syscall*, align 8
  %13 = alloca %struct.thread_trace*, align 8
  store %struct.trace* %0, %struct.trace** %5, align 8
  store %struct.perf_evsel* %1, %struct.perf_evsel** %6, align 8
  store %struct.perf_sample* %2, %struct.perf_sample** %7, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.trace*, %struct.trace** %5, align 8
  %15 = getelementptr inbounds %struct.trace, %struct.trace* %14, i32 0, i32 1
  %16 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %17 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.thread* @machine__findnew_thread(i32* %15, i32 %18)
  store %struct.thread* %19, %struct.thread** %11, align 8
  %20 = load %struct.trace*, %struct.trace** %5, align 8
  %21 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %22 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %23 = call %struct.syscall* @trace__syscall_info(%struct.trace* %20, %struct.perf_evsel* %21, %struct.perf_sample* %22)
  store %struct.syscall* %23, %struct.syscall** %12, align 8
  %24 = load %struct.thread*, %struct.thread** %11, align 8
  %25 = call %struct.thread_trace* @thread__trace(%struct.thread* %24)
  store %struct.thread_trace* %25, %struct.thread_trace** %13, align 8
  %26 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %27 = icmp eq %struct.thread_trace* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %3
  %29 = load %struct.syscall*, %struct.syscall** %12, align 8
  %30 = icmp eq %struct.syscall* %29, null
  br i1 %30, label %31, label %32

31:                                               ; preds = %28, %3
  store i32 -1, i32* %4, align 4
  br label %123

32:                                               ; preds = %28
  %33 = load %struct.perf_evsel*, %struct.perf_evsel** %6, align 8
  %34 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %35 = call i8* @perf_evsel__rawptr(%struct.perf_evsel* %33, %struct.perf_sample* %34, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i8* %35, i8** %9, align 8
  %36 = load i8*, i8** %9, align 8
  %37 = icmp eq i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %123

40:                                               ; preds = %32
  %41 = load %struct.thread*, %struct.thread** %11, align 8
  %42 = getelementptr inbounds %struct.thread, %struct.thread* %41, i32 0, i32 0
  %43 = load %struct.thread_trace*, %struct.thread_trace** %42, align 8
  store %struct.thread_trace* %43, %struct.thread_trace** %13, align 8
  %44 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %45 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = icmp eq i8* %46, null
  br i1 %47, label %48, label %58

48:                                               ; preds = %40
  %49 = call i8* @malloc(i32 1024)
  %50 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %51 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %53 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %57, label %56

56:                                               ; preds = %48
  store i32 -1, i32* %4, align 4
  br label %123

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %40
  %59 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %60 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %63 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 4
  %64 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %65 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %64, i32 0, i32 0
  %66 = load i8*, i8** %65, align 8
  store i8* %66, i8** %8, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = load i64, i64* %10, align 8
  %69 = getelementptr inbounds i8, i8* %67, i64 %68
  %70 = load i64, i64* %10, align 8
  %71 = sub i64 1024, %70
  %72 = trunc i64 %71 to i32
  %73 = load %struct.syscall*, %struct.syscall** %12, align 8
  %74 = getelementptr inbounds %struct.syscall, %struct.syscall* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @scnprintf(i8* %69, i32 %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = add i64 %77, %76
  store i64 %78, i64* %10, align 8
  %79 = load %struct.syscall*, %struct.syscall** %12, align 8
  %80 = load i8*, i8** %8, align 8
  %81 = load i64, i64* %10, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i64, i64* %10, align 8
  %84 = sub i64 1024, %83
  %85 = trunc i64 %84 to i32
  %86 = load i8*, i8** %9, align 8
  %87 = call i64 @syscall__scnprintf_args(%struct.syscall* %79, i8* %82, i32 %85, i8* %86)
  %88 = load i64, i64* %10, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %10, align 8
  %90 = load %struct.syscall*, %struct.syscall** %12, align 8
  %91 = getelementptr inbounds %struct.syscall, %struct.syscall* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @strcmp(i32 %92, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %58
  %96 = load %struct.syscall*, %struct.syscall** %12, align 8
  %97 = getelementptr inbounds %struct.syscall, %struct.syscall* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @strcmp(i32 %98, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %119, label %101

101:                                              ; preds = %95, %58
  %102 = load %struct.trace*, %struct.trace** %5, align 8
  %103 = getelementptr inbounds %struct.trace, %struct.trace* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %118, label %106

106:                                              ; preds = %101
  %107 = load %struct.trace*, %struct.trace** %5, align 8
  %108 = load %struct.thread*, %struct.thread** %11, align 8
  %109 = load %struct.perf_sample*, %struct.perf_sample** %7, align 8
  %110 = getelementptr inbounds %struct.perf_sample, %struct.perf_sample* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @stdout, align 4
  %113 = call i32 @trace__fprintf_entry_head(%struct.trace* %107, %struct.thread* %108, i32 1, i32 %111, i32 %112)
  %114 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %115 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %114, i32 0, i32 0
  %116 = load i8*, i8** %115, align 8
  %117 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i8* %116)
  br label %118

118:                                              ; preds = %106, %101
  br label %122

119:                                              ; preds = %95
  %120 = load %struct.thread_trace*, %struct.thread_trace** %13, align 8
  %121 = getelementptr inbounds %struct.thread_trace, %struct.thread_trace* %120, i32 0, i32 1
  store i32 1, i32* %121, align 8
  br label %122

122:                                              ; preds = %119, %118
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %122, %56, %38, %31
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.thread* @machine__findnew_thread(i32*, i32) #1

declare dso_local %struct.syscall* @trace__syscall_info(%struct.trace*, %struct.perf_evsel*, %struct.perf_sample*) #1

declare dso_local %struct.thread_trace* @thread__trace(%struct.thread*) #1

declare dso_local i8* @perf_evsel__rawptr(%struct.perf_evsel*, %struct.perf_sample*, i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i64 @scnprintf(i8*, i32, i8*, i32) #1

declare dso_local i64 @syscall__scnprintf_args(%struct.syscall*, i8*, i32, i8*) #1

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @trace__fprintf_entry_head(%struct.trace*, %struct.thread*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
