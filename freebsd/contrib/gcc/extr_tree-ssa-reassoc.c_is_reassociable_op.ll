; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_is_reassociable_op.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-reassoc.c_is_reassociable_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MODIFY_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @is_reassociable_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_reassociable_op(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = call i32 @IS_EMPTY_STMT(i32 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %27, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @TREE_CODE(i32 %10)
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @MODIFY_EXPR, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %9
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 1)
  %18 = call i32 @TREE_CODE(i32 %17)
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %15
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @TREE_OPERAND(i32 %22, i32 0)
  %24 = call i64 @has_single_use(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %28

27:                                               ; preds = %21, %15, %9, %2
  store i32 0, i32* %3, align 4
  br label %28

28:                                               ; preds = %27, %26
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @IS_EMPTY_STMT(i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i64 @has_single_use(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
