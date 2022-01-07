; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_adjust_levels.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/sched/extr_sch_cbq.c_cbq_adjust_levels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cbq_class = type { i32, %struct.cbq_class*, %struct.cbq_class*, %struct.cbq_class* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cbq_class*)* @cbq_adjust_levels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cbq_adjust_levels(%struct.cbq_class* %0) #0 {
  %2 = alloca %struct.cbq_class*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cbq_class*, align 8
  store %struct.cbq_class* %0, %struct.cbq_class** %2, align 8
  %5 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %6 = icmp eq %struct.cbq_class* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %45

8:                                                ; preds = %1
  br label %9

9:                                                ; preds = %40, %8
  store i32 0, i32* %3, align 4
  %10 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %11 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %10, i32 0, i32 1
  %12 = load %struct.cbq_class*, %struct.cbq_class** %11, align 8
  store %struct.cbq_class* %12, %struct.cbq_class** %4, align 8
  %13 = icmp ne %struct.cbq_class* %12, null
  br i1 %13, label %14, label %35

14:                                               ; preds = %9
  br label %15

15:                                               ; preds = %26, %14
  %16 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %17 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %23 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %15
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.cbq_class*, %struct.cbq_class** %4, align 8
  %28 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %27, i32 0, i32 2
  %29 = load %struct.cbq_class*, %struct.cbq_class** %28, align 8
  store %struct.cbq_class* %29, %struct.cbq_class** %4, align 8
  %30 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %31 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %30, i32 0, i32 1
  %32 = load %struct.cbq_class*, %struct.cbq_class** %31, align 8
  %33 = icmp ne %struct.cbq_class* %29, %32
  br i1 %33, label %15, label %34

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %9
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  %38 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %39 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  br label %40

40:                                               ; preds = %35
  %41 = load %struct.cbq_class*, %struct.cbq_class** %2, align 8
  %42 = getelementptr inbounds %struct.cbq_class, %struct.cbq_class* %41, i32 0, i32 3
  %43 = load %struct.cbq_class*, %struct.cbq_class** %42, align 8
  store %struct.cbq_class* %43, %struct.cbq_class** %2, align 8
  %44 = icmp ne %struct.cbq_class* %43, null
  br i1 %44, label %9, label %45

45:                                               ; preds = %7, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
