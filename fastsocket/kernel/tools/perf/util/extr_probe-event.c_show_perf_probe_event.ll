; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_show_perf_probe_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_probe-event.c_show_perf_probe_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_probe_event = type { i32, i32*, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s:%s\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"  %-20s (on %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" with\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_probe_event*)* @show_perf_probe_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @show_perf_probe_event(%struct.perf_probe_event* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.perf_probe_event*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [128 x i8], align 16
  %7 = alloca i8*, align 8
  store %struct.perf_probe_event* %0, %struct.perf_probe_event** %3, align 8
  %8 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %9 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %8, i32 0, i32 4
  %10 = call i8* @synthesize_perf_probe_point(i32* %9)
  store i8* %10, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %69

16:                                               ; preds = %1
  %17 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %18 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %19 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %22 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @e_snprintf(i8* %17, i32 128, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %16
  %28 = load i32, i32* %5, align 4
  store i32 %28, i32* %2, align 4
  br label %69

29:                                               ; preds = %16
  %30 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %30, i8* %31)
  %33 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %34 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %64

37:                                               ; preds = %29
  %38 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %60, %37
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %42 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %63

45:                                               ; preds = %39
  %46 = load %struct.perf_probe_event*, %struct.perf_probe_event** %3, align 8
  %47 = getelementptr inbounds %struct.perf_probe_event, %struct.perf_probe_event* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %53 = call i32 @synthesize_perf_probe_arg(i32* %51, i8* %52, i32 128)
  store i32 %53, i32* %5, align 4
  %54 = load i32, i32* %5, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %45
  br label %63

57:                                               ; preds = %45
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %6, i64 0, i64 0
  %59 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i8* %58)
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %4, align 4
  br label %39

63:                                               ; preds = %56, %39
  br label %64

64:                                               ; preds = %63, %29
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0))
  %66 = load i8*, i8** %7, align 8
  %67 = call i32 @free(i8* %66)
  %68 = load i32, i32* %5, align 4
  store i32 %68, i32* %2, align 4
  br label %69

69:                                               ; preds = %64, %27, %13
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @synthesize_perf_probe_point(i32*) #1

declare dso_local i32 @e_snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @synthesize_perf_probe_arg(i32*, i8*, i32) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
