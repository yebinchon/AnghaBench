; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_estimate_size_after_inlining.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_ipa-inline.c_cgraph_estimate_size_after_inlining.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgraph_node = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@PARAM_INLINE_CALL_COST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cgraph_node*, %struct.cgraph_node*)* @cgraph_estimate_size_after_inlining to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cgraph_estimate_size_after_inlining(i32 %0, %struct.cgraph_node* %1, %struct.cgraph_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cgraph_node*, align 8
  %6 = alloca %struct.cgraph_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.cgraph_node* %1, %struct.cgraph_node** %5, align 8
  store %struct.cgraph_node* %2, %struct.cgraph_node** %6, align 8
  %11 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %12 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %8, align 8
  %14 = load i32, i32* @PARAM_INLINE_CALL_COST, align 4
  %15 = call i32 @PARAM_VALUE(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %8, align 8
  %17 = call i64 @DECL_ARGUMENTS(i64 %16)
  store i64 %17, i64* %9, align 8
  br label %18

18:                                               ; preds = %29, %3
  %19 = load i64, i64* %9, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %18
  %22 = load i64, i64* %9, align 8
  %23 = call i32 @TREE_TYPE(i64 %22)
  %24 = call i64 @estimate_move_cost(i32 %23)
  %25 = load i32, i32* %10, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %26, %24
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %10, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i64, i64* %9, align 8
  %31 = call i64 @TREE_CHAIN(i64 %30)
  store i64 %31, i64* %9, align 8
  br label %18

32:                                               ; preds = %18
  %33 = load %struct.cgraph_node*, %struct.cgraph_node** %6, align 8
  %34 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* %4, align 4
  %40 = mul nsw i32 %38, %39
  %41 = load %struct.cgraph_node*, %struct.cgraph_node** %5, align 8
  %42 = getelementptr inbounds %struct.cgraph_node, %struct.cgraph_node* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %40, %44
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp sge i32 %46, 0
  %48 = zext i1 %47 to i32
  %49 = call i32 @gcc_assert(i32 %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @PARAM_VALUE(i32) #1

declare dso_local i64 @DECL_ARGUMENTS(i64) #1

declare dso_local i64 @estimate_move_cost(i32) #1

declare dso_local i32 @TREE_TYPE(i64) #1

declare dso_local i64 @TREE_CHAIN(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
