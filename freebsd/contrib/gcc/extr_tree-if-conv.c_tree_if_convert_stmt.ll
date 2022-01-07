; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_convert_stmt.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-if-conv.c_tree_if_convert_stmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@dump_file = common dso_local global i64 0, align 8
@dump_flags = common dso_local global i32 0, align 4
@TDF_DETAILS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"------if-convert stmt\0A\00", align 1
@TDF_SLIM = common dso_local global i32 0, align 4
@NULL_TREE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, i32, i32, i32*)* @tree_if_convert_stmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tree_if_convert_stmt(%struct.loop* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.loop* %0, %struct.loop** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %9 = load i64, i64* @dump_file, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %27

11:                                               ; preds = %4
  %12 = load i32, i32* @dump_flags, align 4
  %13 = load i32, i32* @TDF_DETAILS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %11
  %17 = load i64, i64* @dump_file, align 8
  %18 = call i32 @fprintf(i64 %17, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load i64, i64* @dump_file, align 8
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @TDF_SLIM, align 4
  %22 = call i32 @print_generic_stmt(i64 %19, i32 %20, i32 %21)
  %23 = load i64, i64* @dump_file, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @TDF_SLIM, align 4
  %26 = call i32 @print_generic_stmt(i64 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %16, %11, %4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @TREE_CODE(i32 %28)
  switch i32 %29, label %39 [
    i32 129, label %30
    i32 128, label %31
    i32 130, label %32
  ]

30:                                               ; preds = %27
  br label %41

31:                                               ; preds = %27
  br label %41

32:                                               ; preds = %27
  %33 = load %struct.loop*, %struct.loop** %5, align 8
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @tree_if_convert_cond_expr(%struct.loop* %33, i32 %34, i32 %35, i32* %36)
  %38 = load i32, i32* @NULL_TREE, align 4
  store i32 %38, i32* %7, align 4
  br label %41

39:                                               ; preds = %27
  %40 = call i32 (...) @gcc_unreachable()
  br label %41

41:                                               ; preds = %39, %32, %31, %30
  %42 = load i32, i32* %7, align 4
  ret i32 %42
}

declare dso_local i32 @fprintf(i64, i8*) #1

declare dso_local i32 @print_generic_stmt(i64, i32, i32) #1

declare dso_local i32 @TREE_CODE(i32) #1

declare dso_local i32 @tree_if_convert_cond_expr(%struct.loop*, i32, i32, i32*) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
