; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_next_child_for_group.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-sra.c_next_child_for_group.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sra_elt = type { %struct.sra_elt*, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.sra_elt* }

@RANGE_EXPR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sra_elt* (%struct.sra_elt*, %struct.sra_elt*)* @next_child_for_group to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sra_elt* @next_child_for_group(%struct.sra_elt* %0, %struct.sra_elt* %1) #0 {
  %3 = alloca %struct.sra_elt*, align 8
  %4 = alloca %struct.sra_elt*, align 8
  %5 = alloca i32, align 4
  store %struct.sra_elt* %0, %struct.sra_elt** %3, align 8
  store %struct.sra_elt* %1, %struct.sra_elt** %4, align 8
  %6 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %7 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @gcc_assert(i32 %8)
  %10 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %11 = icmp ne %struct.sra_elt* %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %14 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %13, i32 0, i32 0
  %15 = load %struct.sra_elt*, %struct.sra_elt** %14, align 8
  store %struct.sra_elt* %15, %struct.sra_elt** %3, align 8
  br label %22

16:                                               ; preds = %2
  %17 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %18 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %17, i32 0, i32 2
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.sra_elt*, %struct.sra_elt** %20, align 8
  store %struct.sra_elt* %21, %struct.sra_elt** %3, align 8
  br label %22

22:                                               ; preds = %16, %12
  br label %23

23:                                               ; preds = %54, %22
  %24 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %25 = icmp ne %struct.sra_elt* %24, null
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load %struct.sra_elt*, %struct.sra_elt** %4, align 8
  %28 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %5, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i64 @TREE_CODE(i32 %30)
  %32 = load i64, i64* @RANGE_EXPR, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %52

34:                                               ; preds = %26
  %35 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %36 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @TREE_OPERAND(i32 %38, i32 0)
  %40 = call i32 @tree_int_cst_lt(i32 %37, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %51, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @TREE_OPERAND(i32 %43, i32 1)
  %45 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %46 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @tree_int_cst_lt(i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %58

51:                                               ; preds = %42, %34
  br label %54

52:                                               ; preds = %26
  %53 = call i32 (...) @gcc_unreachable()
  br label %54

54:                                               ; preds = %52, %51
  %55 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  %56 = getelementptr inbounds %struct.sra_elt, %struct.sra_elt* %55, i32 0, i32 0
  %57 = load %struct.sra_elt*, %struct.sra_elt** %56, align 8
  store %struct.sra_elt* %57, %struct.sra_elt** %3, align 8
  br label %23

58:                                               ; preds = %50, %23
  %59 = load %struct.sra_elt*, %struct.sra_elt** %3, align 8
  ret %struct.sra_elt* %59
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @tree_int_cst_lt(i32, i32) #1

declare dso_local i32 @TREE_OPERAND(i32, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
