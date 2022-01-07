; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_check_simple_exit.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_loop-iv.c_check_simple_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.loop* }
%struct.niter_desc = type { i32, %struct.TYPE_8__*, %struct.TYPE_8__* }

@CDI_DOMINATORS = common dso_local global i32 0, align 4
@EDGE_FALLTHRU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.loop*, %struct.TYPE_8__*, %struct.niter_desc*)* @check_simple_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_simple_exit(%struct.loop* %0, %struct.TYPE_8__* %1, %struct.niter_desc* %2) #0 {
  %4 = alloca %struct.loop*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.niter_desc*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.loop* %0, %struct.loop** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  store %struct.niter_desc* %2, %struct.niter_desc** %6, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_9__* %13, %struct.TYPE_9__** %7, align 8
  %14 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %15 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %14, i32 0, i32 0
  store i32 0, i32* %15, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.loop*, %struct.loop** %17, align 8
  %19 = load %struct.loop*, %struct.loop** %4, align 8
  %20 = icmp ne %struct.loop* %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %80

22:                                               ; preds = %3
  %23 = load i32, i32* @CDI_DOMINATORS, align 4
  %24 = load %struct.loop*, %struct.loop** %4, align 8
  %25 = getelementptr inbounds %struct.loop, %struct.loop* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %28 = call i32 @dominated_by_p(i32 %23, i32 %26, %struct.TYPE_9__* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  br label %80

31:                                               ; preds = %22
  %32 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %33 = call i32 @BB_END(%struct.TYPE_9__* %32)
  %34 = call i32 @any_condjump_p(i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %80

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %39 = call %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_9__* %38, i32 0)
  store %struct.TYPE_8__* %39, %struct.TYPE_8__** %10, align 8
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %41 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %42 = icmp eq %struct.TYPE_8__* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %45 = call %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_9__* %44, i32 1)
  store %struct.TYPE_8__* %45, %struct.TYPE_8__** %10, align 8
  br label %46

46:                                               ; preds = %43, %37
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %48 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %49 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %48, i32 0, i32 2
  store %struct.TYPE_8__* %47, %struct.TYPE_8__** %49, align 8
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %51 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %52 = getelementptr inbounds %struct.niter_desc, %struct.niter_desc* %51, i32 0, i32 1
  store %struct.TYPE_8__* %50, %struct.TYPE_8__** %52, align 8
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %54, align 8
  %56 = call i32 @BB_END(%struct.TYPE_9__* %55)
  %57 = call i32 @get_condition(i32 %56, i32* %9, i32 0, i32 0)
  store i32 %57, i32* %8, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %46
  br label %80

60:                                               ; preds = %46
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @EDGE_FALLTHRU, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %60
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @reversed_condition(i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %73, label %72

72:                                               ; preds = %67
  br label %80

73:                                               ; preds = %67
  br label %74

74:                                               ; preds = %73, %60
  %75 = load %struct.loop*, %struct.loop** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.niter_desc*, %struct.niter_desc** %6, align 8
  %79 = call i32 @iv_number_of_iterations(%struct.loop* %75, i32 %76, i32 %77, %struct.niter_desc* %78)
  br label %80

80:                                               ; preds = %74, %72, %59, %36, %30, %21
  ret void
}

declare dso_local i32 @dominated_by_p(i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @any_condjump_p(i32) #1

declare dso_local i32 @BB_END(%struct.TYPE_9__*) #1

declare dso_local %struct.TYPE_8__* @EDGE_SUCC(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @get_condition(i32, i32*, i32, i32) #1

declare dso_local i32 @reversed_condition(i32) #1

declare dso_local i32 @iv_number_of_iterations(%struct.loop*, i32, i32, %struct.niter_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
