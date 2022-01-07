; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_namei.c_reiserfs_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__, %struct.inode* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.reiserfs_transaction_handle = type { i32 }

@JOURNAL_PER_BALANCE_CNT = common dso_local global i32 0, align 4
@REISERFS_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@CURRENT_TIME_SEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, %struct.inode*, %struct.dentry*)* @reiserfs_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reiserfs_link(%struct.dentry* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.reiserfs_transaction_handle, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 1
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %9, align 8
  %16 = load i32, i32* @JOURNAL_PER_BALANCE_CNT, align 4
  %17 = mul nsw i32 %16, 3
  %18 = load %struct.inode*, %struct.inode** %6, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32 %20)
  %22 = mul nsw i32 2, %21
  %23 = add nsw i32 %17, %22
  store i32 %23, i32* %11, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reiserfs_write_lock(i32 %26)
  %28 = load %struct.inode*, %struct.inode** %9, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @REISERFS_LINK_MAX, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %40

33:                                               ; preds = %3
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @reiserfs_write_unlock(i32 %36)
  %38 = load i32, i32* @EMLINK, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %134

40:                                               ; preds = %3
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %40
  %46 = load %struct.inode*, %struct.inode** %6, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @reiserfs_write_unlock(i32 %48)
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %134

52:                                               ; preds = %40
  %53 = load %struct.inode*, %struct.inode** %9, align 8
  %54 = call i32 @inc_nlink(%struct.inode* %53)
  %55 = load %struct.inode*, %struct.inode** %6, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %10, i32 %57, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %52
  %63 = load %struct.inode*, %struct.inode** %9, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, -1
  store i64 %66, i64* %64, align 8
  %67 = load %struct.inode*, %struct.inode** %6, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @reiserfs_write_unlock(i32 %69)
  %71 = load i32, i32* %8, align 4
  store i32 %71, i32* %4, align 4
  br label %134

72:                                               ; preds = %52
  %73 = load %struct.inode*, %struct.inode** %6, align 8
  %74 = load %struct.dentry*, %struct.dentry** %7, align 8
  %75 = getelementptr inbounds %struct.dentry, %struct.dentry* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = call i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle* %10, %struct.inode* %73, i32 %77, i32 %81, %struct.inode* %82, i32 1)
  store i32 %83, i32* %8, align 4
  %84 = load %struct.inode*, %struct.inode** %9, align 8
  %85 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %84)
  %86 = load %struct.inode*, %struct.inode** %6, align 8
  %87 = call i32 @reiserfs_update_inode_transaction(%struct.inode* %86)
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %112

90:                                               ; preds = %72
  %91 = load %struct.inode*, %struct.inode** %9, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, -1
  store i64 %94, i64* %92, align 8
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = getelementptr inbounds %struct.inode, %struct.inode* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %97, i32 %98)
  store i32 %99, i32* %12, align 4
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @reiserfs_write_unlock(i32 %102)
  %104 = load i32, i32* %12, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %90
  %107 = load i32, i32* %12, align 4
  br label %110

108:                                              ; preds = %90
  %109 = load i32, i32* %8, align 4
  br label %110

110:                                              ; preds = %108, %106
  %111 = phi i32 [ %107, %106 ], [ %109, %108 ]
  store i32 %111, i32* %4, align 4
  br label %134

112:                                              ; preds = %72
  %113 = load i32, i32* @CURRENT_TIME_SEC, align 4
  %114 = load %struct.inode*, %struct.inode** %9, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 3
  store i32 %113, i32* %115, align 8
  %116 = load %struct.inode*, %struct.inode** %9, align 8
  %117 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %10, %struct.inode* %116)
  %118 = load %struct.inode*, %struct.inode** %9, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  %120 = call i32 @atomic_inc(i32* %119)
  %121 = load %struct.dentry*, %struct.dentry** %7, align 8
  %122 = load %struct.inode*, %struct.inode** %9, align 8
  %123 = call i32 @d_instantiate(%struct.dentry* %121, %struct.inode* %122)
  %124 = load %struct.inode*, %struct.inode** %6, align 8
  %125 = getelementptr inbounds %struct.inode, %struct.inode* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %10, i32 %126, i32 %127)
  store i32 %128, i32* %8, align 4
  %129 = load %struct.inode*, %struct.inode** %6, align 8
  %130 = getelementptr inbounds %struct.inode, %struct.inode* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 @reiserfs_write_unlock(i32 %131)
  %133 = load i32, i32* %8, align 4
  store i32 %133, i32* %4, align 4
  br label %134

134:                                              ; preds = %112, %110, %62, %45, %33
  %135 = load i32, i32* %4, align 4
  ret i32 %135
}

declare dso_local i32 @REISERFS_QUOTA_TRANS_BLOCKS(i32) #1

declare dso_local i32 @reiserfs_write_lock(i32) #1

declare dso_local i32 @reiserfs_write_unlock(i32) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_add_entry(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_inode_transaction(%struct.inode*) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*, i32, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
