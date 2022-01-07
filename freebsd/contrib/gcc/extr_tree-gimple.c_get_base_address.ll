; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-gimple.c_get_base_address.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-gimple.c_get_base_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STRING_CST = common dso_local global i64 0, align 8
@CONSTRUCTOR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_base_address(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  br label %4

4:                                                ; preds = %8, %1
  %5 = load i32, i32* %3, align 4
  %6 = call i64 @handled_component_p(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @TREE_OPERAND(i32 %9, i32 0)
  store i32 %10, i32* %3, align 4
  br label %4

11:                                               ; preds = %4
  %12 = load i32, i32* %3, align 4
  %13 = call i64 @SSA_VAR_P(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %29, label %15

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i64 @TREE_CODE(i32 %16)
  %18 = load i64, i64* @STRING_CST, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %29, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* %3, align 4
  %22 = call i64 @TREE_CODE(i32 %21)
  %23 = load i64, i64* @CONSTRUCTOR, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %29, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %3, align 4
  %27 = call i64 @INDIRECT_REF_P(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25, %20, %15, %11
  %30 = load i32, i32* %3, align 4
  store i32 %30, i32* %2, align 4
  br label %33

31:                                               ; preds = %25
  %32 = load i32, i32* @NULL_TREE, align 4
  store i32 %32, i32* %2, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i64 @handled_component_p(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @SSA_VAR_P(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i64 @INDIRECT_REF_P(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
