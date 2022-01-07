; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_hash_tree.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_sra_hash_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @sra_hash_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sra_hash_tree(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @TREE_CODE(i32 %4)
  switch i32 %5, label %31 [
    i32 128, label %6
    i32 131, label %6
    i32 129, label %6
    i32 132, label %9
    i32 130, label %15
    i32 133, label %23
  ]

6:                                                ; preds = %1, %1, %1
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @DECL_UID(i32 %7)
  store i32 %8, i32* %3, align 4
  br label %33

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @TREE_INT_CST_LOW(i32 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i32 @TREE_INT_CST_HIGH(i32 %12)
  %14 = xor i32 %11, %13
  store i32 %14, i32* %3, align 4
  br label %33

15:                                               ; preds = %1
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @TREE_OPERAND(i32 %16, i32 0)
  %18 = call i32 @iterative_hash_expr(i32 %17, i32 0)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %2, align 4
  %20 = call i32 @TREE_OPERAND(i32 %19, i32 1)
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @iterative_hash_expr(i32 %20, i32 %21)
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* %2, align 4
  %25 = call i32 @DECL_FIELD_OFFSET(i32 %24)
  %26 = call i32 @iterative_hash_expr(i32 %25, i32 0)
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %2, align 4
  %28 = call i32 @DECL_FIELD_BIT_OFFSET(i32 %27)
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @iterative_hash_expr(i32 %28, i32 %29)
  store i32 %30, i32* %3, align 4
  br label %33

31:                                               ; preds = %1
  %32 = call i32 (...) @gcc_unreachable()
  br label %33

33:                                               ; preds = %31, %23, %15, %9, %6
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @DECL_UID(i32) #1

declare dso_local i32 @TREE_INT_CST_LOW(i32) #1

declare dso_local i32 @TREE_INT_CST_HIGH(i32) #1

declare dso_local i32 @iterative_hash_expr(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @DECL_FIELD_OFFSET(i32) #1

declare dso_local i32 @DECL_FIELD_BIT_OFFSET(i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
