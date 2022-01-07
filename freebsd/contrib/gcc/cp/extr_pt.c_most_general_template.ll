; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_most_general_template.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_most_general_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@TEMPLATE_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @most_general_template(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = call i64 @TREE_CODE(i32 %4)
  %6 = load i64, i64* @FUNCTION_DECL, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %25

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i64 @DECL_TEMPLATE_INFO(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %22

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @DECL_TI_TEMPLATE(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = call i64 @TREE_CODE(i32 %15)
  %17 = load i64, i64* @TEMPLATE_DECL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load i32, i32* @NULL_TREE, align 4
  store i32 %20, i32* %2, align 4
  br label %67

21:                                               ; preds = %12
  br label %24

22:                                               ; preds = %8
  %23 = load i32, i32* @NULL_TREE, align 4
  store i32 %23, i32* %2, align 4
  br label %67

24:                                               ; preds = %21
  br label %25

25:                                               ; preds = %24, %1
  br label %26

26:                                               ; preds = %62, %25
  %27 = load i32, i32* %3, align 4
  %28 = call i64 @DECL_TEMPLATE_INFO(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %65

30:                                               ; preds = %26
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @DECL_TI_TEMPLATE(i32 %31)
  %33 = call i64 @TREE_CODE(i32 %32)
  %34 = load i64, i64* @TEMPLATE_DECL, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  br label %65

37:                                               ; preds = %30
  %38 = load i32, i32* %3, align 4
  %39 = call i64 @TREE_TYPE(i32 %38)
  %40 = call i64 @CLASS_TYPE_P(i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32, i32* %3, align 4
  %44 = call i64 @TREE_TYPE(i32 %43)
  %45 = call i64 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  br label %65

48:                                               ; preds = %42, %37
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @DECL_NAMESPACE_SCOPE_P(i32 %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %62, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %3, align 4
  %54 = call i64 @DECL_CONTEXT(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = call i64 @DECL_CONTEXT(i32 %57)
  %59 = call i64 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56
  br label %65

62:                                               ; preds = %56, %52, %48
  %63 = load i32, i32* %3, align 4
  %64 = call i32 @DECL_TI_TEMPLATE(i32 %63)
  store i32 %64, i32* %3, align 4
  br label %26

65:                                               ; preds = %61, %47, %36, %26
  %66 = load i32, i32* %3, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %65, %22, %19
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i32) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i32) #1

declare dso_local i64 @CLASS_TYPE_P(i64) #1

declare dso_local i64 @TREE_TYPE(i32) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_SPECIALIZATION(i64) #1

declare dso_local i32 @DECL_NAMESPACE_SCOPE_P(i32) #1

declare dso_local i64 @DECL_CONTEXT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
