; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_kill_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_kill_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.pts_fs_info = type { i32 }

@allocated_ptys_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @devpts_kill_index(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.pts_fs_info*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.super_block* @pts_sb_from_inode(%struct.inode* %7)
  store %struct.super_block* %8, %struct.super_block** %5, align 8
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* %9)
  store %struct.pts_fs_info* %10, %struct.pts_fs_info** %6, align 8
  %11 = call i32 @mutex_lock(i32* @allocated_ptys_lock)
  %12 = load %struct.pts_fs_info*, %struct.pts_fs_info** %6, align 8
  %13 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @ida_remove(i32* %13, i32 %14)
  %16 = call i32 @mutex_unlock(i32* @allocated_ptys_lock)
  ret void
}

declare dso_local %struct.super_block* @pts_sb_from_inode(%struct.inode*) #1

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
