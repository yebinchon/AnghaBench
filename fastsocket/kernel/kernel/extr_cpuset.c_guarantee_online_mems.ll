; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_guarantee_online_mems.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_guarantee_online_mems.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, %struct.cpuset* }

@node_states = common dso_local global i32* null, align 8
@N_HIGH_MEMORY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, i32*)* @guarantee_online_mems to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guarantee_online_mems(%struct.cpuset* %0, i32* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca i32*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store i32* %1, i32** %4, align 8
  br label %5

5:                                                ; preds = %21, %2
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = icmp ne %struct.cpuset* %6, null
  br i1 %7, label %8, label %19

8:                                                ; preds = %5
  %9 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %10 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32*, i32** @node_states, align 8
  %13 = load i64, i64* @N_HIGH_MEMORY, align 8
  %14 = getelementptr inbounds i32, i32* %12, i64 %13
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @nodes_intersects(i32 %11, i32 %15)
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  br label %19

19:                                               ; preds = %8, %5
  %20 = phi i1 [ false, %5 ], [ %18, %8 ]
  br i1 %20, label %21, label %25

21:                                               ; preds = %19
  %22 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %23 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %22, i32 0, i32 1
  %24 = load %struct.cpuset*, %struct.cpuset** %23, align 8
  store %struct.cpuset* %24, %struct.cpuset** %3, align 8
  br label %5

25:                                               ; preds = %19
  %26 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %27 = icmp ne %struct.cpuset* %26, null
  br i1 %27, label %28, label %39

28:                                               ; preds = %25
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %32 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32*, i32** @node_states, align 8
  %35 = load i64, i64* @N_HIGH_MEMORY, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @nodes_and(i32 %30, i32 %33, i32 %37)
  br label %45

39:                                               ; preds = %25
  %40 = load i32*, i32** @node_states, align 8
  %41 = load i64, i64* @N_HIGH_MEMORY, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = load i32*, i32** %4, align 8
  store i32 %43, i32* %44, align 4
  br label %45

45:                                               ; preds = %39, %28
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** @node_states, align 8
  %49 = load i64, i64* @N_HIGH_MEMORY, align 8
  %50 = getelementptr inbounds i32, i32* %48, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @nodes_intersects(i32 %47, i32 %51)
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i32 @BUG_ON(i32 %55)
  ret void
}

declare dso_local i32 @nodes_intersects(i32, i32) #1

declare dso_local i32 @nodes_and(i32, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
