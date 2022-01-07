; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c___writeback_inodes_sb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_fs-writeback.c___writeback_inodes_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.bdi_writeback = type { i32 }
%struct.writeback_control = type { i32, i32 }

@inode_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.bdi_writeback*, %struct.writeback_control*)* @__writeback_inodes_sb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__writeback_inodes_sb(%struct.super_block* %0, %struct.bdi_writeback* %1, %struct.writeback_control* %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.bdi_writeback*, align 8
  %6 = alloca %struct.writeback_control*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.bdi_writeback* %1, %struct.bdi_writeback** %5, align 8
  store %struct.writeback_control* %2, %struct.writeback_control** %6, align 8
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = getelementptr inbounds %struct.super_block, %struct.super_block* %7, i32 0, i32 0
  %9 = call i32 @rwsem_is_locked(i32* %8)
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = call i32 @spin_lock(i32* @inode_lock)
  %15 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %16 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %21 = getelementptr inbounds %struct.bdi_writeback, %struct.bdi_writeback* %20, i32 0, i32 0
  %22 = call i64 @list_empty(i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %19, %3
  %25 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %26 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %27 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @queue_io(%struct.bdi_writeback* %25, i32 %28)
  br label %30

30:                                               ; preds = %24, %19
  %31 = load %struct.super_block*, %struct.super_block** %4, align 8
  %32 = load %struct.bdi_writeback*, %struct.bdi_writeback** %5, align 8
  %33 = load %struct.writeback_control*, %struct.writeback_control** %6, align 8
  %34 = call i32 @writeback_sb_inodes(%struct.super_block* %31, %struct.bdi_writeback* %32, %struct.writeback_control* %33, i32 1)
  %35 = call i32 @spin_unlock(i32* @inode_lock)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rwsem_is_locked(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @queue_io(%struct.bdi_writeback*, i32) #1

declare dso_local i32 @writeback_sb_inodes(%struct.super_block*, %struct.bdi_writeback*, %struct.writeback_control*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
