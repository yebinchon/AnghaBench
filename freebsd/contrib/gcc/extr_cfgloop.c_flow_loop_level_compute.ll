; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_level_compute.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_cfgloop.c_flow_loop_level_compute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop = type { i32, %struct.loop*, %struct.loop* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop*)* @flow_loop_level_compute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_loop_level_compute(%struct.loop* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.loop*, align 8
  %4 = alloca %struct.loop*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.loop* %0, %struct.loop** %3, align 8
  store i32 1, i32* %5, align 4
  %7 = load %struct.loop*, %struct.loop** %3, align 8
  %8 = icmp ne %struct.loop* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load %struct.loop*, %struct.loop** %3, align 8
  %12 = getelementptr inbounds %struct.loop, %struct.loop* %11, i32 0, i32 2
  %13 = load %struct.loop*, %struct.loop** %12, align 8
  store %struct.loop* %13, %struct.loop** %4, align 8
  br label %14

14:                                               ; preds = %27, %10
  %15 = load %struct.loop*, %struct.loop** %4, align 8
  %16 = icmp ne %struct.loop* %15, null
  br i1 %16, label %17, label %31

17:                                               ; preds = %14
  %18 = load %struct.loop*, %struct.loop** %4, align 8
  %19 = call i32 @flow_loop_level_compute(%struct.loop* %18)
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %24, %17
  br label %27

27:                                               ; preds = %26
  %28 = load %struct.loop*, %struct.loop** %4, align 8
  %29 = getelementptr inbounds %struct.loop, %struct.loop* %28, i32 0, i32 1
  %30 = load %struct.loop*, %struct.loop** %29, align 8
  store %struct.loop* %30, %struct.loop** %4, align 8
  br label %14

31:                                               ; preds = %14
  %32 = load i32, i32* %5, align 4
  %33 = load %struct.loop*, %struct.loop** %3, align 8
  %34 = getelementptr inbounds %struct.loop, %struct.loop* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %31, %9
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
