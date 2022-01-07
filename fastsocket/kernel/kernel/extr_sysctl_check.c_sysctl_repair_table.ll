; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_repair_table.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/kernel/extr_sysctl_check.c_sysctl_repair_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table = type { i64, i64, i64, i64 }

@proc_dointvec = common dso_local global i64 0, align 8
@sysctl_data = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ctl_table*)* @sysctl_repair_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sysctl_repair_table(%struct.ctl_table* %0) #0 {
  %2 = alloca %struct.ctl_table*, align 8
  store %struct.ctl_table* %0, %struct.ctl_table** %2, align 8
  %3 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %4 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %3, i32 0, i32 3
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %9 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %7
  %13 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %14 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @proc_dointvec, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %12
  %19 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %20 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @sysctl_data, align 8
  %25 = load %struct.ctl_table*, %struct.ctl_table** %2, align 8
  %26 = getelementptr inbounds %struct.ctl_table, %struct.ctl_table* %25, i32 0, i32 1
  store i64 %24, i64* %26, align 8
  br label %27

27:                                               ; preds = %23, %18, %12, %7, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
