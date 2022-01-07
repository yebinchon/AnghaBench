; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_parent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { %struct.ctl_table* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table* (%struct.ctl_table*, i32)* @sysctl_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table* @sysctl_parent(%struct.ctl_table* %0, i32 %1) #0 {
  %3 = alloca %struct.ctl_table*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ctl_table* %0, %struct.ctl_table** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %19, %2
  %7 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %8 = icmp ne %struct.ctl_table* %7, null
  br i1 %8, label %9, label %13

9:                                                ; preds = %6
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* %4, align 4
  %12 = icmp slt i32 %10, %11
  br label %13

13:                                               ; preds = %9, %6
  %14 = phi i1 [ false, %6 ], [ %12, %9 ]
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  %17 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %16, i32 0, i32 0
  %18 = load %struct.ctl_table*, %struct.ctl_table** %17, align 8
  store %struct.ctl_table* %18, %struct.ctl_table** %3, align 8
  br label %19

19:                                               ; preds = %15
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %5, align 4
  br label %6

22:                                               ; preds = %13
  %23 = load %struct.ctl_table*, %struct.ctl_table** %3, align 8
  ret %struct.ctl_table* %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
