; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_unroll_and_peel_loops.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_unroll_and_peel_loops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { %struct.loop* }
%struct.loop = type { %struct.TYPE_2__, %struct.loop*, %struct.loop*, %struct.loop* }
%struct.TYPE_2__ = type { i32 }

@CDI_DOMINATORS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @unroll_and_peel_loops(%struct.loops* %0, i32 %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca %struct.loop*, align 8
  %7 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.loops*, %struct.loops** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @peel_loops_completely(%struct.loops* %8, i32 %9)
  %11 = load %struct.loops*, %struct.loops** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @decide_unrolling_and_peeling(%struct.loops* %11, i32 %12)
  %14 = load %struct.loops*, %struct.loops** %3, align 8
  %15 = getelementptr inbounds %struct.loops, %struct.loops* %14, i32 0, i32 0
  %16 = load %struct.loop*, %struct.loop** %15, align 8
  store %struct.loop* %16, %struct.loop** %5, align 8
  br label %17

17:                                               ; preds = %22, %2
  %18 = load %struct.loop*, %struct.loop** %5, align 8
  %19 = getelementptr inbounds %struct.loop, %struct.loop* %18, i32 0, i32 2
  %20 = load %struct.loop*, %struct.loop** %19, align 8
  %21 = icmp ne %struct.loop* %20, null
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.loop*, %struct.loop** %5, align 8
  %24 = getelementptr inbounds %struct.loop, %struct.loop* %23, i32 0, i32 2
  %25 = load %struct.loop*, %struct.loop** %24, align 8
  store %struct.loop* %25, %struct.loop** %5, align 8
  br label %17

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %86, %26
  %28 = load %struct.loop*, %struct.loop** %5, align 8
  %29 = load %struct.loops*, %struct.loops** %3, align 8
  %30 = getelementptr inbounds %struct.loops, %struct.loops* %29, i32 0, i32 0
  %31 = load %struct.loop*, %struct.loop** %30, align 8
  %32 = icmp ne %struct.loop* %28, %31
  br i1 %32, label %33, label %88

33:                                               ; preds = %27
  %34 = load %struct.loop*, %struct.loop** %5, align 8
  %35 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 3
  %36 = load %struct.loop*, %struct.loop** %35, align 8
  %37 = icmp ne %struct.loop* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load %struct.loop*, %struct.loop** %5, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 3
  %41 = load %struct.loop*, %struct.loop** %40, align 8
  store %struct.loop* %41, %struct.loop** %6, align 8
  br label %42

42:                                               ; preds = %47, %38
  %43 = load %struct.loop*, %struct.loop** %6, align 8
  %44 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 2
  %45 = load %struct.loop*, %struct.loop** %44, align 8
  %46 = icmp ne %struct.loop* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.loop*, %struct.loop** %6, align 8
  %49 = getelementptr inbounds %struct.loop, %struct.loop* %48, i32 0, i32 2
  %50 = load %struct.loop*, %struct.loop** %49, align 8
  store %struct.loop* %50, %struct.loop** %6, align 8
  br label %42

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %33
  %53 = load %struct.loop*, %struct.loop** %5, align 8
  %54 = getelementptr inbounds %struct.loop, %struct.loop* %53, i32 0, i32 1
  %55 = load %struct.loop*, %struct.loop** %54, align 8
  store %struct.loop* %55, %struct.loop** %6, align 8
  br label %56

56:                                               ; preds = %52, %51
  store i32 1, i32* %7, align 4
  %57 = load %struct.loop*, %struct.loop** %5, align 8
  %58 = getelementptr inbounds %struct.loop, %struct.loop* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %80 [
    i32 132, label %61
    i32 131, label %63
    i32 130, label %67
    i32 129, label %71
    i32 128, label %75
    i32 133, label %79
  ]

61:                                               ; preds = %56
  %62 = call i32 (...) @gcc_unreachable()
  br label %63

63:                                               ; preds = %56, %61
  %64 = load %struct.loops*, %struct.loops** %3, align 8
  %65 = load %struct.loop*, %struct.loop** %5, align 8
  %66 = call i32 @peel_loop_simple(%struct.loops* %64, %struct.loop* %65)
  br label %82

67:                                               ; preds = %56
  %68 = load %struct.loops*, %struct.loops** %3, align 8
  %69 = load %struct.loop*, %struct.loop** %5, align 8
  %70 = call i32 @unroll_loop_constant_iterations(%struct.loops* %68, %struct.loop* %69)
  br label %82

71:                                               ; preds = %56
  %72 = load %struct.loops*, %struct.loops** %3, align 8
  %73 = load %struct.loop*, %struct.loop** %5, align 8
  %74 = call i32 @unroll_loop_runtime_iterations(%struct.loops* %72, %struct.loop* %73)
  br label %82

75:                                               ; preds = %56
  %76 = load %struct.loops*, %struct.loops** %3, align 8
  %77 = load %struct.loop*, %struct.loop** %5, align 8
  %78 = call i32 @unroll_loop_stupid(%struct.loops* %76, %struct.loop* %77)
  br label %82

79:                                               ; preds = %56
  store i32 0, i32* %7, align 4
  br label %82

80:                                               ; preds = %56
  %81 = call i32 (...) @gcc_unreachable()
  br label %82

82:                                               ; preds = %80, %79, %75, %71, %67, %63
  %83 = load i32, i32* %7, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %86

86:                                               ; preds = %85, %82
  %87 = load %struct.loop*, %struct.loop** %6, align 8
  store %struct.loop* %87, %struct.loop** %5, align 8
  br label %27

88:                                               ; preds = %27
  %89 = call i32 (...) @iv_analysis_done()
  ret void
}

declare dso_local i32 @peel_loops_completely(%struct.loops*, i32) #1

declare dso_local i32 @decide_unrolling_and_peeling(%struct.loops*, i32) #1

declare dso_local i32 @gcc_unreachable(...) #1

declare dso_local i32 @peel_loop_simple(%struct.loops*, %struct.loop*) #1

declare dso_local i32 @unroll_loop_constant_iterations(%struct.loops*, %struct.loop*) #1

declare dso_local i32 @unroll_loop_runtime_iterations(%struct.loops*, %struct.loop*) #1

declare dso_local i32 @unroll_loop_stupid(%struct.loops*, %struct.loop*) #1

declare dso_local i32 @iv_analysis_done(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
