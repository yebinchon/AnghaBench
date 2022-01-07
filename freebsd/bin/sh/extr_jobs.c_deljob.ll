; ModuleID = '/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_deljob.c'
source_filename = "/home/carl/AnghaBench/freebsd/bin/sh/extr_jobs.c_deljob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.job = type { %struct.job* }

@jobmru = common dso_local global %struct.job* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.job*)* @deljob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @deljob(%struct.job* %0) #0 {
  %2 = alloca %struct.job*, align 8
  %3 = alloca %struct.job*, align 8
  %4 = alloca %struct.job*, align 8
  store %struct.job* %0, %struct.job** %2, align 8
  store %struct.job* null, %struct.job** %4, align 8
  %5 = load %struct.job*, %struct.job** @jobmru, align 8
  store %struct.job* %5, %struct.job** %3, align 8
  br label %6

6:                                                ; preds = %28, %1
  %7 = load %struct.job*, %struct.job** %3, align 8
  %8 = icmp ne %struct.job* %7, null
  br i1 %8, label %9, label %33

9:                                                ; preds = %6
  %10 = load %struct.job*, %struct.job** %3, align 8
  %11 = load %struct.job*, %struct.job** %2, align 8
  %12 = icmp eq %struct.job* %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %9
  %14 = load %struct.job*, %struct.job** %4, align 8
  %15 = icmp ne %struct.job* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %13
  %17 = load %struct.job*, %struct.job** %3, align 8
  %18 = getelementptr inbounds %struct.job, %struct.job* %17, i32 0, i32 0
  %19 = load %struct.job*, %struct.job** %18, align 8
  %20 = load %struct.job*, %struct.job** %4, align 8
  %21 = getelementptr inbounds %struct.job, %struct.job* %20, i32 0, i32 0
  store %struct.job* %19, %struct.job** %21, align 8
  br label %26

22:                                               ; preds = %13
  %23 = load %struct.job*, %struct.job** %3, align 8
  %24 = getelementptr inbounds %struct.job, %struct.job* %23, i32 0, i32 0
  %25 = load %struct.job*, %struct.job** %24, align 8
  store %struct.job* %25, %struct.job** @jobmru, align 8
  br label %26

26:                                               ; preds = %22, %16
  br label %33

27:                                               ; preds = %9
  br label %28

28:                                               ; preds = %27
  %29 = load %struct.job*, %struct.job** %3, align 8
  store %struct.job* %29, %struct.job** %4, align 8
  %30 = load %struct.job*, %struct.job** %3, align 8
  %31 = getelementptr inbounds %struct.job, %struct.job* %30, i32 0, i32 0
  %32 = load %struct.job*, %struct.job** %31, align 8
  store %struct.job* %32, %struct.job** %3, align 8
  br label %6

33:                                               ; preds = %26, %6
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
