; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_atime.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_dlmglue.c_ocfs2_inode_lock_atime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.vfsmount = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_inode_lock_atime(%struct.inode* %0, %struct.vfsmount* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.vfsmount* %1, %struct.vfsmount** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = call i32 (...) @mlog_entry_void()
  %11 = load %struct.inode*, %struct.inode** %5, align 8
  %12 = call i32 @ocfs2_inode_lock(%struct.inode* %11, %struct.buffer_head** null, i32 0)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mlog_errno(i32 %16)
  %18 = load i32, i32* %8, align 4
  store i32 %18, i32* %4, align 4
  br label %58

19:                                               ; preds = %3
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %22 = call i64 @ocfs2_should_update_atime(%struct.inode* %20, %struct.vfsmount* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %52

24:                                               ; preds = %19
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = call i32 @ocfs2_inode_unlock(%struct.inode* %25, i32 0)
  %27 = load %struct.inode*, %struct.inode** %5, align 8
  %28 = call i32 @ocfs2_inode_lock(%struct.inode* %27, %struct.buffer_head** %9, i32 1)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %24
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mlog_errno(i32 %32)
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %58

35:                                               ; preds = %24
  %36 = load i32*, i32** %7, align 8
  store i32 1, i32* %36, align 4
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %39 = call i64 @ocfs2_should_update_atime(%struct.inode* %37, %struct.vfsmount* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %35
  %42 = load %struct.inode*, %struct.inode** %5, align 8
  %43 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %44 = call i32 @ocfs2_update_inode_atime(%struct.inode* %42, %struct.buffer_head* %43)
  br label %45

45:                                               ; preds = %41, %35
  %46 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %47 = icmp ne %struct.buffer_head* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = call i32 @brelse(%struct.buffer_head* %49)
  br label %51

51:                                               ; preds = %48, %45
  br label %54

52:                                               ; preds = %19
  %53 = load i32*, i32** %7, align 8
  store i32 0, i32* %53, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @mlog_exit(i32 %55)
  %57 = load i32, i32* %8, align 4
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %31, %15
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @mlog_entry_void(...) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_should_update_atime(%struct.inode*, %struct.vfsmount*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_update_inode_atime(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
