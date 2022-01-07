; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_is_cpuset_subset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_cpuset.c_is_cpuset_subset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpuset = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpuset*, %struct.cpuset*)* @is_cpuset_subset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_cpuset_subset(%struct.cpuset* %0, %struct.cpuset* %1) #0 {
  %3 = alloca %struct.cpuset*, align 8
  %4 = alloca %struct.cpuset*, align 8
  store %struct.cpuset* %0, %struct.cpuset** %3, align 8
  store %struct.cpuset* %1, %struct.cpuset** %4, align 8
  %5 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %6 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %9 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @cpumask_subset(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %15 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %18 = getelementptr inbounds %struct.cpuset, %struct.cpuset* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @nodes_subset(i32 %16, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %13
  %23 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %24 = call i64 @is_cpu_exclusive(%struct.cpuset* %23)
  %25 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %26 = call i64 @is_cpu_exclusive(%struct.cpuset* %25)
  %27 = icmp sle i64 %24, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %22
  %29 = load %struct.cpuset*, %struct.cpuset** %3, align 8
  %30 = call i64 @is_mem_exclusive(%struct.cpuset* %29)
  %31 = load %struct.cpuset*, %struct.cpuset** %4, align 8
  %32 = call i64 @is_mem_exclusive(%struct.cpuset* %31)
  %33 = icmp sle i64 %30, %32
  br label %34

34:                                               ; preds = %28, %22, %13, %2
  %35 = phi i1 [ false, %22 ], [ false, %13 ], [ false, %2 ], [ %33, %28 ]
  %36 = zext i1 %35 to i32
  ret i32 %36
}

declare dso_local i64 @cpumask_subset(i32, i32) #1

declare dso_local i64 @nodes_subset(i32, i32) #1

declare dso_local i64 @is_cpu_exclusive(%struct.cpuset*) #1

declare dso_local i64 @is_mem_exclusive(%struct.cpuset*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
