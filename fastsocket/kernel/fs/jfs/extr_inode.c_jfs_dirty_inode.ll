; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/jfs/extr_inode.c_jfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }

@jfs_dirty_inode.noisy = internal global i32 5, align 4
@.str = private unnamed_addr constant [43 x i8] c"jfs_dirty_inode called on read-only volume\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Is remount racy?\00", align 1
@COMMIT_Dirty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jfs_dirty_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %3 = load %struct.inode*, %struct.inode** %2, align 8
  %4 = call i64 @isReadOnly(%struct.inode* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %21

6:                                                ; preds = %1
  %7 = load %struct.inode*, %struct.inode** %2, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @special_file(i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %6
  %13 = load i32, i32* @jfs_dirty_inode.noisy, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %12
  %16 = call i32 @jfs_err(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %17 = call i32 @jfs_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @jfs_dirty_inode.noisy, align 4
  %19 = add nsw i32 %18, -1
  store i32 %19, i32* @jfs_dirty_inode.noisy, align 4
  br label %20

20:                                               ; preds = %15, %12, %6
  br label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @COMMIT_Dirty, align 4
  %23 = load %struct.inode*, %struct.inode** %2, align 8
  %24 = call i32 @set_cflag(i32 %22, %struct.inode* %23)
  br label %25

25:                                               ; preds = %21, %20
  ret void
}

declare dso_local i64 @isReadOnly(%struct.inode*) #1

declare dso_local i32 @special_file(i32) #1

declare dso_local i32 @jfs_err(i8*) #1

declare dso_local i32 @set_cflag(i32, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
