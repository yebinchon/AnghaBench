; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_write_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.writeback_control = type { i64 }
%struct.reiserfs_transaction_handle = type { i32 }

@MS_RDONLY = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@WB_SYNC_ALL = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_7__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_write_inode(%struct.inode* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.reiserfs_transaction_handle, align 4
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 0
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MS_RDONLY, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @EROFS, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %57

19:                                               ; preds = %2
  %20 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %21 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @WB_SYNC_ALL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %56

25:                                               ; preds = %19
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @PF_MEMALLOC, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %25
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = getelementptr inbounds %struct.inode, %struct.inode* %33, i32 0, i32 0
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = call i32 @reiserfs_write_lock(%struct.TYPE_6__* %35)
  %37 = load %struct.inode*, %struct.inode** %4, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_6__* %39, i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %32
  %44 = load %struct.inode*, %struct.inode** %4, align 8
  %45 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %6, %struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 0
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @journal_end_sync(%struct.reiserfs_transaction_handle* %6, %struct.TYPE_6__* %48, i32 %49)
  br label %51

51:                                               ; preds = %43, %32
  %52 = load %struct.inode*, %struct.inode** %4, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 @reiserfs_write_unlock(%struct.TYPE_6__* %54)
  br label %56

56:                                               ; preds = %51, %25, %19
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %16
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @reiserfs_write_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @journal_end_sync(%struct.reiserfs_transaction_handle*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @reiserfs_write_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
