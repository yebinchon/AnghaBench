; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_cand_value_at.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_cand_value_at.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.iv_cand = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@PLUS_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*, %struct.iv_cand*, i32, i32)* @cand_value_at to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cand_value_at(%struct.loop* %0, %struct.iv_cand* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.iv_cand*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %5, align 8
  store %struct.iv_cand* %1, %struct.iv_cand** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %12 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* %8, align 4
  %15 = call i32 @iv_value(%struct.TYPE_2__* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %17 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @TREE_TYPE(i32 %20)
  store i32 %21, i32* %10, align 4
  %22 = load %struct.loop*, %struct.loop** %5, align 8
  %23 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i64 @stmt_after_increment(%struct.loop* %22, %struct.iv_cand* %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %4
  %28 = load i32, i32* @PLUS_EXPR, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.iv_cand*, %struct.iv_cand** %6, align 8
  %32 = getelementptr inbounds %struct.iv_cand, %struct.iv_cand* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fold_build2(i32 %28, i32 %29, i32 %30, i32 %35)
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %27, %4
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @iv_value(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @TREE_TYPE(i32) #1

declare dso_local i64 @stmt_after_increment(%struct.loop*, %struct.iv_cand*, i32) #1

declare dso_local i32 @fold_build2(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
