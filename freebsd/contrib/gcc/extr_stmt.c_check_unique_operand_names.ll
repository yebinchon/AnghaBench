; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_check_unique_operand_names.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_check_unique_operand_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [31 x i8] c"duplicate asm operand name %qs\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @check_unique_operand_names to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_unique_operand_names(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  store i64 %10, i64* %6, align 8
  br label %11

11:                                               ; preds = %40, %2
  %12 = load i64, i64* %6, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %11
  %15 = load i64, i64* %6, align 8
  %16 = call i64 @TREE_PURPOSE(i64 %15)
  %17 = call i64 @TREE_PURPOSE(i64 %16)
  store i64 %17, i64* %8, align 8
  %18 = load i64, i64* %8, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %14
  br label %40

21:                                               ; preds = %14
  %22 = load i64, i64* %6, align 8
  %23 = call i64 @TREE_CHAIN(i64 %22)
  store i64 %23, i64* %7, align 8
  br label %24

24:                                               ; preds = %36, %21
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %24
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @TREE_PURPOSE(i64 %29)
  %31 = call i64 @TREE_PURPOSE(i64 %30)
  %32 = call i64 @simple_cst_equal(i64 %28, i64 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %95

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %7, align 8
  %38 = call i64 @TREE_CHAIN(i64 %37)
  store i64 %38, i64* %7, align 8
  br label %24

39:                                               ; preds = %24
  br label %40

40:                                               ; preds = %39, %20
  %41 = load i64, i64* %6, align 8
  %42 = call i64 @TREE_CHAIN(i64 %41)
  store i64 %42, i64* %6, align 8
  br label %11

43:                                               ; preds = %11
  %44 = load i64, i64* %5, align 8
  store i64 %44, i64* %6, align 8
  br label %45

45:                                               ; preds = %91, %43
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %94

48:                                               ; preds = %45
  %49 = load i64, i64* %6, align 8
  %50 = call i64 @TREE_PURPOSE(i64 %49)
  %51 = call i64 @TREE_PURPOSE(i64 %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %48
  br label %91

55:                                               ; preds = %48
  %56 = load i64, i64* %6, align 8
  %57 = call i64 @TREE_CHAIN(i64 %56)
  store i64 %57, i64* %7, align 8
  br label %58

58:                                               ; preds = %70, %55
  %59 = load i64, i64* %7, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %58
  %62 = load i64, i64* %9, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i64 @TREE_PURPOSE(i64 %63)
  %65 = call i64 @TREE_PURPOSE(i64 %64)
  %66 = call i64 @simple_cst_equal(i64 %62, i64 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %61
  br label %95

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69
  %71 = load i64, i64* %7, align 8
  %72 = call i64 @TREE_CHAIN(i64 %71)
  store i64 %72, i64* %7, align 8
  br label %58

73:                                               ; preds = %58
  %74 = load i64, i64* %4, align 8
  store i64 %74, i64* %7, align 8
  br label %75

75:                                               ; preds = %87, %73
  %76 = load i64, i64* %7, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %90

78:                                               ; preds = %75
  %79 = load i64, i64* %9, align 8
  %80 = load i64, i64* %7, align 8
  %81 = call i64 @TREE_PURPOSE(i64 %80)
  %82 = call i64 @TREE_PURPOSE(i64 %81)
  %83 = call i64 @simple_cst_equal(i64 %79, i64 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %78
  br label %95

86:                                               ; preds = %78
  br label %87

87:                                               ; preds = %86
  %88 = load i64, i64* %7, align 8
  %89 = call i64 @TREE_CHAIN(i64 %88)
  store i64 %89, i64* %7, align 8
  br label %75

90:                                               ; preds = %75
  br label %91

91:                                               ; preds = %90, %54
  %92 = load i64, i64* %6, align 8
  %93 = call i64 @TREE_CHAIN(i64 %92)
  store i64 %93, i64* %6, align 8
  br label %45

94:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %101

95:                                               ; preds = %85, %68, %34
  %96 = load i64, i64* %6, align 8
  %97 = call i64 @TREE_PURPOSE(i64 %96)
  %98 = call i64 @TREE_PURPOSE(i64 %97)
  %99 = call i32 @TREE_STRING_POINTER(i64 %98)
  %100 = call i32 @error(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %99)
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %95, %94
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i64 @TREE_PURPOSE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @simple_cst_equal(i64, i64) #1

declare dso_local i32 @error(i8*, i32) #1

declare dso_local i32 @TREE_STRING_POINTER(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
