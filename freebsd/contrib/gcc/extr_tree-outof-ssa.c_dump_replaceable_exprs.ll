; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_dump_replaceable_exprs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_dump_replaceable_exprs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"\0AReplacing Expressions\0A\00", align 1
@num_ssa_names = common dso_local global i64 0, align 8
@SSA_OP_DEF = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i64 0, align 8
@TDF_SLIM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c" replace with --> \00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*)* @dump_replaceable_exprs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_replaceable_exprs(i32* %0, i64* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @fprintf(i32* %8, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %51, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i64, i64* @num_ssa_names, align 8
  %13 = trunc i64 %12 to i32
  %14 = add nsw i32 %13, 1
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %54

16:                                               ; preds = %10
  %17 = load i64*, i64** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %16
  %24 = load i64*, i64** %4, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i64, i64* %24, i64 %26
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %5, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @SSA_OP_DEF, align 4
  %31 = call i64 @SINGLE_SSA_TREE_OPERAND(i64 %29, i32 %30)
  store i64 %31, i64* %6, align 8
  %32 = load i64, i64* %6, align 8
  %33 = load i64, i64* @NULL_TREE, align 8
  %34 = icmp ne i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @gcc_assert(i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = load i64, i64* %6, align 8
  %39 = load i32, i32* @TDF_SLIM, align 4
  %40 = call i32 @print_generic_expr(i32* %37, i64 %38, i32 %39)
  %41 = load i32*, i32** %3, align 8
  %42 = call i32 @fprintf(i32* %41, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32*, i32** %3, align 8
  %44 = load i64, i64* %5, align 8
  %45 = call i64 @TREE_OPERAND(i64 %44, i32 1)
  %46 = load i32, i32* @TDF_SLIM, align 4
  %47 = call i32 @print_generic_expr(i32* %43, i64 %45, i32 %46)
  %48 = load i32*, i32** %3, align 8
  %49 = call i32 @fprintf(i32* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %23, %16
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %10

54:                                               ; preds = %10
  %55 = load i32*, i32** %3, align 8
  %56 = call i32 @fprintf(i32* %55, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*) #1

declare dso_local i64 @SINGLE_SSA_TREE_OPERAND(i64, i32) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @print_generic_expr(i32*, i64, i32) #1

declare dso_local i64 @TREE_OPERAND(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
