; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_case_bounds.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_case_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"case label value is less than minimum value for type\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"case label value exceeds maximum value for type\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"lower value in case label range less than minimum value for type\00", align 1
@.str.3 = private unnamed_addr constant [63 x i8] c"upper value in case label range exceeds maximum value for type\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i64*, i64*)* @check_case_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_case_bounds(i64 %0, i64 %1, i64* %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64* %2, i64** %8, align 8
  store i64* %3, i64** %9, align 8
  %14 = load i64*, i64** %8, align 8
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %12, align 8
  %16 = load i64*, i64** %9, align 8
  %17 = icmp ne i64* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i64*, i64** %9, align 8
  %20 = load i64, i64* %19, align 8
  br label %23

21:                                               ; preds = %4
  %22 = load i64, i64* %12, align 8
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i64 [ %20, %18 ], [ %22, %21 ]
  store i64 %24, i64* %13, align 8
  %25 = load i64, i64* %7, align 8
  %26 = load i64, i64* @error_mark_node, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 1, i32* %5, align 4
  br label %107

29:                                               ; preds = %23
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @TYPE_MIN_VALUE(i64 %30)
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @TYPE_MAX_VALUE(i64 %32)
  store i64 %33, i64* %11, align 8
  %34 = load i64, i64* %12, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i64 @tree_int_cst_compare(i64 %34, i64 %35)
  %37 = icmp slt i64 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %29
  %39 = load i64, i64* %13, align 8
  %40 = load i64, i64* %10, align 8
  %41 = call i64 @tree_int_cst_compare(i64 %39, i64 %40)
  %42 = icmp slt i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = call i32 @warning(i32 0, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %107

45:                                               ; preds = %38, %29
  %46 = load i64, i64* %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i64 @tree_int_cst_compare(i64 %46, i64 %47)
  %49 = icmp sgt i64 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i64 @tree_int_cst_compare(i64 %51, i64 %52)
  %54 = icmp sgt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @warning(i32 0, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %107

57:                                               ; preds = %50, %45
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* %10, align 8
  %60 = call i64 @tree_int_cst_compare(i64 %58, i64 %59)
  %61 = icmp sge i64 %60, 0
  br i1 %61, label %62, label %70

62:                                               ; preds = %57
  %63 = load i64, i64* %12, align 8
  %64 = load i64, i64* %10, align 8
  %65 = call i64 @tree_int_cst_compare(i64 %63, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = call i32 @warning(i32 0, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0))
  %69 = load i64, i64* %10, align 8
  store i64 %69, i64* %12, align 8
  br label %70

70:                                               ; preds = %67, %62, %57
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = call i64 @tree_int_cst_compare(i64 %71, i64 %72)
  %74 = icmp sle i64 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %70
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %11, align 8
  %78 = call i64 @tree_int_cst_compare(i64 %76, i64 %77)
  %79 = icmp sgt i64 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = call i32 @warning(i32 0, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.3, i64 0, i64 0))
  %82 = load i64, i64* %11, align 8
  store i64 %82, i64* %13, align 8
  br label %83

83:                                               ; preds = %80, %75, %70
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* %12, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load i64, i64* %6, align 8
  %90 = load i64, i64* %12, align 8
  %91 = call i64 @convert(i64 %89, i64 %90)
  %92 = load i64*, i64** %8, align 8
  store i64 %91, i64* %92, align 8
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i64*, i64** %9, align 8
  %95 = icmp ne i64* %94, null
  br i1 %95, label %96, label %106

96:                                               ; preds = %93
  %97 = load i64*, i64** %9, align 8
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %13, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %106

101:                                              ; preds = %96
  %102 = load i64, i64* %6, align 8
  %103 = load i64, i64* %13, align 8
  %104 = call i64 @convert(i64 %102, i64 %103)
  %105 = load i64*, i64** %9, align 8
  store i64 %104, i64* %105, align 8
  br label %106

106:                                              ; preds = %101, %96, %93
  store i32 1, i32* %5, align 4
  br label %107

107:                                              ; preds = %106, %55, %43, %28
  %108 = load i32, i32* %5, align 4
  ret i32 %108
}

declare dso_local i64 @TYPE_MIN_VALUE(i64) #1

declare dso_local i64 @TYPE_MAX_VALUE(i64) #1

declare dso_local i64 @tree_int_cst_compare(i64, i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @convert(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
