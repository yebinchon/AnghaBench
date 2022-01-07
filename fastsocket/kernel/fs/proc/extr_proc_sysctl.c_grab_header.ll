; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_grab_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_proc_sysctl.c_grab_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctl_table_header = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ctl_table_header* (%struct.inode*)* @grab_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ctl_table_header* @grab_header(%struct.inode* %0) #0 {
  %2 = alloca %struct.ctl_table_header*, align 8
  %3 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %4 = load %struct.inode*, %struct.inode** %3, align 8
  %5 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %4)
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call %struct.TYPE_2__* @PROC_I(%struct.inode* %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = call %struct.ctl_table_header* @sysctl_head_grab(i64 %13)
  store %struct.ctl_table_header* %14, %struct.ctl_table_header** %2, align 8
  br label %17

15:                                               ; preds = %1
  %16 = call %struct.ctl_table_header* @sysctl_head_next(i32* null)
  store %struct.ctl_table_header* %16, %struct.ctl_table_header** %2, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load %struct.ctl_table_header*, %struct.ctl_table_header** %2, align 8
  ret %struct.ctl_table_header* %18
}

declare dso_local %struct.TYPE_2__* @PROC_I(%struct.inode*) #1

declare dso_local %struct.ctl_table_header* @sysctl_head_grab(i64) #1

declare dso_local %struct.ctl_table_header* @sysctl_head_next(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
