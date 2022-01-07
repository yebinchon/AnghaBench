; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_paste_into_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_paste_into_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { i32, i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.inode = type { i32, i32 }
%struct.tree_balance = type { i32 }

@EDQUOT = common dso_local global i32 0, align 4
@M_PASTE = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@paste_into_item_restarted = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@POSITION_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PAP-5710\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"entry or pasted byte (%K) exists\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_paste_into_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.inode* %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.tree_balance, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.inode* %3, %struct.inode** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %18 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  %23 = call i32 @BUG_ON(i32 %22)
  %24 = load %struct.inode*, %struct.inode** %11, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @get_generation(i32 %26)
  store i32 %27, i32* %16, align 4
  %28 = load %struct.inode*, %struct.inode** %11, align 8
  %29 = load i32, i32* %13, align 4
  %30 = call i64 @vfs_dq_alloc_space_nodirty(%struct.inode* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %6
  %33 = load %struct.treepath*, %struct.treepath** %9, align 8
  %34 = call i32 @pathrelse(%struct.treepath* %33)
  %35 = load i32, i32* @EDQUOT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %7, align 4
  br label %117

37:                                               ; preds = %6
  %38 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %39 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %40 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.treepath*, %struct.treepath** %9, align 8
  %43 = load i32, i32* %13, align 4
  %44 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %38, %struct.tree_balance* %14, i32 %41, %struct.treepath* %42, i32 %43)
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.inode*, %struct.inode** %11, align 8
  %47 = getelementptr inbounds %struct.inode, %struct.inode* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @fs_changed(i32 %45, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %60

52:                                               ; preds = %37
  br label %53

53:                                               ; preds = %90, %52
  %54 = load i32, i32* @M_PASTE, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = call i32 @fix_nodes(i32 %54, %struct.tree_balance* %14, i32* null, i8* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* @REPEAT_SEARCH, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %91

59:                                               ; preds = %53
  br label %60

60:                                               ; preds = %59, %51
  %61 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %62 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @paste_into_item_restarted, align 4
  %65 = call i32 @PROC_INFO_INC(i32 %63, i32 %64)
  %66 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %67 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %70 = load %struct.treepath*, %struct.treepath** %9, align 8
  %71 = call i32 @search_for_position_by_key(i32 %68, %struct.cpu_key* %69, %struct.treepath* %70)
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32, i32* @IO_ERROR, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %60
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %15, align 4
  br label %111

78:                                               ; preds = %60
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @POSITION_FOUND, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.inode*, %struct.inode** %11, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %87 = call i32 @reiserfs_warning(i32 %85, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %86)
  %88 = load i32, i32* @EEXIST, align 4
  %89 = sub nsw i32 0, %88
  store i32 %89, i32* %15, align 4
  br label %111

90:                                               ; preds = %78
  br label %53

91:                                               ; preds = %53
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @CARRY_ON, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %91
  %96 = load i8*, i8** %12, align 8
  %97 = load i32, i32* @M_PASTE, align 4
  %98 = call i32 @do_balance(%struct.tree_balance* %14, i32* null, i8* %96, i32 %97)
  store i32 0, i32* %7, align 4
  br label %117

99:                                               ; preds = %91
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @NO_DISK_SPACE, align 4
  %102 = icmp eq i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @ENOSPC, align 4
  %105 = sub nsw i32 0, %104
  br label %109

106:                                              ; preds = %99
  %107 = load i32, i32* @EIO, align 4
  %108 = sub nsw i32 0, %107
  br label %109

109:                                              ; preds = %106, %103
  %110 = phi i32 [ %105, %103 ], [ %108, %106 ]
  store i32 %110, i32* %15, align 4
  br label %111

111:                                              ; preds = %109, %82, %75
  %112 = call i32 @unfix_nodes(%struct.tree_balance* %14)
  %113 = load %struct.inode*, %struct.inode** %11, align 8
  %114 = load i32, i32* %13, align 4
  %115 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %113, i32 %114)
  %116 = load i32, i32* %15, align 4
  store i32 %116, i32* %7, align 4
  br label %117

117:                                              ; preds = %111, %95, %32
  %118 = load i32, i32* %7, align 4
  ret i32 %118
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_generation(i32) #1

declare dso_local i64 @vfs_dq_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, i32, %struct.treepath*, i32) #1

declare dso_local i64 @fs_changed(i32, i32) #1

declare dso_local i32 @fix_nodes(i32, %struct.tree_balance*, i32*, i8*) #1

declare dso_local i32 @PROC_INFO_INC(i32, i32) #1

declare dso_local i32 @search_for_position_by_key(i32, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_warning(i32, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, i32*, i8*, i32) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
