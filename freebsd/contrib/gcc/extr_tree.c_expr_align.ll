; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_expr_align.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree.c_expr_align.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @expr_align(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @TREE_CODE(i32 %6)
  switch i32 %7, label %40 [
    i32 134, label %8
    i32 140, label %8
    i32 135, label %8
    i32 131, label %18
    i32 143, label %18
    i32 136, label %18
    i32 138, label %18
    i32 130, label %18
    i32 128, label %18
    i32 144, label %18
    i32 142, label %22
    i32 137, label %32
    i32 141, label %32
    i32 129, label %32
    i32 133, label %32
    i32 132, label %32
    i32 139, label %32
  ]

8:                                                ; preds = %1, %1, %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  %11 = call i32 @expr_align(i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @TREE_TYPE(i32 %12)
  %14 = call i32 @TYPE_ALIGN(i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @MAX(i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %45

18:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 0)
  %21 = call i32 @expr_align(i32 %20)
  store i32 %21, i32* %2, align 4
  br label %45

22:                                               ; preds = %1
  %23 = load i32, i32* %3, align 4
  %24 = call i32 @TREE_OPERAND(i32 %23, i32 1)
  %25 = call i32 @expr_align(i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %3, align 4
  %27 = call i32 @TREE_OPERAND(i32 %26, i32 2)
  %28 = call i32 @expr_align(i32 %27)
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @MIN(i32 %29, i32 %30)
  store i32 %31, i32* %2, align 4
  br label %45

32:                                               ; preds = %1, %1, %1, %1, %1, %1
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @DECL_ALIGN(i32 %33)
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i32
  %37 = call i32 @gcc_assert(i32 %36)
  %38 = load i32, i32* %3, align 4
  %39 = call i32 @DECL_ALIGN(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %45

40:                                               ; preds = %1
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @TREE_TYPE(i32 %42)
  %44 = call i32 @TYPE_ALIGN(i32 %43)
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %32, %22, %18, %8
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @TYPE_ALIGN(i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @DECL_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
