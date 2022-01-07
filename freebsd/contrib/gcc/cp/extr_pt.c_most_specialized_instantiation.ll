; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_most_specialized_instantiation.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_most_specialized_instantiation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@processing_template_decl = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@error_mark_node = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @most_specialized_instantiation(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i32, i32* @processing_template_decl, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @processing_template_decl, align 4
  %9 = load i64, i64* %3, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %3, align 8
  %11 = call i64 @TREE_CHAIN(i64 %10)
  store i64 %11, i64* %4, align 8
  br label %12

12:                                               ; preds = %57, %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %60

15:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @TREE_VALUE(i64 %16)
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @TREE_VALUE(i64 %18)
  %20 = call i32 @DECL_TEMPLATE_RESULT(i32 %19)
  %21 = load i64, i64* @NULL_TREE, align 8
  %22 = call i64 @get_bindings(i32 %17, i32 %20, i64 %21, i32 0)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %15
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %15
  %28 = load i64, i64* %4, align 8
  %29 = call i32 @TREE_VALUE(i64 %28)
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @TREE_VALUE(i64 %30)
  %32 = call i32 @DECL_TEMPLATE_RESULT(i32 %31)
  %33 = load i64, i64* @NULL_TREE, align 8
  %34 = call i64 @get_bindings(i32 %29, i32 %32, i64 %33, i32 0)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %36, %27
  %40 = load i32, i32* %6, align 4
  %41 = icmp eq i32 %40, -1
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %5, align 8
  br label %56

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %55, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* %4, align 8
  %49 = call i64 @TREE_CHAIN(i64 %48)
  store i64 %49, i64* %4, align 8
  %50 = load i64, i64* %4, align 8
  store i64 %50, i64* %5, align 8
  %51 = load i64, i64* %4, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %60

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %44
  br label %56

56:                                               ; preds = %55, %42
  br label %57

57:                                               ; preds = %56
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TREE_CHAIN(i64 %58)
  store i64 %59, i64* %4, align 8
  br label %12

60:                                               ; preds = %53, %12
  %61 = load i64, i64* %5, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %94

63:                                               ; preds = %60
  %64 = load i64, i64* %3, align 8
  store i64 %64, i64* %4, align 8
  br label %65

65:                                               ; preds = %90, %63
  %66 = load i64, i64* %4, align 8
  %67 = load i64, i64* %5, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %93

69:                                               ; preds = %65
  %70 = load i64, i64* %5, align 8
  %71 = call i32 @TREE_VALUE(i64 %70)
  %72 = load i64, i64* %4, align 8
  %73 = call i32 @TREE_VALUE(i64 %72)
  %74 = call i32 @DECL_TEMPLATE_RESULT(i32 %73)
  %75 = load i64, i64* @NULL_TREE, align 8
  %76 = call i64 @get_bindings(i32 %71, i32 %74, i64 %75, i32 0)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %87, label %78

78:                                               ; preds = %69
  %79 = load i64, i64* %4, align 8
  %80 = call i32 @TREE_VALUE(i64 %79)
  %81 = load i64, i64* %5, align 8
  %82 = call i32 @TREE_VALUE(i64 %81)
  %83 = call i32 @DECL_TEMPLATE_RESULT(i32 %82)
  %84 = load i64, i64* @NULL_TREE, align 8
  %85 = call i64 @get_bindings(i32 %80, i32 %83, i64 %84, i32 0)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %78, %69
  %88 = load i64, i64* @NULL_TREE, align 8
  store i64 %88, i64* %5, align 8
  br label %93

89:                                               ; preds = %78
  br label %90

90:                                               ; preds = %89
  %91 = load i64, i64* %4, align 8
  %92 = call i64 @TREE_CHAIN(i64 %91)
  store i64 %92, i64* %4, align 8
  br label %65

93:                                               ; preds = %87, %65
  br label %94

94:                                               ; preds = %93, %60
  %95 = load i32, i32* @processing_template_decl, align 4
  %96 = add nsw i32 %95, -1
  store i32 %96, i32* @processing_template_decl, align 4
  %97 = load i64, i64* %5, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %101, label %99

99:                                               ; preds = %94
  %100 = load i64, i64* @error_mark_node, align 8
  store i64 %100, i64* %2, align 8
  br label %103

101:                                              ; preds = %94
  %102 = load i64, i64* %5, align 8
  store i64 %102, i64* %2, align 8
  br label %103

103:                                              ; preds = %101, %99
  %104 = load i64, i64* %2, align 8
  ret i64 %104
}

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @get_bindings(i32, i32, i64, i32) #1

declare dso_local i32 @TREE_VALUE(i64) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
