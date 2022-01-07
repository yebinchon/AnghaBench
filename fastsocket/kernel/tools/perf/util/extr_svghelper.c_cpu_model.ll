; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_cpu_model.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_svghelper.c_cpu_model.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cpu_model.cpu_m = internal global [255 x i8] zeroinitializer, align 16
@.str = private unnamed_addr constant [14 x i8] c"/proc/cpuinfo\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"model name\00", align 1
@.str.3 = private unnamed_addr constant [67 x i8] c"/sys/devices/system/cpu/cpu0/cpufreq/scaling_available_frequencies\00", align 1
@max_freq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* ()* @cpu_model to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cpu_model() #0 {
  %1 = alloca [256 x i8], align 16
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  store i8 0, i8* getelementptr inbounds ([255 x i8], [255 x i8]* @cpu_model.cpu_m, i64 0, i64 0), align 16
  %4 = call i32* @fopen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %4, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %24

7:                                                ; preds = %0
  br label %8

8:                                                ; preds = %20, %7
  %9 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %10 = load i32*, i32** %2, align 8
  %11 = call i64 @fgets(i8* %9, i32 255, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %15 = call i64 @strstr(i8* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 13
  %19 = call i32 @strncpy(i8* getelementptr inbounds ([255 x i8], [255 x i8]* @cpu_model.cpu_m, i64 0, i64 0), i8* %18, i32 255)
  br label %21

20:                                               ; preds = %13
  br label %8

21:                                               ; preds = %17, %8
  %22 = load i32*, i32** %2, align 8
  %23 = call i32 @fclose(i32* %22)
  br label %24

24:                                               ; preds = %21, %0
  %25 = call i32* @fopen(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %25, i32** %2, align 8
  %26 = load i32*, i32** %2, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %28, label %46

28:                                               ; preds = %24
  br label %29

29:                                               ; preds = %42, %28
  %30 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %31 = load i32*, i32** %2, align 8
  %32 = call i64 @fgets(i8* %30, i32 255, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = getelementptr inbounds [256 x i8], [256 x i8]* %1, i64 0, i64 0
  %36 = call i32 @strtoull(i8* %35, i32* null, i32 10)
  store i32 %36, i32* %3, align 4
  %37 = load i32, i32* %3, align 4
  %38 = load i32, i32* @max_freq, align 4
  %39 = icmp ugt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %34
  %41 = load i32, i32* %3, align 4
  store i32 %41, i32* @max_freq, align 4
  br label %42

42:                                               ; preds = %40, %34
  br label %29

43:                                               ; preds = %29
  %44 = load i32*, i32** %2, align 8
  %45 = call i32 @fclose(i32* %44)
  br label %46

46:                                               ; preds = %43, %24
  ret i8* getelementptr inbounds ([255 x i8], [255 x i8]* @cpu_model.cpu_m, i64 0, i64 0)
}

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strstr(i8*, i8*) #1

declare dso_local i32 @strncpy(i8*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @strtoull(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
