; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__fprintf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_cpumap.c_cpu_map__fprintf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpu_map = type { i32, i32* }

@.str = private unnamed_addr constant [11 x i8] c"%d cpu%s: \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cpu_map__fprintf(%struct.cpu_map* %0, i32* %1) #0 {
  %3 = alloca %struct.cpu_map*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.cpu_map* %0, %struct.cpu_map** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = load %struct.cpu_map*, %struct.cpu_map** %3, align 8
  %9 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.cpu_map*, %struct.cpu_map** %3, align 8
  %12 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %17 = call i64 (i32*, i8*, ...) @fprintf(i32* %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %16)
  store i64 %17, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %40, %2
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.cpu_map*, %struct.cpu_map** %3, align 8
  %21 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp slt i32 %19, %22
  br i1 %23, label %24, label %43

24:                                               ; preds = %18
  %25 = load i32*, i32** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %30 = load %struct.cpu_map*, %struct.cpu_map** %3, align 8
  %31 = getelementptr inbounds %struct.cpu_map, %struct.cpu_map* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i64 (i32*, i8*, ...) @fprintf(i32* %25, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %29, i32 %36)
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, %37
  store i64 %39, i64* %6, align 8
  br label %40

40:                                               ; preds = %24
  %41 = load i32, i32* %5, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %5, align 4
  br label %18

43:                                               ; preds = %18
  %44 = load i64, i64* %6, align 8
  %45 = load i32*, i32** %4, align 8
  %46 = call i64 (i32*, i8*, ...) @fprintf(i32* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %47 = add i64 %44, %46
  ret i64 %47
}

declare dso_local i64 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
