; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_servers_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/afs/extr_proc.c_afs_proc_cell_servers_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.seq_file* }
%struct.seq_file = type { %struct.afs_cell* }
%struct.afs_cell = type { i32 }
%struct.TYPE_2__ = type { %struct.afs_cell* }

@ENOENT = common dso_local global i32 0, align 4
@afs_proc_cell_servers_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @afs_proc_cell_servers_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_proc_cell_servers_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.afs_cell*, align 8
  %7 = alloca %struct.seq_file*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.TYPE_2__* @PDE(%struct.inode* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.afs_cell*, %struct.afs_cell** %11, align 8
  store %struct.afs_cell* %12, %struct.afs_cell** %6, align 8
  %13 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %14 = icmp ne %struct.afs_cell* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %32

18:                                               ; preds = %2
  %19 = load %struct.file*, %struct.file** %5, align 8
  %20 = call i32 @seq_open(%struct.file* %19, i32* @afs_proc_cell_servers_ops)
  store i32 %20, i32* %8, align 4
  %21 = load i32, i32* %8, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %8, align 4
  store i32 %24, i32* %3, align 4
  br label %32

25:                                               ; preds = %18
  %26 = load %struct.file*, %struct.file** %5, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 0
  %28 = load %struct.seq_file*, %struct.seq_file** %27, align 8
  store %struct.seq_file* %28, %struct.seq_file** %7, align 8
  %29 = load %struct.afs_cell*, %struct.afs_cell** %6, align 8
  %30 = load %struct.seq_file*, %struct.seq_file** %7, align 8
  %31 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %30, i32 0, i32 0
  store %struct.afs_cell* %29, %struct.afs_cell** %31, align 8
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %25, %23, %15
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @PDE(%struct.inode*) #1

declare dso_local i32 @seq_open(%struct.file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
