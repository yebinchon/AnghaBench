; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_new_index.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/devpts/extr_inode.c_devpts_new_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.pts_fs_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@allocated_ptys_lock = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@pty_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @devpts_new_index(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.pts_fs_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = call %struct.super_block* @pts_sb_from_inode(%struct.inode* %8)
  store %struct.super_block* %9, %struct.super_block** %4, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block* %10)
  store %struct.pts_fs_info* %11, %struct.pts_fs_info** %5, align 8
  br label %12

12:                                               ; preds = %34, %1
  %13 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %14 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @ida_pre_get(i32* %14, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %53

21:                                               ; preds = %12
  %22 = call i32 @mutex_lock(i32* @allocated_ptys_lock)
  %23 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %24 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %23, i32 0, i32 0
  %25 = call i32 @ida_get_new(i32* %24, i32* %6)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %21
  %29 = call i32 @mutex_unlock(i32* @allocated_ptys_lock)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @EAGAIN, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp eq i32 %30, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %12

35:                                               ; preds = %28
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %53

38:                                               ; preds = %21
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @pty_limit, align 4
  %41 = icmp sge i32 %39, %40
  br i1 %41, label %42, label %50

42:                                               ; preds = %38
  %43 = load %struct.pts_fs_info*, %struct.pts_fs_info** %5, align 8
  %44 = getelementptr inbounds %struct.pts_fs_info, %struct.pts_fs_info* %43, i32 0, i32 0
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @ida_remove(i32* %44, i32 %45)
  %47 = call i32 @mutex_unlock(i32* @allocated_ptys_lock)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %53

50:                                               ; preds = %38
  %51 = call i32 @mutex_unlock(i32* @allocated_ptys_lock)
  %52 = load i32, i32* %6, align 4
  store i32 %52, i32* %2, align 4
  br label %53

53:                                               ; preds = %50, %42, %35, %18
  %54 = load i32, i32* %2, align 4
  ret i32 %54
}

declare dso_local %struct.super_block* @pts_sb_from_inode(%struct.inode*) #1

declare dso_local %struct.pts_fs_info* @DEVPTS_SB(%struct.super_block*) #1

declare dso_local i32 @ida_pre_get(i32*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ida_get_new(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ida_remove(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
