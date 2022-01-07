; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_normalize_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_stor-layout.c_normalize_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FLOOR_DIV_EXPR = common dso_local global i32 0, align 4
@PLUS_EXPR = common dso_local global i32 0, align 4
@MULT_EXPR = common dso_local global i32 0, align 4
@sizetype = common dso_local global i32 0, align 4
@BITS_PER_UNIT = common dso_local global i32 0, align 4
@FLOOR_MOD_EXPR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @normalize_offset(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i64 @compare_tree_int(i32 %9, i32 %10)
  %12 = icmp sge i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %3
  %14 = load i32, i32* @FLOOR_DIV_EXPR, align 4
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @bitsize_int(i32 %17)
  %19 = call i32 @size_binop(i32 %14, i32 %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @PLUS_EXPR, align 4
  %21 = load i32*, i32** %4, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MULT_EXPR, align 4
  %24 = load i32, i32* @sizetype, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @fold_convert(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @BITS_PER_UNIT, align 4
  %29 = udiv i32 %27, %28
  %30 = call i32 @size_int(i32 %29)
  %31 = call i32 @size_binop(i32 %23, i32 %26, i32 %30)
  %32 = call i32 @size_binop(i32 %20, i32 %22, i32 %31)
  %33 = load i32*, i32** %4, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @FLOOR_MOD_EXPR, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @bitsize_int(i32 %37)
  %39 = call i32 @size_binop(i32 %34, i32 %36, i32 %38)
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  br label %41

41:                                               ; preds = %13, %3
  ret void
}

declare dso_local i64 @compare_tree_int(i32, i32) #1

declare dso_local i32 @size_binop(i32, i32, i32) #1

declare dso_local i32 @bitsize_int(i32) #1

declare dso_local i32 @fold_convert(i32, i32) #1

declare dso_local i32 @size_int(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
