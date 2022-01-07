; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_warn_if_unused_value.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stmt.c_warn_if_unused_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REFERENCE_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"%Hvalue computed is not used\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @warn_if_unused_value(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %70, %54, %38, %35, %32, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_USED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @TREE_NO_WARNING(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10, %6
  store i32 0, i32* %3, align 4
  br label %100

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_TYPE(i32 %16)
  %18 = call i64 @VOID_TYPE_P(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %100

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i64 @EXPR_HAS_LOCATION(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @EXPR_LOCATION(i32 %26)
  store i32 %27, i32* %5, align 4
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @TREE_CODE(i32 %29)
  switch i32 %30, label %74 [
    i32 135, label %31
    i32 137, label %31
    i32 136, label %31
    i32 138, label %31
    i32 139, label %31
    i32 140, label %31
    i32 133, label %31
    i32 145, label %31
    i32 130, label %31
    i32 128, label %31
    i32 142, label %31
    i32 129, label %31
    i32 146, label %32
    i32 134, label %35
    i32 131, label %38
    i32 132, label %38
    i32 144, label %41
    i32 143, label %57
    i32 141, label %63
  ]

31:                                               ; preds = %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28, %28
  store i32 0, i32* %3, align 4
  br label %100

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @BIND_EXPR_BODY(i32 %33)
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @TREE_OPERAND(i32 %36, i32 0)
  store i32 %37, i32* %4, align 4
  br label %6

38:                                               ; preds = %28, %28
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @TREE_OPERAND(i32 %39, i32 1)
  store i32 %40, i32* %4, align 4
  br label %6

41:                                               ; preds = %28
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @TREE_OPERAND(i32 %42, i32 0)
  %44 = load i32, i32* %5, align 4
  %45 = call i32 @warn_if_unused_value(i32 %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 1, i32* %3, align 4
  br label %100

48:                                               ; preds = %41
  %49 = load i32, i32* %4, align 4
  %50 = call i32 @TREE_OPERAND(i32 %49, i32 1)
  %51 = call i32 @TREE_CONSTANT(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  store i32 0, i32* %3, align 4
  br label %100

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @TREE_OPERAND(i32 %55, i32 1)
  store i32 %56, i32* %4, align 4
  br label %6

57:                                               ; preds = %28
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @TREE_SIDE_EFFECTS(i32 %58)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %100

62:                                               ; preds = %57
  br label %98

63:                                               ; preds = %28
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @TREE_OPERAND(i32 %64, i32 0)
  %66 = call i32 @TREE_TYPE(i32 %65)
  %67 = call i32 @TREE_CODE(i32 %66)
  %68 = load i32, i32* @REFERENCE_TYPE, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load i32, i32* %4, align 4
  %72 = call i32 @TREE_OPERAND(i32 %71, i32 0)
  store i32 %72, i32* %4, align 4
  br label %6

73:                                               ; preds = %63
  br label %74

74:                                               ; preds = %28, %73
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @DECL_P(i32 %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @REFERENCE_CLASS_P(i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %78, %74
  %83 = load i32, i32* %4, align 4
  %84 = call i32 @TREE_THIS_VOLATILE(i32 %83)
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i32 0, i32* %3, align 4
  br label %100

87:                                               ; preds = %82, %78
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @EXPRESSION_CLASS_P(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = load i32, i32* %4, align 4
  %93 = call i32 @TREE_CODE(i32 %92)
  %94 = call i32 @TREE_CODE_LENGTH(i32 %93)
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  store i32 0, i32* %3, align 4
  br label %100

97:                                               ; preds = %91, %87
  br label %98

98:                                               ; preds = %97, %62
  %99 = call i32 @warning(i32 0, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32* %5)
  store i32 1, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %96, %86, %61, %53, %47, %31, %20, %14
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @TREE_USED(i32) #1

declare dso_local i64 @TREE_NO_WARNING(i32) #1

declare dso_local i64 @VOID_TYPE_P(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @EXPR_HAS_LOCATION(i32) #1

declare dso_local i32 @EXPR_LOCATION(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @BIND_EXPR_BODY(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TREE_CONSTANT(i32) #1

declare dso_local i32 @TREE_SIDE_EFFECTS(i32) #1

declare dso_local i32 @DECL_P(i32) #1

declare dso_local i32 @REFERENCE_CLASS_P(i32) #1

declare dso_local i32 @TREE_THIS_VOLATILE(i32) #1

declare dso_local i32 @EXPRESSION_CLASS_P(i32) #1

declare dso_local i32 @TREE_CODE_LENGTH(i32) #1

declare dso_local i32 @warning(i32, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
