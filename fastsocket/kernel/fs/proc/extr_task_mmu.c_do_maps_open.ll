; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_do_maps_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_mmu.c_do_maps_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.proc_maps_private* }
%struct.proc_maps_private = type { i32 }
%struct.seq_operations = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, %struct.seq_operations*)* @do_maps_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_maps_open(%struct.inode* %0, %struct.file* %1, %struct.seq_operations* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.seq_operations*, align 8
  %7 = alloca %struct.proc_maps_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store %struct.seq_operations* %2, %struct.seq_operations** %6, align 8
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.proc_maps_private* @kzalloc(i32 4, i32 %12)
  store %struct.proc_maps_private* %13, %struct.proc_maps_private** %7, align 8
  %14 = load %struct.proc_maps_private*, %struct.proc_maps_private** %7, align 8
  %15 = icmp ne %struct.proc_maps_private* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = call i32 @proc_pid(%struct.inode* %17)
  %19 = load %struct.proc_maps_private*, %struct.proc_maps_private** %7, align 8
  %20 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = load %struct.seq_operations*, %struct.seq_operations** %6, align 8
  %23 = call i32 @seq_open(%struct.file* %21, %struct.seq_operations* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %16
  %27 = load %struct.file*, %struct.file** %5, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  %29 = load %struct.seq_file*, %struct.seq_file** %28, align 8
  store %struct.seq_file* %29, %struct.seq_file** %9, align 8
  %30 = load %struct.proc_maps_private*, %struct.proc_maps_private** %7, align 8
  %31 = load %struct.seq_file*, %struct.seq_file** %9, align 8
  %32 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %31, i32 0, i32 0
  store %struct.proc_maps_private* %30, %struct.proc_maps_private** %32, align 8
  br label %36

33:                                               ; preds = %16
  %34 = load %struct.proc_maps_private*, %struct.proc_maps_private** %7, align 8
  %35 = call i32 @kfree(%struct.proc_maps_private* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %37

37:                                               ; preds = %36, %3
  %38 = load i32, i32* %8, align 4
  ret i32 %38
}

declare dso_local %struct.proc_maps_private* @kzalloc(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i32 @seq_open(%struct.file*, %struct.seq_operations*) #1

declare dso_local i32 @kfree(%struct.proc_maps_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
