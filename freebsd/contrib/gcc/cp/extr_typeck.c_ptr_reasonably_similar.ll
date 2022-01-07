; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_ptr_reasonably_similar.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_ptr_reasonably_similar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VOID_TYPE = common dso_local global i64 0, align 8
@OFFSET_TYPE = common dso_local global i64 0, align 8
@COMPARE_BASE = common dso_local global i32 0, align 4
@COMPARE_DERIVED = common dso_local global i32 0, align 4
@VECTOR_TYPE = common dso_local global i64 0, align 8
@INTEGER_TYPE = common dso_local global i64 0, align 8
@FUNCTION_TYPE = common dso_local global i64 0, align 8
@POINTER_TYPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptr_reasonably_similar(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  br label %6

6:                                                ; preds = %84, %2
  %7 = load i32, i32* %4, align 4
  %8 = call i64 @TREE_CODE(i32 %7)
  %9 = load i64, i64* @VOID_TYPE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @VOID_TYPE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %6
  store i32 1, i32* %3, align 4
  br label %89

17:                                               ; preds = %11
  %18 = load i32, i32* %4, align 4
  %19 = call i64 @TREE_CODE(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %89

24:                                               ; preds = %17
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @TREE_CODE(i32 %25)
  %27 = load i64, i64* @OFFSET_TYPE, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %24
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @TYPE_OFFSET_BASETYPE(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @TYPE_OFFSET_BASETYPE(i32 %32)
  %34 = load i32, i32* @COMPARE_BASE, align 4
  %35 = load i32, i32* @COMPARE_DERIVED, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @comptypes(i32 %31, i32 %33, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %84

40:                                               ; preds = %29, %24
  %41 = load i32, i32* %4, align 4
  %42 = call i64 @TREE_CODE(i32 %41)
  %43 = load i64, i64* @VECTOR_TYPE, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* %5, align 4
  %48 = call i64 @vector_types_convertible_p(i32 %46, i32 %47, i32 0)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 1, i32* %3, align 4
  br label %89

51:                                               ; preds = %45, %40
  %52 = load i32, i32* %4, align 4
  %53 = call i64 @TREE_CODE(i32 %52)
  %54 = load i64, i64* @INTEGER_TYPE, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i32, i32* %4, align 4
  %58 = call i64 @TYPE_PRECISION(i32 %57)
  %59 = load i32, i32* %5, align 4
  %60 = call i64 @TYPE_PRECISION(i32 %59)
  %61 = icmp eq i64 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i32 1, i32* %3, align 4
  br label %89

63:                                               ; preds = %56, %51
  %64 = load i32, i32* %4, align 4
  %65 = call i64 @TREE_CODE(i32 %64)
  %66 = load i64, i64* @FUNCTION_TYPE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %63
  store i32 1, i32* %3, align 4
  br label %89

69:                                               ; preds = %63
  %70 = load i32, i32* %4, align 4
  %71 = call i64 @TREE_CODE(i32 %70)
  %72 = load i64, i64* @POINTER_TYPE, align 8
  %73 = icmp ne i64 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %69
  %75 = load i32, i32* %4, align 4
  %76 = call i32 @TYPE_MAIN_VARIANT(i32 %75)
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @TYPE_MAIN_VARIANT(i32 %77)
  %79 = load i32, i32* @COMPARE_BASE, align 4
  %80 = load i32, i32* @COMPARE_DERIVED, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @comptypes(i32 %76, i32 %78, i32 %81)
  store i32 %82, i32* %3, align 4
  br label %89

83:                                               ; preds = %69
  br label %84

84:                                               ; preds = %83, %39
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @TREE_TYPE(i32 %85)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @TREE_TYPE(i32 %87)
  store i32 %88, i32* %5, align 4
  br label %6

89:                                               ; preds = %74, %68, %62, %50, %23, %16
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @comptypes(i32, i32, i32) #1

declare dso_local i32 @TYPE_OFFSET_BASETYPE(i32) #1

declare dso_local i64 @vector_types_convertible_p(i32, i32, i32) #1

declare dso_local i64 @TYPE_PRECISION(i32) #1

declare dso_local i32 @TYPE_MAIN_VARIANT(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
