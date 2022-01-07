; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__enlarge_counters.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values__enlarge_counters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i32, i8**, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"failed to enlarge read_values counters arrays\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.perf_read_values*)* @perf_read_values__enlarge_counters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @perf_read_values__enlarge_counters(%struct.perf_read_values* %0) #0 {
  %2 = alloca %struct.perf_read_values*, align 8
  %3 = alloca i32, align 4
  store %struct.perf_read_values* %0, %struct.perf_read_values** %2, align 8
  %4 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %5 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = mul nsw i32 %6, 2
  store i32 %7, i32* %5, align 8
  %8 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %9 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %8, i32 0, i32 4
  %10 = load i8*, i8** %9, align 8
  %11 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %12 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 1
  %16 = trunc i64 %15 to i32
  %17 = call i8* @realloc(i8* %10, i32 %16)
  %18 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %19 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  %20 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %21 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %20, i32 0, i32 3
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %24 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i8* @realloc(i8* %22, i32 %28)
  %30 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %31 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %30, i32 0, i32 3
  store i8* %29, i8** %31, align 8
  %32 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %33 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %32, i32 0, i32 4
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %1
  %37 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %38 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %37, i32 0, i32 3
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %36, %1
  %42 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %41, %36
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %82, %43
  %45 = load i32, i32* %3, align 4
  %46 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %47 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp slt i32 %45, %48
  br i1 %49, label %50, label %85

50:                                               ; preds = %44
  %51 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %52 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %51, i32 0, i32 2
  %53 = load i8**, i8*** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8*, i8** %53, i64 %55
  %57 = load i8*, i8** %56, align 8
  %58 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %59 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sext i32 %60 to i64
  %62 = mul i64 %61, 1
  %63 = trunc i64 %62 to i32
  %64 = call i8* @realloc(i8* %57, i32 %63)
  %65 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %66 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %65, i32 0, i32 2
  %67 = load i8**, i8*** %66, align 8
  %68 = load i32, i32* %3, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8*, i8** %67, i64 %69
  store i8* %64, i8** %70, align 8
  %71 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %72 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %71, i32 0, i32 2
  %73 = load i8**, i8*** %72, align 8
  %74 = load i32, i32* %3, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i8*, i8** %73, i64 %75
  %77 = load i8*, i8** %76, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %81, label %79

79:                                               ; preds = %50
  %80 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %81

81:                                               ; preds = %79, %50
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %3, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %3, align 4
  br label %44

85:                                               ; preds = %44
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
