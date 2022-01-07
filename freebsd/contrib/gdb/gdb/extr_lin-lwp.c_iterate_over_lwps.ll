; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_iterate_over_lwps.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gdb/gdb/extr_lin-lwp.c_iterate_over_lwps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lwp_info = type { %struct.lwp_info* }

@lwp_list = common dso_local global %struct.lwp_info* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.lwp_info* @iterate_over_lwps(i32 (%struct.lwp_info*, i8*)* %0, i8* %1) #0 {
  %3 = alloca %struct.lwp_info*, align 8
  %4 = alloca i32 (%struct.lwp_info*, i8*)*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.lwp_info*, align 8
  %7 = alloca %struct.lwp_info*, align 8
  store i32 (%struct.lwp_info*, i8*)* %0, i32 (%struct.lwp_info*, i8*)** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.lwp_info*, %struct.lwp_info** @lwp_list, align 8
  store %struct.lwp_info* %8, %struct.lwp_info** %6, align 8
  br label %9

9:                                                ; preds = %24, %2
  %10 = load %struct.lwp_info*, %struct.lwp_info** %6, align 8
  %11 = icmp ne %struct.lwp_info* %10, null
  br i1 %11, label %12, label %26

12:                                               ; preds = %9
  %13 = load %struct.lwp_info*, %struct.lwp_info** %6, align 8
  %14 = getelementptr inbounds %struct.lwp_info, %struct.lwp_info* %13, i32 0, i32 0
  %15 = load %struct.lwp_info*, %struct.lwp_info** %14, align 8
  store %struct.lwp_info* %15, %struct.lwp_info** %7, align 8
  %16 = load i32 (%struct.lwp_info*, i8*)*, i32 (%struct.lwp_info*, i8*)** %4, align 8
  %17 = load %struct.lwp_info*, %struct.lwp_info** %6, align 8
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 %16(%struct.lwp_info* %17, i8* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %12
  %22 = load %struct.lwp_info*, %struct.lwp_info** %6, align 8
  store %struct.lwp_info* %22, %struct.lwp_info** %3, align 8
  br label %27

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.lwp_info*, %struct.lwp_info** %7, align 8
  store %struct.lwp_info* %25, %struct.lwp_info** %6, align 8
  br label %9

26:                                               ; preds = %9
  store %struct.lwp_info* null, %struct.lwp_info** %3, align 8
  br label %27

27:                                               ; preds = %26, %21
  %28 = load %struct.lwp_info*, %struct.lwp_info** %3, align 8
  ret %struct.lwp_info* %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
