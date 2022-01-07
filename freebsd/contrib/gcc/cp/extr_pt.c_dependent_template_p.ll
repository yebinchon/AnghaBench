; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_template_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_dependent_template_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OVERLOAD = common dso_local global i64 0, align 8
@TEMPLATE_TEMPLATE_PARM = common dso_local global i64 0, align 8
@SCOPE_REF = common dso_local global i64 0, align 8
@IDENTIFIER_NODE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dependent_template_p(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i64 @TREE_CODE(i64 %4)
  %6 = load i64, i64* @OVERLOAD, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %18, %8
  %10 = load i64, i64* %3, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %9
  %13 = load i64, i64* %3, align 8
  %14 = call i64 @OVL_FUNCTION(i64 %13)
  %15 = call i32 @dependent_template_p(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %53

18:                                               ; preds = %12
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @OVL_CHAIN(i64 %19)
  store i64 %20, i64* %3, align 8
  br label %9

21:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %53

22:                                               ; preds = %1
  %23 = load i64, i64* %3, align 8
  %24 = call i64 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %22
  %27 = load i64, i64* %3, align 8
  %28 = call i64 @TREE_CODE(i64 %27)
  %29 = load i64, i64* @TEMPLATE_TEMPLATE_PARM, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %26, %22
  store i32 1, i32* %2, align 4
  br label %53

32:                                               ; preds = %26
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @SCOPE_REF, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %3, align 8
  %39 = call i64 @TREE_CODE(i64 %38)
  %40 = load i64, i64* @IDENTIFIER_NODE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %37, %32
  store i32 1, i32* %2, align 4
  br label %53

43:                                               ; preds = %37
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @CP_DECL_CONTEXT(i64 %44)
  %46 = call i64 @TYPE_P(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @DECL_CONTEXT(i64 %49)
  %51 = call i32 @dependent_type_p(i32 %50)
  store i32 %51, i32* %2, align 4
  br label %53

52:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %53

53:                                               ; preds = %52, %48, %42, %31, %21, %17
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @OVL_FUNCTION(i64) #1

declare dso_local i64 @OVL_CHAIN(i64) #1

declare dso_local i64 @DECL_TEMPLATE_TEMPLATE_PARM_P(i64) #1

declare dso_local i64 @TYPE_P(i32) #1

declare dso_local i32 @CP_DECL_CONTEXT(i64) #1

declare dso_local i32 @dependent_type_p(i32) #1

declare dso_local i32 @DECL_CONTEXT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
