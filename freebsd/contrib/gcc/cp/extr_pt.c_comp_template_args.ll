; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_comp_template_args.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/cp/extr_pt.c_comp_template_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comp_template_args(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @TREE_VEC_LENGTH(i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @TREE_VEC_LENGTH(i32 %11)
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %34, %15
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @TREE_VEC_LENGTH(i32 %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @TREE_VEC_ELT(i32 %22, i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @TREE_VEC_ELT(i32 %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @template_args_equal(i32 %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %38

33:                                               ; preds = %21
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %16

37:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %37, %32, %14
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @TREE_VEC_LENGTH(i32) #1

declare dso_local i32 @TREE_VEC_ELT(i32, i32) #1

declare dso_local i32 @template_args_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
