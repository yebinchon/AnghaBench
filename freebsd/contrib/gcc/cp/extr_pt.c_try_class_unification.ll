; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_try_class_unification.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_try_class_unification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NULL_TREE = common dso_local global i32 0, align 4
@UNIFY_ALLOW_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @try_class_unification to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @try_class_unification(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = call i32 @CLASSTYPE_TEMPLATE_INFO(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load i32, i32* %9, align 4
  %16 = call i32 @CLASSTYPE_TI_TEMPLATE(i32 %15)
  %17 = call i64 @most_general_template(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @CLASSTYPE_TI_TEMPLATE(i32 %18)
  %20 = call i64 @most_general_template(i32 %19)
  %21 = icmp ne i64 %17, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @NULL_TREE, align 4
  store i32 %23, i32* %5, align 4
  br label %41

24:                                               ; preds = %14
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @TREE_VEC_LENGTH(i32 %25)
  %27 = call i32 @make_tree_vec(i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @CLASSTYPE_TI_ARGS(i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @CLASSTYPE_TI_ARGS(i32 %32)
  %34 = load i32, i32* @UNIFY_ALLOW_NONE, align 4
  %35 = call i64 @unify(i32 %28, i32 %29, i32 %31, i32 %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %24
  %38 = load i32, i32* @NULL_TREE, align 4
  store i32 %38, i32* %5, align 4
  br label %41

39:                                               ; preds = %24
  %40 = load i32, i32* %9, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %37, %22
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @CLASSTYPE_TEMPLATE_INFO(i32) #1

declare dso_local i64 @most_general_template(i32) #1

declare dso_local i32 @CLASSTYPE_TI_TEMPLATE(i32) #1

declare dso_local i32 @make_tree_vec(i32) #1

declare dso_local i32 @TREE_VEC_LENGTH(i32) #1

declare dso_local i64 @unify(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CLASSTYPE_TI_ARGS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
