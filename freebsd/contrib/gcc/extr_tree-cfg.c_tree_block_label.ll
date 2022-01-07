; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_block_label.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-cfg.c_tree_block_label.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LABEL_EXPR = common dso_local global i64 0, align 8
@void_type_node = common dso_local global i32 0, align 4
@BSI_NEW_STMT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tree_block_label(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @bsi_start(i32 %9)
  store i32 %10, i32* %5, align 4
  store i32 1, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %4, align 4
  br label %12

12:                                               ; preds = %39, %1
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @bsi_end_p(i32 %13)
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %41

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @bsi_stmt(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @TREE_CODE(i32 %20)
  %22 = load i64, i64* @LABEL_EXPR, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  br label %41

25:                                               ; preds = %17
  %26 = load i32, i32* %8, align 4
  %27 = call i32 @LABEL_EXPR_LABEL(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @DECL_NONLOCAL(i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %31
  %35 = call i32 @bsi_move_before(i32* %4, i32* %5)
  br label %36

36:                                               ; preds = %34, %31
  %37 = load i32, i32* %7, align 4
  store i32 %37, i32* %2, align 4
  br label %51

38:                                               ; preds = %25
  br label %39

39:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  %40 = call i32 @bsi_next(i32* %4)
  br label %12

41:                                               ; preds = %24, %12
  %42 = call i32 (...) @create_artificial_label()
  store i32 %42, i32* %7, align 4
  %43 = load i64, i64* @LABEL_EXPR, align 8
  %44 = load i32, i32* @void_type_node, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @build1(i64 %43, i32 %44, i32 %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @BSI_NEW_STMT, align 4
  %49 = call i32 @bsi_insert_before(i32* %5, i32 %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %41, %36
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @bsi_start(i32) #1

declare dso_local i32 @bsi_end_p(i32) #1

declare dso_local i32 @bsi_stmt(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @LABEL_EXPR_LABEL(i32) #1

declare dso_local i32 @DECL_NONLOCAL(i32) #1

declare dso_local i32 @bsi_move_before(i32*, i32*) #1

declare dso_local i32 @bsi_next(i32*) #1

declare dso_local i32 @create_artificial_label(...) #1

declare dso_local i32 @build1(i64, i32, i32) #1

declare dso_local i32 @bsi_insert_before(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
