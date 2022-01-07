; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_sync_file.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_file.c_reiserfs_sync_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dentry = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dentry*, i32)* @reiserfs_sync_file to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_sync_file(%struct.file* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.dentry*, %struct.dentry** %6, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.inode*, %struct.inode** %12, align 8
  store %struct.inode* %13, %struct.inode** %8, align 8
  %14 = load %struct.inode*, %struct.inode** %8, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @S_ISREG(i32 %16)
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @sync_mapping_buffers(i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load %struct.inode*, %struct.inode** %8, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = call i32 @reiserfs_write_lock(%struct.TYPE_4__* %28)
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i32 @reiserfs_commit_for_inode(%struct.inode* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.inode*, %struct.inode** %8, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = call i32 @reiserfs_write_unlock(%struct.TYPE_4__* %34)
  %36 = load i32, i32* %10, align 4
  %37 = icmp ne i32 %36, 1
  br i1 %37, label %38, label %51

38:                                               ; preds = %3
  %39 = load %struct.inode*, %struct.inode** %8, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = call i64 @reiserfs_barrier_flush(%struct.TYPE_4__* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %38
  %45 = load %struct.inode*, %struct.inode** %8, align 8
  %46 = getelementptr inbounds %struct.inode, %struct.inode* %45, i32 0, i32 0
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @blkdev_issue_flush(i32 %49, i32* null)
  br label %51

51:                                               ; preds = %44, %38, %3
  %52 = load i32, i32* %10, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %4, align 4
  br label %65

56:                                               ; preds = %51
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EIO, align 4
  %61 = sub nsw i32 0, %60
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %63, %54
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @S_ISREG(i32) #1

declare dso_local i32 @sync_mapping_buffers(i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_4__*) #1

declare dso_local i32 @reiserfs_commit_for_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_4__*) #1

declare dso_local i64 @reiserfs_barrier_flush(%struct.TYPE_4__*) #1

declare dso_local i32 @blkdev_issue_flush(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
