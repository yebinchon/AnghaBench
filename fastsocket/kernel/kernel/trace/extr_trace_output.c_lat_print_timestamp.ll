; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_lat_print_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/trace/extr_trace_output.c_lat_print_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i64, i64, %struct.trace_seq, %struct.TYPE_2__* }
%struct.trace_seq = type { i32 }
%struct.TYPE_2__ = type { i64 }

@trace_flags = common dso_local global i64 0, align 8
@TRACE_ITER_VERBOSE = common dso_local global i64 0, align 8
@TRACE_FILE_TIME_IN_NS = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[%08llx] %ld.%03ldms (+%ld.%03ldms): \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[%016llx] %lld (+%lld): \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" %4lldus%c: \00", align 1
@preempt_mark_thresh_us = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" %4lld: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i64)* @lat_print_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lat_print_timestamp(%struct.trace_iterator* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.trace_iterator*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trace_seq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* @trace_flags, align 8
  %16 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %17 = and i64 %15, %16
  store i64 %17, i64* %6, align 8
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TRACE_FILE_TIME_IN_NS, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %7, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %27 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %26, i32 0, i32 3
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub i64 %25, %30
  store i64 %31, i64* %8, align 8
  %32 = load i64, i64* %5, align 8
  %33 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %34 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %32, %35
  store i64 %36, i64* %9, align 8
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 2
  store %struct.trace_seq* %38, %struct.trace_seq** %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %2
  %42 = load i64, i64* %8, align 8
  %43 = call i64 @ns2usecs(i64 %42)
  store i64 %43, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i64 @ns2usecs(i64 %44)
  store i64 %45, i64* %9, align 8
  br label %46

46:                                               ; preds = %41, %2
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load i64, i64* %7, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = load i32, i32* @USEC_PER_MSEC, align 4
  %55 = call i64 @do_div(i64 %53, i32 %54)
  store i64 %55, i64* %11, align 8
  %56 = load i64, i64* %8, align 8
  store i64 %56, i64* %12, align 8
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* @USEC_PER_MSEC, align 4
  %59 = call i64 @do_div(i64 %57, i32 %58)
  store i64 %59, i64* %13, align 8
  %60 = load i64, i64* %9, align 8
  store i64 %60, i64* %14, align 8
  %61 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %62 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %63 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = call i64 @ns2usecs(i64 %64)
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* %13, align 8
  %70 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %65, i64 %66, i64 %67, i64 %68, i64 %69)
  store i32 %70, i32* %3, align 4
  br label %110

71:                                               ; preds = %49, %46
  %72 = load i64, i64* %6, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %85

74:                                               ; preds = %71
  %75 = load i64, i64* %7, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %85, label %77

77:                                               ; preds = %74
  %78 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %79 = load %struct.trace_iterator*, %struct.trace_iterator** %4, align 8
  %80 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* %8, align 8
  %83 = load i64, i64* %9, align 8
  %84 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %81, i64 %82, i64 %83)
  store i32 %84, i32* %3, align 4
  br label %110

85:                                               ; preds = %74, %71
  %86 = load i64, i64* %6, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %106, label %88

88:                                               ; preds = %85
  %89 = load i64, i64* %7, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %88
  %92 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* %9, align 8
  %95 = load i64, i64* @preempt_mark_thresh_us, align 8
  %96 = icmp ugt i64 %94, %95
  br i1 %96, label %97, label %98

97:                                               ; preds = %91
  br label %103

98:                                               ; preds = %91
  %99 = load i64, i64* %9, align 8
  %100 = icmp ugt i64 %99, 1
  %101 = zext i1 %100 to i64
  %102 = select i1 %100, i32 43, i32 32
  br label %103

103:                                              ; preds = %98, %97
  %104 = phi i32 [ 33, %97 ], [ %102, %98 ]
  %105 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %92, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %93, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %110

106:                                              ; preds = %88, %85
  %107 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %108 = load i64, i64* %8, align 8
  %109 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %108)
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %103, %77, %52
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local i64 @ns2usecs(i64) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
