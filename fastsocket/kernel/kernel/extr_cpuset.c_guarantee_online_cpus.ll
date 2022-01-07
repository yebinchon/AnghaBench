; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_guarantee_online_cpus.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_guarantee_online_cpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { %struct.cpumask*, %struct.cpuset* }
%struct.cpumask = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpuset*, %struct.cpumask*)* @guarantee_online_cpus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @guarantee_online_cpus(%struct.cpuset* %0, %struct.cpumask* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpumask*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store %struct.cpumask* %1, %struct.cpumask** %4, align 8
  br label %5

5:                                                ; preds = %18, %2
  %6 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %7 = icmp ne %struct.cpuset* %6, null
  br i1 %7, label %8, label %16

8:                                                ; preds = %5
  %9 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %10 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %9, i32 0, i32 0
  %11 = load %struct.cpumask*, %struct.cpumask** %10, align 8
  %12 = load i32, i32* @cpu_online_mask, align 4
  %13 = call i32 @cpumask_intersects(%struct.cpumask* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %8, %5
  %17 = phi i1 [ false, %5 ], [ %15, %8 ]
  br i1 %17, label %18, label %22

18:                                               ; preds = %16
  %19 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %20 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %19, i32 0, i32 1
  %21 = load %struct.cpuset*, %struct.cpuset** %20, align 8
  store %struct.cpuset* %21, %struct.cpuset** %3, align 8
  br label %5

22:                                               ; preds = %16
  %23 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %24 = icmp ne %struct.cpuset* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %22
  %26 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %27 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %28 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %27, i32 0, i32 0
  %29 = load %struct.cpumask*, %struct.cpumask** %28, align 8
  %30 = load i32, i32* @cpu_online_mask, align 4
  %31 = call i32 @cpumask_and(%struct.cpumask* %26, %struct.cpumask* %29, i32 %30)
  br label %36

32:                                               ; preds = %22
  %33 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %34 = load i32, i32* @cpu_online_mask, align 4
  %35 = call i32 @cpumask_copy(%struct.cpumask* %33, i32 %34)
  br label %36

36:                                               ; preds = %32, %25
  %37 = load %struct.cpumask*, %struct.cpumask** %4, align 8
  %38 = load i32, i32* @cpu_online_mask, align 4
  %39 = call i32 @cpumask_intersects(%struct.cpumask* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @BUG_ON(i32 %42)
  ret void
}

declare dso_local i32 @cpumask_intersects(%struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_and(%struct.cpumask*, %struct.cpumask*, i32) #1

declare dso_local i32 @cpumask_copy(%struct.cpumask*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
