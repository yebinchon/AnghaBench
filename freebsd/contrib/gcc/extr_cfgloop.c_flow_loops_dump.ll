; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loops_dump.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loops_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loops = type { i32, %struct.loop** }
%struct.loop = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c";; %d loops found\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flow_loops_dump(%struct.loops* %0, i32* %1, void (%struct.loop*, i32*, i32)* %2, i32 %3) #0 {
  %5 = alloca %struct.loops*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca void (%struct.loop*, i32*, i32)*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.loop*, align 8
  store %struct.loops* %0, %struct.loops** %5, align 8
  store i32* %1, i32** %6, align 8
  store void (%struct.loop*, i32*, i32)* %2, void (%struct.loop*, i32*, i32)** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load %struct.loops*, %struct.loops** %5, align 8
  %13 = getelementptr inbounds %struct.loops, %struct.loops* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %10, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17, %4
  br label %56

21:                                               ; preds = %17
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @fprintf(i32* %22, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %9, align 4
  br label %25

25:                                               ; preds = %46, %21
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %49

29:                                               ; preds = %25
  %30 = load %struct.loops*, %struct.loops** %5, align 8
  %31 = getelementptr inbounds %struct.loops, %struct.loops* %30, i32 0, i32 1
  %32 = load %struct.loop**, %struct.loop*** %31, align 8
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.loop*, %struct.loop** %32, i64 %34
  %36 = load %struct.loop*, %struct.loop** %35, align 8
  store %struct.loop* %36, %struct.loop** %11, align 8
  %37 = load %struct.loop*, %struct.loop** %11, align 8
  %38 = icmp ne %struct.loop* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %29
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.loop*, %struct.loop** %11, align 8
  %42 = load i32*, i32** %6, align 8
  %43 = load void (%struct.loop*, i32*, i32)*, void (%struct.loop*, i32*, i32)** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @flow_loop_dump(%struct.loop* %41, i32* %42, void (%struct.loop*, i32*, i32)* %43, i32 %44)
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %25

49:                                               ; preds = %25
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.loops*, %struct.loops** %5, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = call i32 @flow_loops_cfg_dump(%struct.loops* %53, i32* %54)
  br label %56

56:                                               ; preds = %20, %52, %49
  ret void
}

declare dso_local i32 @fprintf(i32*, i8*, i32) #1

declare dso_local i32 @flow_loop_dump(%struct.loop*, i32*, void (%struct.loop*, i32*, i32)*, i32) #1

declare dso_local i32 @flow_loops_cfg_dump(%struct.loops*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
