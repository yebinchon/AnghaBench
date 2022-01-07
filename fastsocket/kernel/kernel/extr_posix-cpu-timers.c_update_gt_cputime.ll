; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_update_gt_cputime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_posix-cpu-timers.c_update_gt_cputime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_cputime = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.task_cputime*, %struct.task_cputime*)* @update_gt_cputime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_gt_cputime(%struct.task_cputime* %0, %struct.task_cputime* %1) #0 {
  %3 = alloca %struct.task_cputime*, align 8
  %4 = alloca %struct.task_cputime*, align 8
  store %struct.task_cputime* %0, %struct.task_cputime** %3, align 8
  store %struct.task_cputime* %1, %struct.task_cputime** %4, align 8
  %5 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %6 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %9 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @cputime_gt(i32 %7, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %2
  %14 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %15 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %18 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  br label %19

19:                                               ; preds = %13, %2
  %20 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %21 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %24 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @cputime_gt(i32 %22, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %30 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %33 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 8
  br label %34

34:                                               ; preds = %28, %19
  %35 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %36 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %39 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %37, %40
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load %struct.task_cputime*, %struct.task_cputime** %4, align 8
  %44 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.task_cputime*, %struct.task_cputime** %3, align 8
  %47 = getelementptr inbounds %struct.task_cputime, %struct.task_cputime* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  br label %48

48:                                               ; preds = %42, %34
  ret void
}

declare dso_local i64 @cputime_gt(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
