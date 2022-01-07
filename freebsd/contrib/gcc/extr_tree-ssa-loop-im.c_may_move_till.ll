; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_may_move_till.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-im.c_may_move_till.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }

@ARRAY_REF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i8*)* @may_move_till to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @may_move_till(i32 %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.loop*, align 8
  %9 = alloca %struct.loop*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.loop*
  store %struct.loop* %13, %struct.loop** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i64 @TREE_CODE(i32 %14)
  %16 = load i64, i64* @ARRAY_REF, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %37

18:                                               ; preds = %3
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @array_ref_element_size(i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @array_ref_low_bound(i32 %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.loop*, %struct.loop** %8, align 8
  %25 = call %struct.loop* @outermost_invariant_loop_expr(i32 %23, %struct.loop* %24)
  store %struct.loop* %25, %struct.loop** %9, align 8
  %26 = load %struct.loop*, %struct.loop** %9, align 8
  %27 = icmp ne %struct.loop* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %46

29:                                               ; preds = %18
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.loop*, %struct.loop** %8, align 8
  %32 = call %struct.loop* @outermost_invariant_loop_expr(i32 %30, %struct.loop* %31)
  store %struct.loop* %32, %struct.loop** %9, align 8
  %33 = load %struct.loop*, %struct.loop** %9, align 8
  %34 = icmp ne %struct.loop* %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %29
  store i32 0, i32* %4, align 4
  br label %46

36:                                               ; preds = %29
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32*, i32** %6, align 8
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.loop*, %struct.loop** %8, align 8
  %41 = call %struct.loop* @outermost_invariant_loop(i32 %39, %struct.loop* %40)
  store %struct.loop* %41, %struct.loop** %9, align 8
  %42 = load %struct.loop*, %struct.loop** %9, align 8
  %43 = icmp ne %struct.loop* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %37
  store i32 0, i32* %4, align 4
  br label %46

45:                                               ; preds = %37
  store i32 1, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %44, %35, %28
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @TREE_CODE(i32) #1

declare dso_local i32 @array_ref_element_size(i32) #1

declare dso_local i32 @array_ref_low_bound(i32) #1

declare dso_local %struct.loop* @outermost_invariant_loop_expr(i32, %struct.loop*) #1

declare dso_local %struct.loop* @outermost_invariant_loop(i32, %struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
