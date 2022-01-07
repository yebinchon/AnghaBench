; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_function_sentinel.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_c-common.c_check_function_sentinel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"sentinel\00", align 1
@OPT_Wformat = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"not enough variable arguments to fit a sentinel\00", align 1
@warn_strict_null_sentinel = common dso_local global i64 0, align 8
@null_node = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"missing sentinel in function call\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i64)* @check_function_sentinel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_function_sentinel(i64 %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @lookup_attribute(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i64 %12)
  store i64 %13, i64* %7, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %105

16:                                               ; preds = %3
  br label %17

17:                                               ; preds = %25, %16
  %18 = load i64, i64* %6, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = icmp ne i64 %21, 0
  br label %23

23:                                               ; preds = %20, %17
  %24 = phi i1 [ false, %17 ], [ %22, %20 ]
  br i1 %24, label %25, label %30

25:                                               ; preds = %23
  %26 = load i64, i64* %6, align 8
  %27 = call i64 @TREE_CHAIN(i64 %26)
  store i64 %27, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = call i64 @TREE_CHAIN(i64 %28)
  store i64 %29, i64* %5, align 8
  br label %17

30:                                               ; preds = %23
  %31 = load i64, i64* %6, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %33, %30
  %37 = load i32, i32* @OPT_Wformat, align 4
  %38 = call i32 @warning(i32 %37, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %104

39:                                               ; preds = %33
  store i32 0, i32* %10, align 4
  %40 = load i64, i64* %7, align 8
  %41 = call i64 @TREE_VALUE(i64 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @TREE_VALUE(i64 %44)
  %46 = call i64 @TREE_VALUE(i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load i64, i64* %11, align 8
  %48 = call i32 @TREE_INT_CST_LOW(i64 %47)
  store i32 %48, i32* %10, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i64, i64* %5, align 8
  store i64 %50, i64* %9, align 8
  store i64 %50, i64* %8, align 8
  br label %51

51:                                               ; preds = %60, %49
  %52 = load i32, i32* %10, align 4
  %53 = icmp ugt i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i64, i64* %9, align 8
  %56 = call i64 @TREE_CHAIN(i64 %55)
  %57 = icmp ne i64 %56, 0
  br label %58

58:                                               ; preds = %54, %51
  %59 = phi i1 [ false, %51 ], [ %57, %54 ]
  br i1 %59, label %60, label %65

60:                                               ; preds = %58
  %61 = load i32, i32* %10, align 4
  %62 = add i32 %61, -1
  store i32 %62, i32* %10, align 4
  %63 = load i64, i64* %9, align 8
  %64 = call i64 @TREE_CHAIN(i64 %63)
  store i64 %64, i64* %9, align 8
  br label %51

65:                                               ; preds = %58
  %66 = load i32, i32* %10, align 4
  %67 = icmp ugt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %65
  %69 = load i32, i32* @OPT_Wformat, align 4
  %70 = call i32 @warning(i32 %69, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %105

71:                                               ; preds = %65
  br label %72

72:                                               ; preds = %76, %71
  %73 = load i64, i64* %9, align 8
  %74 = call i64 @TREE_CHAIN(i64 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %72
  %77 = load i64, i64* %9, align 8
  %78 = call i64 @TREE_CHAIN(i64 %77)
  store i64 %78, i64* %9, align 8
  %79 = load i64, i64* %8, align 8
  %80 = call i64 @TREE_CHAIN(i64 %79)
  store i64 %80, i64* %8, align 8
  br label %72

81:                                               ; preds = %72
  %82 = load i64, i64* %8, align 8
  %83 = call i64 @TREE_VALUE(i64 %82)
  %84 = call i32 @TREE_TYPE(i64 %83)
  %85 = call i32 @POINTER_TYPE_P(i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @TREE_VALUE(i64 %88)
  %90 = call i32 @integer_zerop(i64 %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87, %81
  %93 = load i64, i64* @warn_strict_null_sentinel, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %100, label %95

95:                                               ; preds = %92
  %96 = load i64, i64* @null_node, align 8
  %97 = load i64, i64* %8, align 8
  %98 = call i64 @TREE_VALUE(i64 %97)
  %99 = icmp ne i64 %96, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %95, %92
  %101 = load i32, i32* @OPT_Wformat, align 4
  %102 = call i32 @warning(i32 %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %100, %95, %87
  br label %104

104:                                              ; preds = %103, %36
  br label %105

105:                                              ; preds = %68, %104, %3
  ret void
}

declare dso_local i64 @lookup_attribute(i8*, i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @warning(i32, i8*) #1

declare dso_local i64 @TREE_VALUE(i64) #1

declare dso_local i32 @TREE_INT_CST_LOW(i64) #1

declare dso_local i32 @POINTER_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i32 @integer_zerop(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
