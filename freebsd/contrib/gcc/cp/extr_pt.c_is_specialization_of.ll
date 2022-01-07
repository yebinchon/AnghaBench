; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_is_specialization_of.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_is_specialization_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i64 0, align 8
@TYPE_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @is_specialization_of(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @TREE_CODE(i64 %7)
  %9 = load i64, i64* @FUNCTION_DECL, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %35

11:                                               ; preds = %2
  %12 = load i64, i64* %4, align 8
  store i64 %12, i64* %6, align 8
  br label %13

13:                                               ; preds = %32, %11
  %14 = load i64, i64* %6, align 8
  %15 = load i64, i64* @NULL_TREE, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %34

17:                                               ; preds = %13
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  store i32 1, i32* %3, align 4
  br label %70

22:                                               ; preds = %17
  br label %23

23:                                               ; preds = %22
  %24 = load i64, i64* %6, align 8
  %25 = call i64 @DECL_TEMPLATE_INFO(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i64, i64* %6, align 8
  %29 = call i64 @DECL_TI_TEMPLATE(i64 %28)
  br label %32

30:                                               ; preds = %23
  %31 = load i64, i64* @NULL_TREE, align 8
  br label %32

32:                                               ; preds = %30, %27
  %33 = phi i64 [ %29, %27 ], [ %31, %30 ]
  store i64 %33, i64* %6, align 8
  br label %13

34:                                               ; preds = %13
  br label %69

35:                                               ; preds = %2
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @TYPE_DECL, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = call i32 @gcc_assert(i32 %40)
  %42 = load i64, i64* %4, align 8
  %43 = call i64 @TREE_TYPE(i64 %42)
  store i64 %43, i64* %6, align 8
  br label %44

44:                                               ; preds = %66, %35
  %45 = load i64, i64* %6, align 8
  %46 = load i64, i64* @NULL_TREE, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %5, align 8
  %51 = call i64 @TREE_TYPE(i64 %50)
  %52 = call i64 @same_type_ignoring_top_level_qualifiers_p(i64 %49, i64 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  store i32 1, i32* %3, align 4
  br label %70

55:                                               ; preds = %48
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = call i64 @CLASSTYPE_USE_TEMPLATE(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %6, align 8
  %62 = call i64 @CLASSTYPE_TI_TEMPLATE(i64 %61)
  %63 = call i64 @TREE_TYPE(i64 %62)
  br label %66

64:                                               ; preds = %56
  %65 = load i64, i64* @NULL_TREE, align 8
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i64 [ %63, %60 ], [ %65, %64 ]
  store i64 %67, i64* %6, align 8
  br label %44

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %34
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %69, %54, %21
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i64 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_TYPE(i64) #1

declare dso_local i64 @same_type_ignoring_top_level_qualifiers_p(i64, i64) #1

declare dso_local i64 @CLASSTYPE_USE_TEMPLATE(i64) #1

declare dso_local i64 @CLASSTYPE_TI_TEMPLATE(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
