; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phis_for_duplicate_loop.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-vectorizer.c_slpeel_update_phis_for_duplicate_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@SSA_NAME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, %struct.loop*, i32)* @slpeel_update_phis_for_duplicate_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @slpeel_update_phis_for_duplicate_loop(%struct.loop* %0, %struct.loop* %1, i32 %2) #0 {
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca %struct.TYPE_6__*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store %struct.loop* %1, %struct.loop** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.loop*, %struct.loop** %4, align 8
  %17 = call %struct.TYPE_6__* @loop_latch_edge(%struct.loop* %16)
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %11, align 8
  %18 = load %struct.loop*, %struct.loop** %4, align 8
  %19 = call %struct.TYPE_6__* @loop_preheader_edge(%struct.loop* %18)
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.loop*, %struct.loop** %5, align 8
  %21 = getelementptr inbounds %struct.loop, %struct.loop* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  store %struct.TYPE_6__* %22, %struct.TYPE_6__** %13, align 8
  %23 = load %struct.loop*, %struct.loop** %5, align 8
  %24 = call %struct.TYPE_6__* @loop_preheader_edge(%struct.loop* %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %14, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %3
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  br label %31

29:                                               ; preds = %3
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi %struct.TYPE_6__* [ %28, %27 ], [ %30, %29 ]
  store %struct.TYPE_6__* %32, %struct.TYPE_6__** %15, align 8
  %33 = load %struct.loop*, %struct.loop** %5, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @phi_nodes(i32 %35)
  store i64 %36, i64* %8, align 8
  %37 = load %struct.loop*, %struct.loop** %4, align 8
  %38 = getelementptr inbounds %struct.loop, %struct.loop* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @phi_nodes(i32 %39)
  store i64 %40, i64* %9, align 8
  br label %41

41:                                               ; preds = %94, %31
  %42 = load i64, i64* %8, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i64, i64* %9, align 8
  %46 = icmp ne i64 %45, 0
  br label %47

47:                                               ; preds = %44, %41
  %48 = phi i1 [ false, %41 ], [ %46, %44 ]
  br i1 %48, label %49, label %99

49:                                               ; preds = %47
  %50 = load i64, i64* %9, align 8
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %52 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %50, %struct.TYPE_6__* %51)
  store i64 %52, i64* %10, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* %10, align 8
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %56 = call i32 @add_phi_arg(i64 %53, i64 %54, %struct.TYPE_6__* %55)
  %57 = load i64, i64* %9, align 8
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %59 = call i64 @PHI_ARG_DEF_FROM_EDGE(i64 %57, %struct.TYPE_6__* %58)
  store i64 %59, i64* %10, align 8
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @TREE_CODE(i64 %60)
  %62 = load i64, i64* @SSA_NAME, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %65

64:                                               ; preds = %49
  br label %94

65:                                               ; preds = %49
  %66 = load i64, i64* %10, align 8
  %67 = call i64 @get_current_def(i64 %66)
  store i64 %67, i64* %7, align 8
  %68 = load i64, i64* %7, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i64, i64* %8, align 8
  %72 = call i64 @PHI_RESULT(i64 %71)
  store i64 %72, i64* %7, align 8
  br label %73

73:                                               ; preds = %70, %65
  %74 = load i64, i64* %8, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.loop*, %struct.loop** %5, align 8
  %77 = call %struct.TYPE_6__* @loop_latch_edge(%struct.loop* %76)
  %78 = call i32 @add_phi_arg(i64 %74, i64 %75, %struct.TYPE_6__* %77)
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %93, label %81

81:                                               ; preds = %73
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %84 = icmp eq %struct.TYPE_6__* %82, %83
  %85 = zext i1 %84 to i32
  %86 = call i32 @gcc_assert(i32 %85)
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i64, i64* %7, align 8
  %92 = call i32 @SET_PHI_ARG_DEF(i64 %87, i32 %90, i64 %91)
  br label %93

93:                                               ; preds = %81, %73
  br label %94

94:                                               ; preds = %93, %64
  %95 = load i64, i64* %8, align 8
  %96 = call i64 @PHI_CHAIN(i64 %95)
  store i64 %96, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = call i64 @PHI_CHAIN(i64 %97)
  store i64 %98, i64* %9, align 8
  br label %41

99:                                               ; preds = %47
  ret void
}

declare dso_local %struct.TYPE_6__* @loop_latch_edge(%struct.loop*) #1

declare dso_local %struct.TYPE_6__* @loop_preheader_edge(%struct.loop*) #1

declare dso_local i64 @phi_nodes(i32) #1

declare dso_local i64 @PHI_ARG_DEF_FROM_EDGE(i64, %struct.TYPE_6__*) #1

declare dso_local i32 @add_phi_arg(i64, i64, %struct.TYPE_6__*) #1

declare dso_local i64 @TREE_CODE(i64) #1

declare dso_local i64 @get_current_def(i64) #1

declare dso_local i64 @PHI_RESULT(i64) #1

declare dso_local i32 @gcc_assert(i32) #1

declare dso_local i32 @SET_PHI_ARG_DEF(i64, i32, i64) #1

declare dso_local i64 @PHI_CHAIN(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
