; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_machine__resolve_bstack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/tools/perf/util/extr_session.c_machine__resolve_bstack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.branch_info = type { i32, i32, i32 }
%struct.machine = type { i32 }
%struct.thread = type { i32 }
%struct.branch_stack = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.branch_info* @machine__resolve_bstack(%struct.machine* %0, %struct.thread* %1, %struct.branch_stack* %2) #0 {
  %4 = alloca %struct.branch_info*, align 8
  %5 = alloca %struct.machine*, align 8
  %6 = alloca %struct.thread*, align 8
  %7 = alloca %struct.branch_stack*, align 8
  %8 = alloca %struct.branch_info*, align 8
  %9 = alloca i32, align 4
  store %struct.machine* %0, %struct.machine** %5, align 8
  store %struct.thread* %1, %struct.thread** %6, align 8
  store %struct.branch_stack* %2, %struct.branch_stack** %7, align 8
  %10 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %11 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.branch_info* @calloc(i32 %12, i32 12)
  store %struct.branch_info* %13, %struct.branch_info** %8, align 8
  %14 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %15 = icmp ne %struct.branch_info* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  store %struct.branch_info* null, %struct.branch_info** %4, align 8
  br label %75

17:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i32, i32* %9, align 4
  %20 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %21 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp ult i32 %19, %22
  br i1 %23, label %24, label %73

24:                                               ; preds = %18
  %25 = load %struct.machine*, %struct.machine** %5, align 8
  %26 = load %struct.thread*, %struct.thread** %6, align 8
  %27 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %27, i64 %29
  %31 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %30, i32 0, i32 2
  %32 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %33 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @ip__resolve_ams(%struct.machine* %25, %struct.thread* %26, i32* %31, i32 %39)
  %41 = load %struct.machine*, %struct.machine** %5, align 8
  %42 = load %struct.thread*, %struct.thread** %6, align 8
  %43 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %43, i64 %45
  %47 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %46, i32 0, i32 1
  %48 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %49 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %48, i32 0, i32 1
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %9, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ip__resolve_ams(%struct.machine* %41, %struct.thread* %42, i32* %47, i32 %55)
  %57 = load %struct.branch_stack*, %struct.branch_stack** %7, align 8
  %58 = getelementptr inbounds %struct.branch_stack, %struct.branch_stack* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  %66 = load i32, i32* %9, align 4
  %67 = zext i32 %66 to i64
  %68 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %65, i64 %67
  %69 = getelementptr inbounds %struct.branch_info, %struct.branch_info* %68, i32 0, i32 0
  store i32 %64, i32* %69, align 4
  br label %70

70:                                               ; preds = %24
  %71 = load i32, i32* %9, align 4
  %72 = add i32 %71, 1
  store i32 %72, i32* %9, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load %struct.branch_info*, %struct.branch_info** %8, align 8
  store %struct.branch_info* %74, %struct.branch_info** %4, align 8
  br label %75

75:                                               ; preds = %73, %16
  %76 = load %struct.branch_info*, %struct.branch_info** %4, align 8
  ret %struct.branch_info* %76
}

declare dso_local %struct.branch_info* @calloc(i32, i32) #1

declare dso_local i32 @ip__resolve_ams(%struct.machine*, %struct.thread*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
