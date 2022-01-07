; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-fpa.c___cvmx_helper_initialize_fpa.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/octeon/extr_cvmx-helper-fpa.c___cvmx_helper_initialize_fpa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [96 x i8] c"Warning: %d packet buffers may not be enough for hardware prefetch. 65 or more is recommended.\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"Packet Buffers\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"Work Queue Entries\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"PKO Command Buffers\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"TIM Command Buffers\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"DFA Command Buffers\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @__cvmx_helper_initialize_fpa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__cvmx_helper_initialize_fpa(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13, i32 %14) #0 {
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %17, align 4
  store i32 %1, i32* %18, align 4
  store i32 %2, i32* %19, align 4
  store i32 %3, i32* %20, align 4
  store i32 %4, i32* %21, align 4
  store i32 %5, i32* %22, align 4
  store i32 %6, i32* %23, align 4
  store i32 %7, i32* %24, align 4
  store i32 %8, i32* %25, align 4
  store i32 %9, i32* %26, align 4
  store i32 %10, i32* %27, align 4
  store i32 %11, i32* %28, align 4
  store i32 %12, i32* %29, align 4
  store i32 %13, i32* %30, align 4
  store i32 %14, i32* %31, align 4
  %33 = call i32 (...) @cvmx_fpa_enable()
  %34 = load i32, i32* %19, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %15
  %37 = load i32, i32* %19, align 4
  %38 = icmp sle i32 %37, 64
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %19, align 4
  %41 = call i32 @cvmx_dprintf(i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %39, %36, %15
  %43 = load i32, i32* %17, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %42
  %46 = load i32, i32* %17, align 4
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %19, align 4
  %49 = call i32 @__cvmx_helper_initialize_fpa_pool(i32 %46, i32 %47, i32 %48, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %32, align 4
  %50 = load i32, i32* %32, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %45
  %53 = load i32, i32* %32, align 4
  store i32 %53, i32* %16, align 4
  br label %108

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %42
  %56 = load i32, i32* %20, align 4
  %57 = icmp sge i32 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %55
  %59 = load i32, i32* %20, align 4
  %60 = load i32, i32* %21, align 4
  %61 = load i32, i32* %22, align 4
  %62 = call i32 @__cvmx_helper_initialize_fpa_pool(i32 %59, i32 %60, i32 %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 %62, i32* %32, align 4
  %63 = load i32, i32* %32, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* %32, align 4
  store i32 %66, i32* %16, align 4
  br label %108

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %55
  %69 = load i32, i32* %23, align 4
  %70 = icmp sge i32 %69, 0
  br i1 %70, label %71, label %81

71:                                               ; preds = %68
  %72 = load i32, i32* %23, align 4
  %73 = load i32, i32* %24, align 4
  %74 = load i32, i32* %25, align 4
  %75 = call i32 @__cvmx_helper_initialize_fpa_pool(i32 %72, i32 %73, i32 %74, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  store i32 %75, i32* %32, align 4
  %76 = load i32, i32* %32, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %71
  %79 = load i32, i32* %32, align 4
  store i32 %79, i32* %16, align 4
  br label %108

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80, %68
  %82 = load i32, i32* %26, align 4
  %83 = icmp sge i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load i32, i32* %26, align 4
  %86 = load i32, i32* %27, align 4
  %87 = load i32, i32* %28, align 4
  %88 = call i32 @__cvmx_helper_initialize_fpa_pool(i32 %85, i32 %86, i32 %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0))
  store i32 %88, i32* %32, align 4
  %89 = load i32, i32* %32, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %84
  %92 = load i32, i32* %32, align 4
  store i32 %92, i32* %16, align 4
  br label %108

93:                                               ; preds = %84
  br label %94

94:                                               ; preds = %93, %81
  %95 = load i32, i32* %29, align 4
  %96 = icmp sge i32 %95, 0
  br i1 %96, label %97, label %107

97:                                               ; preds = %94
  %98 = load i32, i32* %29, align 4
  %99 = load i32, i32* %30, align 4
  %100 = load i32, i32* %31, align 4
  %101 = call i32 @__cvmx_helper_initialize_fpa_pool(i32 %98, i32 %99, i32 %100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0))
  store i32 %101, i32* %32, align 4
  %102 = load i32, i32* %32, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %97
  %105 = load i32, i32* %32, align 4
  store i32 %105, i32* %16, align 4
  br label %108

106:                                              ; preds = %97
  br label %107

107:                                              ; preds = %106, %94
  store i32 0, i32* %16, align 4
  br label %108

108:                                              ; preds = %107, %104, %91, %78, %65, %52
  %109 = load i32, i32* %16, align 4
  ret i32 %109
}

declare dso_local i32 @cvmx_fpa_enable(...) #1

declare dso_local i32 @cvmx_dprintf(i8*, i32) #1

declare dso_local i32 @__cvmx_helper_initialize_fpa_pool(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
