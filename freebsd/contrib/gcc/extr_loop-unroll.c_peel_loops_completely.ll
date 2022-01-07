; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_peel_loops_completely.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-unroll.c_peel_loops_completely.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64 }

@LPT_NONE = common dso_local global i64 0, align 8
@dump_file = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [54 x i8] c"\0A;; *** Considering loop %d for complete peeling ***\0A\00", align 1
@LPT_PEEL_COMPLETELY = common dso_local global i64 0, align 8
@CDI_DOMINATORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loops*, i32)* @peel_loops_completely to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @peel_loops_completely(%struct.loops* %0, i32 %1) #0 {
  %3 = alloca %struct.loops*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loop*, align 8
  %6 = alloca i32, align 4
  store %struct.loops* %0, %struct.loops** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.loops*, %struct.loops** %3, align 8
  %8 = getelementptr inbounds %struct.loops, %struct.loops* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %6, align 4
  br label %11

11:                                               ; preds = %68, %2
  %12 = load i32, i32* %6, align 4
  %13 = icmp ugt i32 %12, 0
  br i1 %13, label %14, label %71

14:                                               ; preds = %11
  %15 = load %struct.loops*, %struct.loops** %3, align 8
  %16 = getelementptr inbounds %struct.loops, %struct.loops* %15, i32 0, i32 1
  %17 = load %struct.loop**, %struct.loop*** %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds %struct.loop*, %struct.loop** %17, i64 %19
  %21 = load %struct.loop*, %struct.loop** %20, align 8
  store %struct.loop* %21, %struct.loop** %5, align 8
  %22 = load %struct.loop*, %struct.loop** %5, align 8
  %23 = icmp ne %struct.loop* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %68

25:                                               ; preds = %14
  %26 = load i64, i64* @LPT_NONE, align 8
  %27 = load %struct.loop*, %struct.loop** %5, align 8
  %28 = getelementptr inbounds %struct.loop, %struct.loop* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  store i64 %26, i64* %29, align 8
  %30 = load i64, i64* @dump_file, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %25
  %33 = load i64, i64* @dump_file, align 8
  %34 = load %struct.loop*, %struct.loop** %5, align 8
  %35 = getelementptr inbounds %struct.loop, %struct.loop* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @fprintf(i64 %33, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %32, %25
  %39 = load %struct.loop*, %struct.loop** %5, align 8
  %40 = call i32 @num_loop_insns(%struct.loop* %39)
  %41 = load %struct.loop*, %struct.loop** %5, align 8
  %42 = getelementptr inbounds %struct.loop, %struct.loop* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load %struct.loop*, %struct.loop** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @decide_peel_once_rolling(%struct.loop* %43, i32 %44)
  %46 = load %struct.loop*, %struct.loop** %5, align 8
  %47 = getelementptr inbounds %struct.loop, %struct.loop* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @LPT_NONE, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %38
  %53 = load %struct.loop*, %struct.loop** %5, align 8
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @decide_peel_completely(%struct.loop* %53, i32 %54)
  br label %56

56:                                               ; preds = %52, %38
  %57 = load %struct.loop*, %struct.loop** %5, align 8
  %58 = getelementptr inbounds %struct.loop, %struct.loop* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @LPT_PEEL_COMPLETELY, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.loops*, %struct.loops** %3, align 8
  %65 = load %struct.loop*, %struct.loop** %5, align 8
  %66 = call i32 @peel_loop_completely(%struct.loops* %64, %struct.loop* %65)
  br label %67

67:                                               ; preds = %63, %56
  br label %68

68:                                               ; preds = %67, %24
  %69 = load i32, i32* %6, align 4
  %70 = add i32 %69, -1
  store i32 %70, i32* %6, align 4
  br label %11

71:                                               ; preds = %11
  ret void
}

declare dso_local i32 @fprintf(i64, i8*, i32) #1

declare dso_local i32 @num_loop_insns(%struct.loop*) #1

declare dso_local i32 @decide_peel_once_rolling(%struct.loop*, i32) #1

declare dso_local i32 @decide_peel_completely(%struct.loop*, i32) #1

declare dso_local i32 @peel_loop_completely(%struct.loops*, %struct.loop*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
