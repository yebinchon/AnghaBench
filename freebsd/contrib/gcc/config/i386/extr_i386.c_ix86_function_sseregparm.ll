; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_sseregparm.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/config/i386/extr_i386.c_ix86_function_sseregparm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_local_info = type { i64 }

@TARGET_SSEREGPARM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c"sseregparm\00", align 1
@TARGET_SSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [63 x i8] c"Calling %qD with attribute sseregparm without SSE/SSE2 enabled\00", align 1
@.str.2 = private unnamed_addr constant [63 x i8] c"Calling %qT with attribute sseregparm without SSE/SSE2 enabled\00", align 1
@TARGET_64BIT = common dso_local global i32 0, align 4
@TARGET_SSE_MATH = common dso_local global i64 0, align 8
@flag_unit_at_a_time = common dso_local global i64 0, align 8
@profile_flag = common dso_local global i32 0, align 4
@TARGET_SSE2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @ix86_function_sseregparm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ix86_function_sseregparm(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.cgraph_local_info*, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* @TARGET_SSEREGPARM, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %9
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @TYPE_ATTRIBUTES(i64 %13)
  %15 = call i64 @lookup_attribute(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %12, %2
  %18 = load i32, i32* @TARGET_SSE, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.1, i64 0, i64 0), i64 %24)
  br label %29

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = call i32 @error(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.2, i64 0, i64 0), i64 %27)
  br label %29

29:                                               ; preds = %26, %23
  store i32 0, i32* %3, align 4
  br label %63

30:                                               ; preds = %17
  store i32 2, i32* %3, align 4
  br label %63

31:                                               ; preds = %12, %9
  %32 = load i32, i32* @TARGET_64BIT, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %62, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %5, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %62

37:                                               ; preds = %34
  %38 = load i64, i64* @TARGET_SSE_MATH, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %37
  %41 = load i64, i64* @flag_unit_at_a_time, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %62

43:                                               ; preds = %40
  %44 = load i32, i32* @profile_flag, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %62, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %5, align 8
  %48 = call %struct.cgraph_local_info* @cgraph_local_info(i64 %47)
  store %struct.cgraph_local_info* %48, %struct.cgraph_local_info** %6, align 8
  %49 = load %struct.cgraph_local_info*, %struct.cgraph_local_info** %6, align 8
  %50 = icmp ne %struct.cgraph_local_info* %49, null
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.cgraph_local_info*, %struct.cgraph_local_info** %6, align 8
  %53 = getelementptr inbounds %struct.cgraph_local_info, %struct.cgraph_local_info* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i64, i64* @TARGET_SSE2, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i32 2, i32 1
  store i32 %60, i32* %3, align 4
  br label %63

61:                                               ; preds = %51, %46
  br label %62

62:                                               ; preds = %61, %43, %40, %37, %34, %31
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %62, %56, %30, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i64 @lookup_attribute(i8*, i32) #1

declare dso_local i32 @TYPE_ATTRIBUTES(i64) #1

declare dso_local i32 @error(i8*, i64) #1

declare dso_local %struct.cgraph_local_info* @cgraph_local_info(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
