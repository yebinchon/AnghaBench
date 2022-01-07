; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_move_loop_invariants.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-invariant.c_move_loop_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, i64*, %struct.loop* }
%struct.loop = type { %struct.loop*, %struct.loop*, %struct.loop* }

@DF_HARD_REGS = common dso_local global i32 0, align 4
@DF_EQUIV_NOTES = common dso_local global i32 0, align 4
@df = common dso_local global i32* null, align 8
@DF_UD_CHAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @move_loop_invariants(%struct.loops* %0) #0 {
  %2 = alloca %struct.loops*, align 8
  %3 = alloca %struct.loop*, align 8
  %4 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %2, align 8
  %5 = load i32, i32* @DF_HARD_REGS, align 4
  %6 = load i32, i32* @DF_EQUIV_NOTES, align 4
  %7 = or i32 %5, %6
  %8 = call i32* @df_init(i32 %7)
  store i32* %8, i32** @df, align 8
  %9 = load i32*, i32** @df, align 8
  %10 = load i32, i32* @DF_UD_CHAIN, align 4
  %11 = call i32 @df_chain_add_problem(i32* %9, i32 %10)
  %12 = load %struct.loops*, %struct.loops** %2, align 8
  %13 = getelementptr inbounds %struct.loops, %struct.loops* %12, i32 0, i32 2
  %14 = load %struct.loop*, %struct.loop** %13, align 8
  store %struct.loop* %14, %struct.loop** %3, align 8
  br label %15

15:                                               ; preds = %20, %1
  %16 = load %struct.loop*, %struct.loop** %3, align 8
  %17 = getelementptr inbounds %struct.loop, %struct.loop* %16, i32 0, i32 1
  %18 = load %struct.loop*, %struct.loop** %17, align 8
  %19 = icmp ne %struct.loop* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.loop*, %struct.loop** %3, align 8
  %22 = getelementptr inbounds %struct.loop, %struct.loop* %21, i32 0, i32 1
  %23 = load %struct.loop*, %struct.loop** %22, align 8
  store %struct.loop* %23, %struct.loop** %3, align 8
  br label %15

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %56, %24
  %26 = load %struct.loop*, %struct.loop** %3, align 8
  %27 = load %struct.loops*, %struct.loops** %2, align 8
  %28 = getelementptr inbounds %struct.loops, %struct.loops* %27, i32 0, i32 2
  %29 = load %struct.loop*, %struct.loop** %28, align 8
  %30 = icmp ne %struct.loop* %26, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.loop*, %struct.loop** %3, align 8
  %33 = call i32 @move_single_loop_invariants(%struct.loop* %32)
  %34 = load %struct.loop*, %struct.loop** %3, align 8
  %35 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 2
  %36 = load %struct.loop*, %struct.loop** %35, align 8
  %37 = icmp ne %struct.loop* %36, null
  br i1 %37, label %38, label %52

38:                                               ; preds = %31
  %39 = load %struct.loop*, %struct.loop** %3, align 8
  %40 = getelementptr inbounds %struct.loop, %struct.loop* %39, i32 0, i32 2
  %41 = load %struct.loop*, %struct.loop** %40, align 8
  store %struct.loop* %41, %struct.loop** %3, align 8
  br label %42

42:                                               ; preds = %47, %38
  %43 = load %struct.loop*, %struct.loop** %3, align 8
  %44 = getelementptr inbounds %struct.loop, %struct.loop* %43, i32 0, i32 1
  %45 = load %struct.loop*, %struct.loop** %44, align 8
  %46 = icmp ne %struct.loop* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load %struct.loop*, %struct.loop** %3, align 8
  %49 = getelementptr inbounds %struct.loop, %struct.loop* %48, i32 0, i32 1
  %50 = load %struct.loop*, %struct.loop** %49, align 8
  store %struct.loop* %50, %struct.loop** %3, align 8
  br label %42

51:                                               ; preds = %42
  br label %56

52:                                               ; preds = %31
  %53 = load %struct.loop*, %struct.loop** %3, align 8
  %54 = getelementptr inbounds %struct.loop, %struct.loop* %53, i32 0, i32 0
  %55 = load %struct.loop*, %struct.loop** %54, align 8
  store %struct.loop* %55, %struct.loop** %3, align 8
  br label %56

56:                                               ; preds = %52, %51
  br label %25

57:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %58

58:                                               ; preds = %83, %57
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.loops*, %struct.loops** %2, align 8
  %61 = getelementptr inbounds %struct.loops, %struct.loops* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ult i32 %59, %62
  br i1 %63, label %64, label %86

64:                                               ; preds = %58
  %65 = load %struct.loops*, %struct.loops** %2, align 8
  %66 = getelementptr inbounds %struct.loops, %struct.loops* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i64, i64* %67, i64 %69
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %82

73:                                               ; preds = %64
  %74 = load %struct.loops*, %struct.loops** %2, align 8
  %75 = getelementptr inbounds %struct.loops, %struct.loops* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = load i32, i32* %4, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @free_loop_data(i64 %80)
  br label %82

82:                                               ; preds = %73, %64
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %4, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %58

86:                                               ; preds = %58
  %87 = load i32*, i32** @df, align 8
  %88 = call i32 @df_finish(i32* %87)
  store i32* null, i32** @df, align 8
  ret void
}

declare dso_local i32* @df_init(i32) #1

declare dso_local i32 @df_chain_add_problem(i32*, i32) #1

declare dso_local i32 @move_single_loop_invariants(%struct.loop*) #1

declare dso_local i32 @free_loop_data(i64) #1

declare dso_local i32 @df_finish(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
