; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_check_template_keyword.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_typeck.c_check_template_keyword.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TEMPLATE_DECL = common dso_local global i64 0, align 8
@TEMPLATE_ID_EXPR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"%qD is not a template\00", align 1
@FUNCTION_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_template_keyword(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @TREE_CODE(i64 %5)
  %7 = load i64, i64* @TEMPLATE_DECL, align 8
  %8 = icmp ne i64 %6, %7
  br i1 %8, label %9, label %72

9:                                                ; preds = %1
  %10 = load i64, i64* %2, align 8
  %11 = call i64 @TREE_CODE(i64 %10)
  %12 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %72

14:                                               ; preds = %9
  %15 = load i64, i64* %2, align 8
  %16 = call i32 @is_overloaded_fn(i64 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i64, i64* %2, align 8
  %20 = call i32 @pedwarn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %19)
  br label %71

21:                                               ; preds = %14
  %22 = load i64, i64* %2, align 8
  store i64 %22, i64* %3, align 8
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @BASELINK_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @BASELINK_FUNCTIONS(i64 %27)
  store i64 %28, i64* %3, align 8
  br label %29

29:                                               ; preds = %26, %21
  br label %30

30:                                               ; preds = %61, %29
  %31 = load i64, i64* %3, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %64

33:                                               ; preds = %30
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @OVL_CURRENT(i64 %34)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = call i64 @TREE_CODE(i64 %36)
  %38 = load i64, i64* @TEMPLATE_DECL, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %33
  %41 = load i64, i64* %4, align 8
  %42 = call i64 @TREE_CODE(i64 %41)
  %43 = load i64, i64* @TEMPLATE_ID_EXPR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %33
  br label %64

46:                                               ; preds = %40
  %47 = load i64, i64* %4, align 8
  %48 = call i64 @TREE_CODE(i64 %47)
  %49 = load i64, i64* @FUNCTION_DECL, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load i64, i64* %4, align 8
  %53 = call i64 @DECL_USE_TEMPLATE(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %51
  %56 = load i64, i64* %4, align 8
  %57 = call i32 @DECL_TI_TEMPLATE(i64 %56)
  %58 = call i64 @PRIMARY_TEMPLATE_P(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %64

61:                                               ; preds = %55, %51, %46
  %62 = load i64, i64* %3, align 8
  %63 = call i64 @OVL_NEXT(i64 %62)
  store i64 %63, i64* %3, align 8
  br label %30

64:                                               ; preds = %60, %45, %30
  %65 = load i64, i64* %3, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %70, label %67

67:                                               ; preds = %64
  %68 = load i64, i64* %2, align 8
  %69 = call i32 @pedwarn(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %68)
  br label %70

70:                                               ; preds = %67, %64
  br label %71

71:                                               ; preds = %70, %18
  br label %72

72:                                               ; preds = %71, %9, %1
  ret void
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @is_overloaded_fn(i64) #1

declare dso_local i32 @pedwarn(i8*, i64) #1

declare dso_local i64 @BASELINK_P(i64) #1

declare dso_local i64 @BASELINK_FUNCTIONS(i64) #1

declare dso_local i64 @OVL_CURRENT(i64) #1

declare dso_local i64 @DECL_USE_TEMPLATE(i64) #1

declare dso_local i64 @PRIMARY_TEMPLATE_P(i32) #1

declare dso_local i32 @DECL_TI_TEMPLATE(i64) #1

declare dso_local i64 @OVL_NEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
