; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_coalesce_result_decls.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-outof-ssa.c_coalesce_result_decls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@RESULT_DECL = common dso_local global i64 0, align 8
@NULL_TREE = common dso_local global i32* null, align 8
@EXIT_BLOCK_PTR = common dso_local global %struct.TYPE_3__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @coalesce_result_decls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @coalesce_result_decls(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  store i32* null, i32** %7, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %43, %2
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* %3, align 4
  %12 = call i32 @num_var_partitions(i32 %11)
  %13 = icmp ult i32 %10, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %9
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32* @partition_to_var(i32 %15, i32 %16)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = call i32 @SSA_NAME_VAR(i32* %18)
  %20 = call i64 @TREE_CODE(i32 %19)
  %21 = load i64, i64* @RESULT_DECL, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %14
  %24 = load i32*, i32** %7, align 8
  %25 = load i32*, i32** @NULL_TREE, align 8
  %26 = icmp eq i32* %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32*, i32** %8, align 8
  store i32* %28, i32** %7, align 8
  %29 = load i32, i32* %6, align 4
  store i32 %29, i32* %5, align 4
  br label %41

30:                                               ; preds = %23
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** @EXIT_BLOCK_PTR, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** @EXIT_BLOCK_PTR, align 8
  %38 = call i32 @maybe_hot_bb_p(%struct.TYPE_3__* %37)
  %39 = call i32 @coalesce_cost(i32 %36, i32 %38, i32 0)
  %40 = call i32 @add_coalesce(i32 %31, i32 %32, i32 %33, i32 %39)
  br label %41

41:                                               ; preds = %30, %27
  br label %42

42:                                               ; preds = %41, %14
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %9

46:                                               ; preds = %9
  ret void
}

declare dso_local i32 @num_var_partitions(i32) #1

declare dso_local i32* @partition_to_var(i32, i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @SSA_NAME_VAR(i32*) #1

declare dso_local i32 @add_coalesce(i32, i32, i32, i32) #1

declare dso_local i32 @coalesce_cost(i32, i32, i32) #1

declare dso_local i32 @maybe_hot_bb_p(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
