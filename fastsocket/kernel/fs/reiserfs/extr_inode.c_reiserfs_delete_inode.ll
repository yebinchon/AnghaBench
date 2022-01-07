; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_delete_inode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_inode.c_reiserfs_delete_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.TYPE_2__ = type { i64 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@I_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @reiserfs_delete_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.reiserfs_transaction_handle, align 4
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %2, align 8
  %6 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %7 = mul nsw i32 %6, 2
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @REISERFS_QUOTA_INIT_BLOCKS(i32 %10)
  %12 = mul nsw i32 2, %11
  %13 = add nsw i32 %7, %12
  store i32 %13, i32* %3, align 4
  %14 = load %struct.inode*, %struct.inode** %2, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 3
  %16 = call i32 @truncate_inode_pages(i32* %15, i32 0)
  %17 = load %struct.inode*, %struct.inode** %2, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @reiserfs_write_lock(i32 %19)
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @I_NEW, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %70, label %27

27:                                               ; preds = %1
  %28 = load %struct.inode*, %struct.inode** %2, align 8
  %29 = call %struct.TYPE_2__* @INODE_PKEY(%struct.inode* %28)
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %27
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = call i32 @reiserfs_delete_xattrs(%struct.inode* %34)
  %36 = load %struct.inode*, %struct.inode** %2, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %3, align 4
  %40 = call i64 @journal_begin(%struct.reiserfs_transaction_handle* %4, i32 %38, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %72

43:                                               ; preds = %33
  %44 = load %struct.inode*, %struct.inode** %2, align 8
  %45 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %44)
  %46 = load %struct.inode*, %struct.inode** %2, align 8
  %47 = call i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle* %4, %struct.inode* %46)
  %48 = load %struct.inode*, %struct.inode** %2, align 8
  %49 = call i32 @reiserfs_delete_object(%struct.reiserfs_transaction_handle* %4, %struct.inode* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %43
  %53 = load %struct.inode*, %struct.inode** %2, align 8
  %54 = call i32 @vfs_dq_free_inode(%struct.inode* %53)
  br label %55

55:                                               ; preds = %52, %43
  %56 = load %struct.inode*, %struct.inode** %2, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %3, align 4
  %60 = call i64 @journal_end(%struct.reiserfs_transaction_handle* %4, i32 %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %72

63:                                               ; preds = %55
  %64 = load i32, i32* %5, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63
  br label %72

67:                                               ; preds = %63
  %68 = load %struct.inode*, %struct.inode** %2, align 8
  %69 = call i32 @remove_save_link(%struct.inode* %68, i32 0)
  br label %71

70:                                               ; preds = %27, %1
  br label %71

71:                                               ; preds = %70, %67
  br label %72

72:                                               ; preds = %71, %66, %62, %42
  %73 = load %struct.inode*, %struct.inode** %2, align 8
  %74 = call i32 @clear_inode(%struct.inode* %73)
  %75 = load %struct.inode*, %struct.inode** %2, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  store i64 0, i64* %76, align 8
  %77 = load %struct.inode*, %struct.inode** %2, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @reiserfs_write_unlock(i32 %79)
  ret void
}

declare dso_local i32 @REISERFS_QUOTA_INIT_BLOCKS(i32) #1

declare dso_local i32 @truncate_inode_pages(i32*, i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local %struct.TYPE_2__* @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @reiserfs_delete_xattrs(%struct.inode*) #1

declare dso_local i64 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @reiserfs_discard_prealloc(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @reiserfs_delete_object(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i64 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @remove_save_link(%struct.inode*, i32) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
