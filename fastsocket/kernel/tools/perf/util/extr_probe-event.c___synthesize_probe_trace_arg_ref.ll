; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___synthesize_probe_trace_arg_ref.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c___synthesize_probe_trace_arg_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.probe_trace_arg_ref = type { i32, %struct.probe_trace_arg_ref* }

@.str = private unnamed_addr constant [6 x i8] c"%+ld(\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.probe_trace_arg_ref*, i8**, i64*, i32)* @__synthesize_probe_trace_arg_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %0, i8** %1, i64* %2, i32 %3) #0 {
  %5 = alloca %struct.probe_trace_arg_ref*, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.probe_trace_arg_ref* %0, %struct.probe_trace_arg_ref** %5, align 8
  store i8** %1, i8*** %6, align 8
  store i64* %2, i64** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %11 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %10, i32 0, i32 1
  %12 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %11, align 8
  %13 = icmp ne %struct.probe_trace_arg_ref* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %4
  %15 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %16 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %15, i32 0, i32 1
  %17 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %16, align 8
  %18 = load i8**, i8*** %6, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i32, i32* %8, align 4
  %21 = add nsw i32 %20, 1
  %22 = call i32 @__synthesize_probe_trace_arg_ref(%struct.probe_trace_arg_ref* %17, i8** %18, i64* %19, i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %52

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %4
  %28 = load i8**, i8*** %6, align 8
  %29 = load i8*, i8** %28, align 8
  %30 = load i64*, i64** %7, align 8
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.probe_trace_arg_ref*, %struct.probe_trace_arg_ref** %5, align 8
  %33 = getelementptr inbounds %struct.probe_trace_arg_ref, %struct.probe_trace_arg_ref* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @e_snprintf(i8* %29, i64 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %8, align 4
  br label %51

40:                                               ; preds = %27
  %41 = load i32, i32* %9, align 4
  %42 = load i8**, i8*** %6, align 8
  %43 = load i8*, i8** %42, align 8
  %44 = sext i32 %41 to i64
  %45 = getelementptr inbounds i8, i8* %43, i64 %44
  store i8* %45, i8** %42, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = load i64*, i64** %7, align 8
  %49 = load i64, i64* %48, align 8
  %50 = sub i64 %49, %47
  store i64 %50, i64* %48, align 8
  br label %51

51:                                               ; preds = %40, %38
  br label %52

52:                                               ; preds = %51, %25
  %53 = load i32, i32* %8, align 4
  ret i32 %53
}

declare dso_local i32 @e_snprintf(i8*, i64, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
