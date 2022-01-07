; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_instantiate_decls_1.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_function.c_instantiate_decls_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VAR_DECL = common dso_local global i64 0, align 8
@instantiate_expr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @instantiate_decls_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @instantiate_decls_1(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = call i64 @BLOCK_VARS(i64 %5)
  store i64 %6, i64* %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i64, i64* %3, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %36

10:                                               ; preds = %7
  %11 = load i64, i64* %3, align 8
  %12 = call i64 @DECL_RTL_SET_P(i64 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %10
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @DECL_RTL(i64 %15)
  %17 = call i32 @instantiate_decl(i32 %16)
  br label %18

18:                                               ; preds = %14, %10
  %19 = load i64, i64* %3, align 8
  %20 = call i64 @TREE_CODE(i64 %19)
  %21 = load i64, i64* @VAR_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load i64, i64* %3, align 8
  %25 = call i64 @DECL_HAS_VALUE_EXPR_P(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load i64, i64* %3, align 8
  %29 = call i64 @DECL_VALUE_EXPR(i64 %28)
  store i64 %29, i64* %4, align 8
  %30 = load i32, i32* @instantiate_expr, align 4
  %31 = call i32 @walk_tree(i64* %4, i32 %30, i32* null, i32* null)
  br label %32

32:                                               ; preds = %27, %23, %18
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %3, align 8
  %35 = call i64 @TREE_CHAIN(i64 %34)
  store i64 %35, i64* %3, align 8
  br label %7

36:                                               ; preds = %7
  %37 = load i64, i64* %2, align 8
  %38 = call i64 @BLOCK_SUBBLOCKS(i64 %37)
  store i64 %38, i64* %3, align 8
  br label %39

39:                                               ; preds = %44, %36
  %40 = load i64, i64* %3, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i64, i64* %3, align 8
  call void @instantiate_decls_1(i64 %43)
  br label %44

44:                                               ; preds = %42
  %45 = load i64, i64* %3, align 8
  %46 = call i64 @TREE_CHAIN(i64 %45)
  store i64 %46, i64* %3, align 8
  br label %39

47:                                               ; preds = %39
  ret void
}

declare dso_local i64 @BLOCK_VARS(i64) #1

declare dso_local i64 @DECL_RTL_SET_P(i64) #1

declare dso_local i32 @instantiate_decl(i32) #1

declare dso_local i32 @DECL_RTL(i64) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @DECL_HAS_VALUE_EXPR_P(i64) #1

declare dso_local i64 @DECL_VALUE_EXPR(i64) #1

declare dso_local i32 @walk_tree(i64*, i32, i32*, i32*) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i64 @BLOCK_SUBBLOCKS(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
