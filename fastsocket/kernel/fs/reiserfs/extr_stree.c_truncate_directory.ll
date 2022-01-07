; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_truncate_directory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_truncate_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32 }
%struct.inode = type { i32, i64 }

@.str = private unnamed_addr constant [8 x i8] c"vs-5655\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"link count != 0\00", align 1
@KEY_FORMAT_3_5 = common dso_local global i32 0, align 4
@DOT_OFFSET = common dso_local global i32 0, align 4
@TYPE_DIRENTRY = common dso_local global i32 0, align 4
@SD_OFFSET = common dso_local global i32 0, align 4
@TYPE_STAT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.reiserfs_transaction_handle*, %struct.inode*)* @truncate_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @truncate_directory(%struct.reiserfs_transaction_handle* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.reiserfs_transaction_handle*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %6 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @reiserfs_error(i32 %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %2
  %22 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %23 = load %struct.inode*, %struct.inode** %4, align 8
  %24 = call i32 @INODE_PKEY(%struct.inode* %23)
  %25 = load i32, i32* @DOT_OFFSET, align 4
  %26 = call i32 @set_le_key_k_offset(i32 %22, i32 %24, i32 %25)
  %27 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = call i32 @INODE_PKEY(%struct.inode* %28)
  %30 = load i32, i32* @TYPE_DIRENTRY, align 4
  %31 = call i32 @set_le_key_k_type(i32 %27, i32 %29, i32 %30)
  %32 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %33 = load %struct.inode*, %struct.inode** %4, align 8
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = call i32 @INODE_PKEY(%struct.inode* %34)
  %36 = call i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle* %32, %struct.inode* %33, i32 %35)
  %37 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %3, align 8
  %38 = load %struct.inode*, %struct.inode** %4, align 8
  %39 = call i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle* %37, %struct.inode* %38)
  %40 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = call i32 @INODE_PKEY(%struct.inode* %41)
  %43 = load i32, i32* @SD_OFFSET, align 4
  %44 = call i32 @set_le_key_k_offset(i32 %40, i32 %42, i32 %43)
  %45 = load i32, i32* @KEY_FORMAT_3_5, align 4
  %46 = load %struct.inode*, %struct.inode** %4, align 8
  %47 = call i32 @INODE_PKEY(%struct.inode* %46)
  %48 = load i32, i32* @TYPE_STAT_DATA, align 4
  %49 = call i32 @set_le_key_k_type(i32 %45, i32 %47, i32 %48)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @reiserfs_error(i32, i8*, i8*) #1

declare dso_local i32 @set_le_key_k_offset(i32, i32, i32) #1

declare dso_local i32 @INODE_PKEY(%struct.inode*) #1

declare dso_local i32 @set_le_key_k_type(i32, i32, i32) #1

declare dso_local i32 @reiserfs_delete_solid_item(%struct.reiserfs_transaction_handle*, %struct.inode*, i32) #1

declare dso_local i32 @reiserfs_update_sd(%struct.reiserfs_transaction_handle*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
