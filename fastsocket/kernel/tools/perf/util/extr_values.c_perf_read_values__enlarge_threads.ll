; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__enlarge_threads.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__enlarge_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i8*, i8*, i8* }

@.str = private unnamed_addr constant [45 x i8] c"failed to enlarge read_values threads arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_read_values*)* @perf_read_values__enlarge_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_read_values__enlarge_threads(%struct.perf_read_values* %0) #0 {
  %2 = alloca %struct.perf_read_values*, align 8
  store %struct.perf_read_values* %0, %struct.perf_read_values** %2, align 8
  %3 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %4 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  %6 = mul nsw i32 %5, 2
  store i32 %6, i32* %4, align 8
  %7 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %8 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %7, i32 0, i32 3
  %9 = load i8*, i8** %8, align 8
  %10 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %11 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 1
  %15 = trunc i64 %14 to i32
  %16 = call i8* @realloc(i8* %9, i32 %15)
  %17 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %18 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %20 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %19, i32 0, i32 2
  %21 = load i8*, i8** %20, align 8
  %22 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %23 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = mul i64 %25, 1
  %27 = trunc i64 %26 to i32
  %28 = call i8* @realloc(i8* %21, i32 %27)
  %29 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %30 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %29, i32 0, i32 2
  store i8* %28, i8** %30, align 8
  %31 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %32 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %31, i32 0, i32 1
  %33 = load i8*, i8** %32, align 8
  %34 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %35 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = sext i32 %36 to i64
  %38 = mul i64 %37, 1
  %39 = trunc i64 %38 to i32
  %40 = call i8* @realloc(i8* %33, i32 %39)
  %41 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %42 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %44 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %43, i32 0, i32 3
  %45 = load i8*, i8** %44, align 8
  %46 = icmp ne i8* %45, null
  br i1 %46, label %47, label %57

47:                                               ; preds = %1
  %48 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %49 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %48, i32 0, i32 2
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %52, label %57

52:                                               ; preds = %47
  %53 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %54 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %59, label %57

57:                                               ; preds = %52, %47, %1
  %58 = call i32 @die(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %59

59:                                               ; preds = %57, %52
  ret void
}

declare dso_local i8* @realloc(i8*, i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
