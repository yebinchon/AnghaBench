; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_dirty_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_super.c_reiserfs_dirty_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"clm-6006\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"writing inode %lu on readonly FS\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @reiserfs_dirty_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_dirty_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.reiserfs_transaction_handle, align 4
  %4 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.inode*, %struct.inode** %2, align 8
  %6 = getelementptr inbounds %struct.inode, %struct.inode* %5, i32 0, i32 0
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MS_RDONLY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @reiserfs_warning(%struct.TYPE_6__* %16, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %19)
  br label %48

21:                                               ; preds = %1
  %22 = load %struct.inode*, %struct.inode** %2, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %24)
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %3, %struct.TYPE_6__* %28, i32 1)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %35)
  br label %48

37:                                               ; preds = %21
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %3, %struct.inode* %38)
  %40 = load %struct.inode*, %struct.inode** %2, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %3, %struct.TYPE_6__* %42, i32 1)
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %46)
  br label %48

48:                                               ; preds = %37, %32, %13
  ret void
}

declare dso_local i32 @reiserfs_warning(%struct.TYPE_6__*, i8*, i8*, i32) #1

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
