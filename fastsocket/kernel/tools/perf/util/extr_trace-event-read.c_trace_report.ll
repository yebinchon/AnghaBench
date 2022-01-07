; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_report.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-read.c_trace_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pevent = type { i32 }

@BUFSIZ = common dso_local global i32 0, align 4
@__const.trace_report.test = private unnamed_addr constant [3 x i8] c"\17\08D", align 1
@calc_data_size = common dso_local global i32 0, align 4
@repipe = common dso_local global i32 0, align 4
@input_fd = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"no trace data in the file\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"not a trace file (missing 'tracing' tag)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"version = %s\0A\00", align 1
@file_bigendian = common dso_local global i8 0, align 1
@host_bigendian = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [23 x i8] c"read_trace_init failed\00", align 1
@long_size = common dso_local global i8 0, align 1
@page_size = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_report(i32 %0, %struct.pevent** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pevent**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [3 x i8], align 1
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.pevent** %1, %struct.pevent*** %6, align 8
  store i32 %2, i32* %7, align 4
  %17 = load i32, i32* @BUFSIZ, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %8, align 8
  %20 = alloca i8, i64 %18, align 16
  store i64 %18, i64* %9, align 8
  %21 = bitcast [3 x i8]* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %21, i8* align 1 getelementptr inbounds ([3 x i8], [3 x i8]* @__const.trace_report.test, i32 0, i32 0), i64 3, i1 false)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 1, i32* @calc_data_size, align 4
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* @repipe, align 4
  %23 = load i32, i32* %5, align 4
  store i32 %23, i32* @input_fd, align 4
  %24 = call i32 @read_or_die(i8* %20, i32 3)
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %10, i64 0, i64 0
  %26 = call i64 @memcmp(i8* %20, i8* %25, i32 3)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %3
  %29 = call i32 @die(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %3
  %31 = call i32 @read_or_die(i8* %20, i32 7)
  %32 = call i64 @memcmp(i8* %20, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %30
  %35 = call i32 @die(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  br label %36

36:                                               ; preds = %34, %30
  %37 = call i8* (...) @read_string()
  store i8* %37, i8** %11, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i8*, i8** %11, align 8
  %42 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %41)
  br label %43

43:                                               ; preds = %40, %36
  %44 = load i8*, i8** %11, align 8
  %45 = call i32 @free(i8* %44)
  %46 = call i32 @read_or_die(i8* %20, i32 1)
  %47 = getelementptr inbounds i8, i8* %20, i64 0
  %48 = load i8, i8* %47, align 16
  store i8 %48, i8* @file_bigendian, align 1
  %49 = call i32 (...) @bigendian()
  store i32 %49, i32* @host_bigendian, align 4
  %50 = load i8, i8* @file_bigendian, align 1
  %51 = load i32, i32* @host_bigendian, align 4
  %52 = call %struct.pevent* @read_trace_init(i8 signext %50, i32 %51)
  %53 = load %struct.pevent**, %struct.pevent*** %6, align 8
  store %struct.pevent* %52, %struct.pevent** %53, align 8
  %54 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %55 = load %struct.pevent*, %struct.pevent** %54, align 8
  %56 = icmp eq %struct.pevent* %55, null
  br i1 %56, label %57, label %59

57:                                               ; preds = %43
  %58 = call i32 @die(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %43
  %60 = call i32 @read_or_die(i8* %20, i32 1)
  %61 = getelementptr inbounds i8, i8* %20, i64 0
  %62 = load i8, i8* %61, align 16
  store i8 %62, i8* @long_size, align 1
  %63 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %64 = load %struct.pevent*, %struct.pevent** %63, align 8
  %65 = call i32 @read4(%struct.pevent* %64)
  store i32 %65, i32* @page_size, align 4
  %66 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %67 = load %struct.pevent*, %struct.pevent** %66, align 8
  %68 = call i32 @read_header_files(%struct.pevent* %67)
  %69 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %70 = load %struct.pevent*, %struct.pevent** %69, align 8
  %71 = call i32 @read_ftrace_files(%struct.pevent* %70)
  %72 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %73 = load %struct.pevent*, %struct.pevent** %72, align 8
  %74 = call i32 @read_event_files(%struct.pevent* %73)
  %75 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %76 = load %struct.pevent*, %struct.pevent** %75, align 8
  %77 = call i32 @read_proc_kallsyms(%struct.pevent* %76)
  %78 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %79 = load %struct.pevent*, %struct.pevent** %78, align 8
  %80 = call i32 @read_ftrace_printk(%struct.pevent* %79)
  %81 = load i32, i32* @calc_data_size, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %15, align 4
  store i32 0, i32* @calc_data_size, align 4
  store i32 0, i32* @repipe, align 4
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %59
  %86 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %87 = load %struct.pevent*, %struct.pevent** %86, align 8
  %88 = call i32 @pevent_print_funcs(%struct.pevent* %87)
  %89 = load i32, i32* %15, align 4
  store i32 %89, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

90:                                               ; preds = %59
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.pevent**, %struct.pevent*** %6, align 8
  %95 = load %struct.pevent*, %struct.pevent** %94, align 8
  %96 = call i32 @pevent_print_printk(%struct.pevent* %95)
  %97 = load i32, i32* %15, align 4
  store i32 %97, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

98:                                               ; preds = %90
  %99 = load i32, i32* %15, align 4
  store i32 %99, i32* %4, align 4
  store i32 1, i32* %16, align 4
  br label %100

100:                                              ; preds = %98, %93, %85
  %101 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %101)
  %102 = load i32, i32* %4, align 4
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_or_die(i8*, i32) #3

declare dso_local i64 @memcmp(i8*, i8*, i32) #3

declare dso_local i32 @die(i8*) #3

declare dso_local i8* @read_string(...) #3

declare dso_local i32 @printf(i8*, i8*) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @bigendian(...) #3

declare dso_local %struct.pevent* @read_trace_init(i8 signext, i32) #3

declare dso_local i32 @read4(%struct.pevent*) #3

declare dso_local i32 @read_header_files(%struct.pevent*) #3

declare dso_local i32 @read_ftrace_files(%struct.pevent*) #3

declare dso_local i32 @read_event_files(%struct.pevent*) #3

declare dso_local i32 @read_proc_kallsyms(%struct.pevent*) #3

declare dso_local i32 @read_ftrace_printk(%struct.pevent*) #3

declare dso_local i32 @pevent_print_funcs(%struct.pevent*) #3

declare dso_local i32 @pevent_print_printk(%struct.pevent*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
