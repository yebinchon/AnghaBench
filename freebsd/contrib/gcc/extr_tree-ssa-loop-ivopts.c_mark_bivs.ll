; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_mark_bivs.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-ssa-loop-ivopts.c_mark_bivs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivopts_data = type { %struct.loop* }
%struct.loop = type { i32 }
%struct.iv = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.loop* }

@BB_IRREDUCIBLE_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivopts_data*)* @mark_bivs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mark_bivs(%struct.ivopts_data* %0) #0 {
  %2 = alloca %struct.ivopts_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.iv*, align 8
  %6 = alloca %struct.iv*, align 8
  %7 = alloca %struct.loop*, align 8
  %8 = alloca %struct.TYPE_3__*, align 8
  store %struct.ivopts_data* %0, %struct.ivopts_data** %2, align 8
  %9 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %10 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %9, i32 0, i32 0
  %11 = load %struct.loop*, %struct.loop** %10, align 8
  store %struct.loop* %11, %struct.loop** %7, align 8
  %12 = load %struct.loop*, %struct.loop** %7, align 8
  %13 = getelementptr inbounds %struct.loop, %struct.loop* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @phi_nodes(i32 %14)
  store i64 %15, i64* %3, align 8
  br label %16

16:                                               ; preds = %62, %1
  %17 = load i64, i64* %3, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %16
  %20 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %21 = load i64, i64* %3, align 8
  %22 = call i64 @PHI_RESULT(i64 %21)
  %23 = call %struct.iv* @get_iv(%struct.ivopts_data* %20, i64 %22)
  store %struct.iv* %23, %struct.iv** %5, align 8
  %24 = load %struct.iv*, %struct.iv** %5, align 8
  %25 = icmp ne %struct.iv* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %19
  br label %62

27:                                               ; preds = %19
  %28 = load i64, i64* %3, align 8
  %29 = load %struct.loop*, %struct.loop** %7, align 8
  %30 = call i32 @loop_latch_edge(%struct.loop* %29)
  %31 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %28, i32 %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %33 = load i64, i64* %4, align 8
  %34 = call %struct.iv* @get_iv(%struct.ivopts_data* %32, i64 %33)
  store %struct.iv* %34, %struct.iv** %6, align 8
  %35 = load %struct.iv*, %struct.iv** %6, align 8
  %36 = icmp ne %struct.iv* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %62

38:                                               ; preds = %27
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @SSA_NAME_DEF_STMT(i64 %39)
  %41 = call %struct.TYPE_3__* @bb_for_stmt(i32 %40)
  store %struct.TYPE_3__* %41, %struct.TYPE_3__** %8, align 8
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load %struct.loop*, %struct.loop** %43, align 8
  %45 = load %struct.ivopts_data*, %struct.ivopts_data** %2, align 8
  %46 = getelementptr inbounds %struct.ivopts_data, %struct.ivopts_data* %45, i32 0, i32 0
  %47 = load %struct.loop*, %struct.loop** %46, align 8
  %48 = icmp ne %struct.loop* %44, %47
  br i1 %48, label %56, label %49

49:                                               ; preds = %38
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @BB_IRREDUCIBLE_LOOP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %38
  br label %62

57:                                               ; preds = %49
  %58 = load %struct.iv*, %struct.iv** %5, align 8
  %59 = getelementptr inbounds %struct.iv, %struct.iv* %58, i32 0, i32 0
  store i32 1, i32* %59, align 4
  %60 = load %struct.iv*, %struct.iv** %6, align 8
  %61 = getelementptr inbounds %struct.iv, %struct.iv* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %57, %56, %37, %26
  %63 = load i64, i64* %3, align 8
  %64 = call i64 @PHI_CHAIN(i64 %63)
  store i64 %64, i64* %3, align 8
  br label %16

65:                                               ; preds = %16
  ret void
}

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local %struct.iv* @get_iv(%struct.ivopts_data*, i64) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, i32) #1

declare dso_local i32 @loop_latch_edge(%struct.loop*) #1

declare dso_local %struct.TYPE_3__* @bb_for_stmt(i32) #1

declare dso_local i32 @SSA_NAME_DEF_STMT(i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
