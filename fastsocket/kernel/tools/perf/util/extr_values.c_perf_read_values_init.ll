; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_values.c_perf_read_values_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.perf_read_values = type { i32, i32, i64, i8*, i8*, i64, i8*, i8*, i8* }

@.str = private unnamed_addr constant [46 x i8] c"failed to allocate read_values threads arrays\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to allocate read_values counters arrays\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @perf_read_values_init(%struct.perf_read_values* %0) #0 {
  %2 = alloca %struct.perf_read_values*, align 8
  store %struct.perf_read_values* %0, %struct.perf_read_values** %2, align 8
  %3 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %4 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %3, i32 0, i32 0
  store i32 16, i32* %4, align 8
  %5 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %6 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = sext i32 %7 to i64
  %9 = mul i64 %8, 1
  %10 = trunc i64 %9 to i32
  %11 = call i8* @malloc(i32 %10)
  %12 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %13 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %12, i32 0, i32 8
  store i8* %11, i8** %13, align 8
  %14 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %15 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = trunc i64 %18 to i32
  %20 = call i8* @malloc(i32 %19)
  %21 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %22 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %24 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sext i32 %25 to i64
  %27 = mul i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = call i8* @malloc(i32 %28)
  %30 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %31 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %30, i32 0, i32 6
  store i8* %29, i8** %31, align 8
  %32 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %33 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %32, i32 0, i32 8
  %34 = load i8*, i8** %33, align 8
  %35 = icmp ne i8* %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %1
  %37 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %38 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %37, i32 0, i32 7
  %39 = load i8*, i8** %38, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %46

41:                                               ; preds = %36
  %42 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %43 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %42, i32 0, i32 6
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %41, %36, %1
  %47 = call i32 @die(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %46, %41
  %49 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %50 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %49, i32 0, i32 5
  store i64 0, i64* %50, align 8
  %51 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %52 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %51, i32 0, i32 1
  store i32 16, i32* %52, align 4
  %53 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %54 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = mul i64 %56, 1
  %58 = trunc i64 %57 to i32
  %59 = call i8* @malloc(i32 %58)
  %60 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %61 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %60, i32 0, i32 4
  store i8* %59, i8** %61, align 8
  %62 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %63 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 %65, 1
  %67 = trunc i64 %66 to i32
  %68 = call i8* @malloc(i32 %67)
  %69 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %70 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %69, i32 0, i32 3
  store i8* %68, i8** %70, align 8
  %71 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %72 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %48
  %76 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %77 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %76, i32 0, i32 3
  %78 = load i8*, i8** %77, align 8
  %79 = icmp ne i8* %78, null
  br i1 %79, label %82, label %80

80:                                               ; preds = %75, %48
  %81 = call i32 @die(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  br label %82

82:                                               ; preds = %80, %75
  %83 = load %struct.perf_read_values*, %struct.perf_read_values** %2, align 8
  %84 = getelementptr inbounds %struct.perf_read_values, %struct.perf_read_values* %83, i32 0, i32 2
  store i64 0, i64* %84, align 8
  ret void
}

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @die(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
