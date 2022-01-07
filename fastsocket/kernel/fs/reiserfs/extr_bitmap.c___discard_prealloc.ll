; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c___discard_prealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c___discard_prealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.reiserfs_inode_info = type { i64, i64, i32, %struct.inode }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.reiserfs_inode_info*)* @__discard_prealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__discard_prealloc(%struct.reiserfs_transaction_handle* %0, %struct.reiserfs_inode_info* %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.reiserfs_inode_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store %struct.reiserfs_inode_info* %1, %struct.reiserfs_inode_info** %4, align 8
  %8 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %9 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  store i64 %10, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %12 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %11, i32 0, i32 3
  store %struct.inode* %12, %struct.inode** %7, align 8
  %13 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %14 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  br label %20

20:                                               ; preds = %25, %2
  %21 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %22 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %20
  %26 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %27 = load %struct.inode*, %struct.inode** %7, align 8
  %28 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %29 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @reiserfs_free_prealloc_block(%struct.reiserfs_transaction_handle* %26, %struct.inode* %27, i64 %30)
  %32 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %33 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %33, align 8
  %36 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %37 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, -1
  store i64 %39, i64* %37, align 8
  store i32 1, i32* %6, align 4
  br label %20

40:                                               ; preds = %20
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %45 = load %struct.inode*, %struct.inode** %7, align 8
  %46 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %44, %struct.inode* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %50 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  %51 = load %struct.reiserfs_inode_info*, %struct.reiserfs_inode_info** %4, align 8
  %52 = getelementptr inbounds %struct.reiserfs_inode_info, %struct.reiserfs_inode_info* %51, i32 0, i32 2
  %53 = call i32 @list_del_init(i32* %52)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_free_prealloc_block(%struct.reiserfs_transaction_handle*, %struct.inode*, i64) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

declare dso_local i32 @list_del_init(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
