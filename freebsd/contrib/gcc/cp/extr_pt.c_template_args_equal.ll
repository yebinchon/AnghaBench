; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_args_equal.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_template_args_equal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TREE_VEC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @template_args_equal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @template_args_equal(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* %4, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i32 1, i32* %3, align 4
  br label %58

10:                                               ; preds = %2
  %11 = load i64, i64* %5, align 8
  %12 = call i64 @TREE_CODE(i64 %11)
  %13 = load i64, i64* @TREE_VEC, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %10
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @TREE_CODE(i64 %16)
  %18 = load i64, i64* @TREE_VEC, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %15
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @comp_template_args(i64 %21, i64 %22)
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %20, %15
  %26 = phi i1 [ false, %15 ], [ %24, %20 ]
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %10
  %29 = load i64, i64* %5, align 8
  %30 = call i64 @TYPE_P(i64 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %44

32:                                               ; preds = %28
  %33 = load i64, i64* %4, align 8
  %34 = call i64 @TYPE_P(i64 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i64, i64* %4, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i64 @same_type_p(i64 %37, i64 %38)
  %40 = icmp ne i64 %39, 0
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi i1 [ false, %32 ], [ %40, %36 ]
  %43 = zext i1 %42 to i32
  store i32 %43, i32* %3, align 4
  br label %58

44:                                               ; preds = %28
  %45 = load i64, i64* %4, align 8
  %46 = call i64 @TREE_CODE(i64 %45)
  %47 = load i64, i64* @TREE_VEC, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %53, label %49

49:                                               ; preds = %44
  %50 = load i64, i64* %4, align 8
  %51 = call i64 @TYPE_P(i64 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49, %44
  store i32 0, i32* %3, align 4
  br label %58

54:                                               ; preds = %49
  %55 = load i64, i64* %4, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @cp_tree_equal(i64 %55, i64 %56)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %54, %53, %41, %25, %9
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @comp_template_args(i64, i64) #1

declare dso_local i64 @TYPE_P(i64) #1

declare dso_local i64 @same_type_p(i64, i64) #1

declare dso_local i32 @cp_tree_equal(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
