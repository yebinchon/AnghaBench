; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_free_prealloc_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_bitmap.c_reiserfs_free_prealloc_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [52 x i8] c"vs-4060: trying to free block on nonexistent device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.inode*, i32)* @reiserfs_free_prealloc_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reiserfs_free_prealloc_block(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca %struct.reiserfs_transaction_handle*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %4, align 8
  store %struct.inode* %1, %struct.inode** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %8 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  %11 = xor i1 %10, true
  %12 = zext i1 %11 to i32
  %13 = call i32 @BUG_ON(i32 %12)
  %14 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %15 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @RFALSE(i32 %19, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %22 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @is_reusable(i32 %23, i32 %24, i32 1)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  br label %33

28:                                               ; preds = %3
  %29 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %4, align 8
  %30 = load %struct.inode*, %struct.inode** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @_reiserfs_free_block(%struct.reiserfs_transaction_handle* %29, %struct.inode* %30, i32 %31, i32 1)
  br label %33

33:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @RFALSE(i32, i8*) #1

declare dso_local i32 @is_reusable(i32, i32, i32) #1

declare dso_local i32 @_reiserfs_free_block(%struct.reiserfs_transaction_handle*, %struct.inode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
