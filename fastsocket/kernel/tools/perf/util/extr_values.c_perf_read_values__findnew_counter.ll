; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__findnew_counter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__findnew_counter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i64*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.perf_read_values*, i64, i8*)* @perf_read_values__findnew_counter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @perf_read_values__findnew_counter(%struct.perf_read_values* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.perf_read_values*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.perf_read_values* %0, %struct.perf_read_values** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %28, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %12 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %31

15:                                               ; preds = %9
  %16 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %17 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %16, i32 0, i32 1
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %15
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %4, align 4
  br label %64

27:                                               ; preds = %15
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %8, align 4
  br label %9

31:                                               ; preds = %9
  %32 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %33 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %37 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %31
  %41 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %42 = call i32 @perf_read_values__enlarge_counters(%struct.perf_read_values* %41)
  br label %43

43:                                               ; preds = %40, %31
  %44 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %45 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  store i32 %46, i32* %8, align 4
  %48 = load i64, i64* %6, align 8
  %49 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %50 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %49, i32 0, i32 1
  %51 = load i64*, i64** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i64, i64* %51, i64 %53
  store i64 %48, i64* %54, align 8
  %55 = load i8*, i8** %7, align 8
  %56 = call i32 @strdup(i8* %55)
  %57 = load %struct.perf_read_values*, %struct.perf_read_values** %5, align 8
  %58 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %56, i32* %62, align 4
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %64

64:                                               ; preds = %43, %25
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @perf_read_values__enlarge_counters(%struct.perf_read_values*) #1

declare dso_local i32 @strdup(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
