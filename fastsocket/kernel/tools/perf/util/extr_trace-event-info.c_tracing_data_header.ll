; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_tracing_data_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_trace-event-info.c_tracing_data_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"tracing\00", align 1
@VERSION = common dso_local global i8* null, align 8
@_SC_PAGESIZE = common dso_local global i32 0, align 4
@page_size = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tracing_data_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tracing_data_header() #0 {
  %1 = alloca [20 x i8], align 16
  %2 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  store i8 23, i8* %2, align 16
  %3 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 1
  store i8 8, i8* %3, align 1
  %4 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 2
  store i8 68, i8* %4, align 2
  %5 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %6 = getelementptr inbounds i8, i8* %5, i64 3
  %7 = call i32 @memcpy(i8* %6, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 7)
  %8 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %9 = call i32 @write_or_die(i8* %8, i32 10)
  %10 = load i8*, i8** @VERSION, align 8
  %11 = load i8*, i8** @VERSION, align 8
  %12 = call i32 @strlen(i8* %11)
  %13 = add nsw i32 %12, 1
  %14 = call i32 @write_or_die(i8* %10, i32 %13)
  %15 = call i64 (...) @bigendian()
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %0
  %18 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  store i8 1, i8* %18, align 16
  br label %21

19:                                               ; preds = %0
  %20 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  store i8 0, i8* %20, align 16
  br label %21

21:                                               ; preds = %19, %17
  %22 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %23 = load i8, i8* %22, align 16
  %24 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %25 = load i8, i8* %24, align 16
  %26 = call i32 @read_trace_init(i8 signext %23, i8 signext %25)
  %27 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %28 = call i32 @write_or_die(i8* %27, i32 1)
  %29 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  store i8 8, i8* %29, align 16
  %30 = getelementptr inbounds [20 x i8], [20 x i8]* %1, i64 0, i64 0
  %31 = call i32 @write_or_die(i8* %30, i32 1)
  %32 = load i32, i32* @_SC_PAGESIZE, align 4
  %33 = call signext i8 @sysconf(i32 %32)
  store i8 %33, i8* @page_size, align 1
  %34 = call i32 @write_or_die(i8* @page_size, i32 4)
  ret void
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @write_or_die(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @bigendian(...) #1

declare dso_local i32 @read_trace_init(i8 signext, i8 signext) #1

declare dso_local signext i8 @sysconf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
