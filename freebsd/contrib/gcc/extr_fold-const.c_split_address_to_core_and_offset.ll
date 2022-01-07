; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_split_address_to_core_and_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_fold-const.c_split_address_to_core_and_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADDR_EXPR = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*)* @split_address_to_core_and_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @split_address_to_core_and_offset(i32 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i64 @TREE_CODE(i32 %12)
  %14 = load i64, i64* @ADDR_EXPR, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %3
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @TREE_OPERAND(i32 %17, i32 0)
  %19 = load i64*, i64** %5, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @get_inner_reference(i32 %18, i64* %11, i64* %19, i32* %20, i32* %8, i32* %9, i32* %10, i32 0)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @build_fold_addr_expr(i32 %22)
  store i32 %23, i32* %7, align 4
  br label %29

24:                                               ; preds = %3
  %25 = load i32, i32* %4, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i64*, i64** %5, align 8
  store i64 0, i64* %26, align 8
  %27 = load i32, i32* @NULL_TREE, align 4
  %28 = load i32*, i32** %6, align 8
  store i32 %27, i32* %28, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load i32, i32* %7, align 4
  ret i32 %30
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @get_inner_reference(i32, i64*, i64*, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @build_fold_addr_expr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
