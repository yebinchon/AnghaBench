; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_nommu.c_maps_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/proc/extr_task_nommu.c_maps_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.proc_maps_private* }
%struct.proc_maps_private = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@proc_pid_maps_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @maps_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maps_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.proc_maps_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.seq_file*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.proc_maps_private* @kzalloc(i32 4, i32 %10)
  store %struct.proc_maps_private* %11, %struct.proc_maps_private** %5, align 8
  %12 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %13 = icmp ne %struct.proc_maps_private* %12, null
  br i1 %13, label %14, label %34

14:                                               ; preds = %2
  %15 = load %struct.inode*, %struct.inode** %3, align 8
  %16 = call i32 @proc_pid(%struct.inode* %15)
  %17 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %18 = getelementptr inbounds %struct.proc_maps_private, %struct.proc_maps_private* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.file*, %struct.file** %4, align 8
  %20 = call i32 @seq_open(%struct.file* %19, i32* @proc_pid_maps_ops)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %14
  %24 = load %struct.file*, %struct.file** %4, align 8
  %25 = getelementptr inbounds %struct.file, %struct.file* %24, i32 0, i32 0
  %26 = load %struct.seq_file*, %struct.seq_file** %25, align 8
  store %struct.seq_file* %26, %struct.seq_file** %7, align 8
  %27 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %28 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %29 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %28, i32 0, i32 0
  store %struct.proc_maps_private* %27, %struct.proc_maps_private** %29, align 8
  br label %33

30:                                               ; preds = %14
  %31 = load %struct.proc_maps_private*, %struct.proc_maps_private** %5, align 8
  %32 = call i32 @kfree(%struct.proc_maps_private* %31)
  br label %33

33:                                               ; preds = %30, %23
  br label %34

34:                                               ; preds = %33, %2
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local %struct.proc_maps_private* @kzalloc(i32, i32) #1

declare dso_local i32 @proc_pid(%struct.inode*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

declare dso_local i32 @kfree(%struct.proc_maps_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
