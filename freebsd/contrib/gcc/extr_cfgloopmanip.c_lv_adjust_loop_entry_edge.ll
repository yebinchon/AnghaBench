; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_lv_adjust_loop_entry_edge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloopmanip.c_lv_adjust_loop_entry_edge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }

@EDGE_TRUE_VALUE = common dso_local global i32 0, align 4
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64, %struct.TYPE_6__*, i8*)* @lv_adjust_loop_entry_edge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lv_adjust_loop_entry_edge(i64 %0, i64 %1, %struct.TYPE_6__* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %7, align 8
  store i8* %3, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp eq i64 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @gcc_assert(i32 %16)
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %19 = call i64 @split_edge(%struct.TYPE_6__* %18)
  store i64 %19, i64* %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i8*, i8** %8, align 8
  %24 = call i32 @lv_add_condition_to_bb(i64 %20, i64 %21, i64 %22, i8* %23)
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* %5, align 8
  %27 = call i64 (...) @ir_type()
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @EDGE_TRUE_VALUE, align 4
  br label %32

31:                                               ; preds = %4
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  %34 = call %struct.TYPE_6__* @make_edge(i64 %25, i64 %26, i32 %33)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %10, align 8
  %35 = load i32, i32* @CDI_DOMINATORS, align 4
  %36 = load i64, i64* %5, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @set_immediate_dominator(i32 %35, i64 %36, i64 %37)
  %39 = load i32, i32* @CDI_DOMINATORS, align 4
  %40 = load i64, i64* %6, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32 @set_immediate_dominator(i32 %39, i64 %40, i64 %41)
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %47 = call i32 @lv_adjust_loop_header_phi(i64 %43, i64 %44, i64 %45, %struct.TYPE_6__* %46)
  %48 = load i64, i64* %9, align 8
  ret i64 %48
}

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i64 @split_edge(%struct.TYPE_6__*) #1

declare dso_local i32 @lv_add_condition_to_bb(i64, i64, i64, i8*) #1

declare dso_local %struct.TYPE_6__* @make_edge(i64, i64, i32) #1

declare dso_local i64 @ir_type(...) #1

declare dso_local i32 @set_immediate_dominator(i32, i64, i64) #1

declare dso_local i32 @lv_adjust_loop_header_phi(i64, i64, i64, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
