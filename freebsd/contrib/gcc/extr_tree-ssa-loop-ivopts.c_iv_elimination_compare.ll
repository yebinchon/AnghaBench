; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_elimination_compare.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_iv_elimination_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.iv_use = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@EQ_EXPR = common dso_local global i32 0, align 4
@NE_EXPR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivopts_data*, %struct.iv_use*)* @iv_elimination_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iv_elimination_compare(%struct.ivopts_data* %0, %struct.iv_use* %1) #0 {
  %3 = alloca %struct.ivopts_data*, align 8
  %4 = alloca %struct.iv_use*, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_3__*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %3, align 8
  store %struct.iv_use* %1, %struct.iv_use** %4, align 8
  %8 = load %struct.ivopts_data*, %struct.ivopts_data** %3, align 8
  %9 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %8, i32 0, i32 0
  %10 = load %struct.loop*, %struct.loop** %9, align 8
  store %struct.loop* %10, %struct.loop** %5, align 8
  %11 = load %struct.iv_use*, %struct.iv_use** %4, align 8
  %12 = getelementptr inbounds %struct.iv_use, %struct.iv_use* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bb_for_stmt(i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.TYPE_3__* @EDGE_SUCC(i32 %15, i32 0)
  store %struct.TYPE_3__* %16, %struct.TYPE_3__** %7, align 8
  %17 = load %struct.loop*, %struct.loop** %5, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @flow_bb_inside_loop_p(%struct.loop* %17, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* %6, align 4
  %25 = call %struct.TYPE_3__* @EDGE_SUCC(i32 %24, i32 1)
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %7, align 8
  br label %26

26:                                               ; preds = %23, %2
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* @EQ_EXPR, align 4
  br label %37

35:                                               ; preds = %26
  %36 = load i32, i32* @NE_EXPR, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = phi i32 [ %34, %33 ], [ %36, %35 ]
  ret i32 %38
}

declare dso_local i32 @bb_for_stmt(i32) #1

declare dso_local %struct.TYPE_3__* @EDGE_SUCC(i32, i32) #1

declare dso_local i64 @flow_bb_inside_loop_p(%struct.loop*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
