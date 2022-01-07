; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_for_substitution.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_for_substitution.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FUNCTION_DECL = common dso_local global i64 0, align 8
@VAR_DECL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @template_for_substitution(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @DECL_TI_TEMPLATE(i32 %4)
  store i32 %5, i32* %3, align 4
  br label %6

6:                                                ; preds = %39, %1
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @DECL_TEMPLATE_INSTANTIATION(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %27, label %10

10:                                               ; preds = %6
  %11 = load i32, i32* %2, align 4
  %12 = call i64 @TREE_CODE(i32 %11)
  %13 = load i64, i64* @FUNCTION_DECL, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %10
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @DECL_TEMPLATE_RESULT(i32 %20)
  %22 = call i32 @DECL_INITIAL(i32 %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %19, %15, %10
  %26 = phi i1 [ false, %15 ], [ false, %10 ], [ %24, %19 ]
  br label %27

27:                                               ; preds = %25, %6
  %28 = phi i1 [ true, %6 ], [ %26, %25 ]
  br i1 %28, label %29, label %45

29:                                               ; preds = %27
  %30 = load i32, i32* %2, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @VAR_DECL, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @DECL_TEMPLATE_RESULT(i32 %35)
  %37 = call i64 @DECL_IN_AGGR_P(i32 %36)
  %38 = icmp ne i64 %37, 0
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ true, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @gcc_assert(i32 %41)
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @DECL_TI_TEMPLATE(i32 %43)
  store i32 %44, i32* %3, align 4
  br label %6

45:                                               ; preds = %27
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @DECL_TI_TEMPLATE(i32) #1

declare dso_local i64 @DECL_TEMPLATE_INSTANTIATION(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @DECL_FRIEND_PSEUDO_TEMPLATE_INSTANTIATION(i32) #1

declare dso_local i32 @DECL_INITIAL(i32) #1

declare dso_local i32 @DECL_TEMPLATE_RESULT(i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @DECL_IN_AGGR_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
