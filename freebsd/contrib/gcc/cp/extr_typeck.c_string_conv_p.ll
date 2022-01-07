; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_string_conv_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_string_conv_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@POINTER_TYPE = common dso_local global i64 0, align 8
@char_type_node = common dso_local global i32 0, align 4
@wchar_type_node = common dso_local global i32 0, align 4
@STRING_CST = common dso_local global i64 0, align 8
@TYPE_QUAL_CONST = common dso_local global i32 0, align 4
@ADDR_EXPR = common dso_local global i64 0, align 8
@OPT_Wwrite_strings = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"deprecated conversion from string constant to %qT\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @string_conv_p(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @TREE_CODE(i32 %9)
  %11 = load i64, i64* @POINTER_TYPE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %76

14:                                               ; preds = %3
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @TREE_TYPE(i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @char_type_node, align 4
  %19 = call i32 @same_type_p(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* @wchar_type_node, align 4
  %24 = call i32 @same_type_p(i32 %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %76

27:                                               ; preds = %21, %14
  %28 = load i32, i32* %6, align 4
  %29 = call i64 @TREE_CODE(i32 %28)
  %30 = load i64, i64* @STRING_CST, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @TREE_TYPE(i32 %33)
  %35 = call i32 @TREE_TYPE(i32 %34)
  %36 = call i32 @TYPE_MAIN_VARIANT(i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @same_type_p(i32 %36, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %32
  store i32 0, i32* %4, align 4
  br label %76

41:                                               ; preds = %32
  br label %68

42:                                               ; preds = %27
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @TYPE_QUAL_CONST, align 4
  %45 = call i32 @build_qualified_type(i32 %43, i32 %44)
  %46 = call i32 @build_pointer_type(i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @TREE_TYPE(i32 %47)
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @same_type_p(i32 %48, i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %76

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  %55 = call i32 @STRIP_NOPS(i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @TREE_CODE(i32 %56)
  %58 = load i64, i64* @ADDR_EXPR, align 8
  %59 = icmp ne i64 %57, %58
  br i1 %59, label %66, label %60

60:                                               ; preds = %53
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @TREE_OPERAND(i32 %61, i32 0)
  %63 = call i64 @TREE_CODE(i32 %62)
  %64 = load i64, i64* @STRING_CST, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %60, %53
  store i32 0, i32* %4, align 4
  br label %76

67:                                               ; preds = %60
  br label %68

68:                                               ; preds = %67, %41
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = load i32, i32* @OPT_Wwrite_strings, align 4
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @warning(i32 %72, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %71, %68
  store i32 1, i32* %4, align 4
  br label %76

76:                                               ; preds = %75, %66, %52, %40, %26, %13
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @same_type_p(i32, i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @build_pointer_type(i32) #1

declare dso_local i32 @build_qualified_type(i32, i32) #1

declare dso_local i32 @STRIP_NOPS(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @warning(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
