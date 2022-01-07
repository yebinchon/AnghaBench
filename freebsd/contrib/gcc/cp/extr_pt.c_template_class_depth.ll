; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_class_depth.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_class_depth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NAMESPACE_DECL = common dso_local global i64 0, align 8
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @template_class_depth(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %67, %1
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %4
  %8 = load i64, i64* %2, align 8
  %9 = call i64 @TREE_CODE(i64 %8)
  %10 = load i64, i64* @NAMESPACE_DECL, align 8
  %11 = icmp ne i64 %9, %10
  br label %12

12:                                               ; preds = %7, %4
  %13 = phi i1 [ false, %4 ], [ %11, %7 ]
  br i1 %13, label %14, label %69

14:                                               ; preds = %12
  %15 = load i64, i64* %2, align 8
  %16 = call i64 @TREE_CODE(i64 %15)
  %17 = load i64, i64* @FUNCTION_DECL, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %37

19:                                               ; preds = %14
  %20 = load i64, i64* %2, align 8
  %21 = call i64 @CLASSTYPE_TEMPLATE_INFO(i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %19
  %24 = load i64, i64* %2, align 8
  %25 = call i32 @CLASSTYPE_TI_TEMPLATE(i64 %24)
  %26 = call i64 @PRIMARY_TEMPLATE_P(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %23
  %29 = load i64, i64* %2, align 8
  %30 = call i32 @CLASSTYPE_TI_ARGS(i64 %29)
  %31 = call i64 @uses_template_parms(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %3, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %33, %28, %23, %19
  br label %55

37:                                               ; preds = %14
  %38 = load i64, i64* %2, align 8
  %39 = call i64 @DECL_TEMPLATE_INFO(i64 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i64, i64* %2, align 8
  %43 = call i32 @DECL_TI_TEMPLATE(i64 %42)
  %44 = call i64 @PRIMARY_TEMPLATE_P(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %54

46:                                               ; preds = %41
  %47 = load i64, i64* %2, align 8
  %48 = call i32 @DECL_TI_ARGS(i64 %47)
  %49 = call i64 @uses_template_parms(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %46, %41, %37
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %2, align 8
  %58 = call i64 @TREE_CODE(i64 %57)
  %59 = load i64, i64* @FUNCTION_DECL, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %56
  %62 = load i64, i64* %2, align 8
  %63 = call i64 @CP_DECL_CONTEXT(i64 %62)
  br label %67

64:                                               ; preds = %56
  %65 = load i64, i64* %2, align 8
  %66 = call i64 @TYPE_CONTEXT(i64 %65)
  br label %67

67:                                               ; preds = %64, %61
  %68 = phi i64 [ %63, %61 ], [ %66, %64 ]
  store i64 %68, i64* %2, align 8
  br label %4

69:                                               ; preds = %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @CLASSTYPE_TEMPLATE_INFO(i64) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i32) #1

declare dso_local i32 @CLASSTYPE_TI_TEMPLATE(i64) #1

declare dso_local i64 @uses_template_parms(i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i64) #1

declare dso_local i64 @DECL_TEMPLATE_INFO(i64) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i32 @DECL_TI_ARGS(i64) #1

declare dso_local i64 @CP_DECL_CONTEXT(i64) #1

declare dso_local i64 @TYPE_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
