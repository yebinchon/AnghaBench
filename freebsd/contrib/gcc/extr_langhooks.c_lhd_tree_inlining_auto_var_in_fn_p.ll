; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_tree_inlining_auto_var_in_fn_p.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_langhooks.c_lhd_tree_inlining_auto_var_in_fn_p.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@PARM_DECL = common dso_local global i64 0, align 8
@LABEL_DECL = common dso_local global i64 0, align 8
@RESULT_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lhd_tree_inlining_auto_var_in_fn_p(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @DECL_P(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %39

8:                                                ; preds = %2
  %9 = load i64, i64* %3, align 8
  %10 = call i64 @DECL_CONTEXT(i64 %9)
  %11 = load i64, i64* %4, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %39

13:                                               ; preds = %8
  %14 = load i64, i64* %3, align 8
  %15 = call i64 @TREE_CODE(i64 %14)
  %16 = load i64, i64* @VAR_DECL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @PARM_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %3, align 8
  %25 = call i32 @TREE_STATIC(i64 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %23, %18
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @TREE_CODE(i64 %28)
  %30 = load i64, i64* @LABEL_DECL, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %3, align 8
  %34 = call i64 @TREE_CODE(i64 %33)
  %35 = load i64, i64* @RESULT_DECL, align 8
  %36 = icmp eq i64 %34, %35
  br label %37

37:                                               ; preds = %32, %27, %23
  %38 = phi i1 [ true, %27 ], [ true, %23 ], [ %36, %32 ]
  br label %39

39:                                               ; preds = %37, %8, %2
  %40 = phi i1 [ false, %8 ], [ false, %2 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  ret i32 %41
}

declare dso_local i64 @DECL_P(i64) #1

declare dso_local i64 @DECL_CONTEXT(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i32 @TREE_STATIC(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
