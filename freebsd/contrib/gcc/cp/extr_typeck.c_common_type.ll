; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_common_type.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_common_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@error_mark_node = common dso_local global i64 0, align 8
@ENUMERAL_TYPE = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"conversion\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @common_type(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load i64, i64* %4, align 8
  %9 = load i64, i64* @error_mark_node, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @error_mark_node, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %11, %2
  %16 = load i64, i64* @error_mark_node, align 8
  store i64 %16, i64* %3, align 8
  br label %82

17:                                               ; preds = %11
  %18 = load i64, i64* %4, align 8
  %19 = call i32 @TREE_CODE(i64 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @TREE_CODE(i64 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @ARITHMETIC_TYPE_P(i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ENUMERAL_TYPE, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @VECTOR_TYPE, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %49

33:                                               ; preds = %29, %25, %17
  %34 = load i64, i64* %5, align 8
  %35 = call i64 @ARITHMETIC_TYPE_P(i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @ENUMERAL_TYPE, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @VECTOR_TYPE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %49

45:                                               ; preds = %41, %37, %33
  %46 = load i64, i64* %4, align 8
  %47 = load i64, i64* %5, align 8
  %48 = call i64 @type_after_usual_arithmetic_conversions(i64 %46, i64 %47)
  store i64 %48, i64* %3, align 8
  br label %82

49:                                               ; preds = %41, %29
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TYPE_PTR_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %49
  %54 = load i64, i64* %5, align 8
  %55 = call i64 @TYPE_PTR_P(i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %73, label %57

57:                                               ; preds = %53, %49
  %58 = load i64, i64* %4, align 8
  %59 = call i64 @TYPE_PTRMEM_P(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i64, i64* %5, align 8
  %63 = call i64 @TYPE_PTRMEM_P(i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %61, %57
  %66 = load i64, i64* %4, align 8
  %67 = call i64 @TYPE_PTRMEMFUNC_P(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %65
  %70 = load i64, i64* %5, align 8
  %71 = call i64 @TYPE_PTRMEMFUNC_P(i64 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %79

73:                                               ; preds = %69, %61, %53
  %74 = load i64, i64* %4, align 8
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* @error_mark_node, align 8
  %77 = load i64, i64* @error_mark_node, align 8
  %78 = call i64 @composite_pointer_type(i64 %74, i64 %75, i64 %76, i64 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  store i64 %78, i64* %3, align 8
  br label %82

79:                                               ; preds = %69, %65
  %80 = call i32 (...) @gcc_unreachable()
  br label %81

81:                                               ; preds = %79
  br label %82

82:                                               ; preds = %15, %45, %73, %81
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i32 @TREE_CODE(i64) #1

declare dso_local i64 @ARITHMETIC_TYPE_P(i64) #1

declare dso_local i64 @type_after_usual_arithmetic_conversions(i64, i64) #1

declare dso_local i64 @TYPE_PTR_P(i64) #1

declare dso_local i64 @TYPE_PTRMEM_P(i64) #1

declare dso_local i64 @TYPE_PTRMEMFUNC_P(i64) #1

declare dso_local i64 @composite_pointer_type(i64, i64, i64, i64, i8*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
