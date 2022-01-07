; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_insert_item.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/reiserfs/extr_stree.c_reiserfs_insert_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_transaction_handle = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.treepath = type { i32 }
%struct.cpu_key = type { i32 }
%struct.item_head = type { i32 }
%struct.inode = type { i32, %struct.TYPE_8__*, i32 }
%struct.tree_balance = type { i32 }

@UNFM_P_SIZE = common dso_local global i32 0, align 4
@EDQUOT = common dso_local global i32 0, align 4
@IH_SIZE = common dso_local global i64 0, align 8
@M_INSERT = common dso_local global i32 0, align 4
@REPEAT_SEARCH = common dso_local global i32 0, align 4
@insert_item_restarted = common dso_local global i32 0, align 4
@IO_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ITEM_FOUND = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"PAP-5760\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"key %K already exists in the tree\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@CARRY_ON = common dso_local global i32 0, align 4
@NO_DISK_SPACE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@REISERFS_DEBUG_CODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @reiserfs_insert_item(%struct.reiserfs_transaction_handle* %0, %struct.treepath* %1, %struct.cpu_key* %2, %struct.item_head* %3, %struct.inode* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_transaction_handle*, align 8
  %9 = alloca %struct.treepath*, align 8
  %10 = alloca %struct.cpu_key*, align 8
  %11 = alloca %struct.item_head*, align 8
  %12 = alloca %struct.inode*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.tree_balance, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.reiserfs_transaction_handle* %0, %struct.reiserfs_transaction_handle** %8, align 8
  store %struct.treepath* %1, %struct.treepath** %9, align 8
  store %struct.cpu_key* %2, %struct.cpu_key** %10, align 8
  store %struct.item_head* %3, %struct.item_head** %11, align 8
  store %struct.inode* %4, %struct.inode** %12, align 8
  store i8* %5, i8** %13, align 8
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %19 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.inode*, %struct.inode** %12, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %27, label %62

27:                                               ; preds = %6
  %28 = load %struct.inode*, %struct.inode** %12, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = call i32 @get_generation(%struct.TYPE_8__* %30)
  store i32 %31, i32* %16, align 4
  %32 = load %struct.item_head*, %struct.item_head** %11, align 8
  %33 = call i32 @ih_item_len(%struct.item_head* %32)
  store i32 %33, i32* %17, align 4
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @S_ISLNK(i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %51, label %39

39:                                               ; preds = %27
  %40 = load %struct.item_head*, %struct.item_head** %11, align 8
  %41 = call i64 @is_direct_le_ih(%struct.item_head* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load %struct.inode*, %struct.inode** %12, align 8
  %45 = getelementptr inbounds %struct.inode, %struct.inode* %44, i32 0, i32 1
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @UNFM_P_SIZE, align 4
  %50 = add nsw i32 %48, %49
  store i32 %50, i32* %17, align 4
  br label %51

51:                                               ; preds = %43, %39, %27
  %52 = load %struct.inode*, %struct.inode** %12, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i64 @vfs_dq_alloc_space_nodirty(%struct.inode* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.treepath*, %struct.treepath** %9, align 8
  %58 = call i32 @pathrelse(%struct.treepath* %57)
  %59 = load i32, i32* @EDQUOT, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %155

61:                                               ; preds = %51
  br label %62

62:                                               ; preds = %61, %6
  %63 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %64 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %65 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load %struct.treepath*, %struct.treepath** %9, align 8
  %68 = load i64, i64* @IH_SIZE, align 8
  %69 = load %struct.item_head*, %struct.item_head** %11, align 8
  %70 = call i32 @ih_item_len(%struct.item_head* %69)
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %68, %71
  %73 = call i32 @init_tb_struct(%struct.reiserfs_transaction_handle* %63, %struct.tree_balance* %14, %struct.TYPE_8__* %66, %struct.treepath* %67, i64 %72)
  %74 = load %struct.inode*, %struct.inode** %12, align 8
  %75 = icmp ne %struct.inode* %74, null
  br i1 %75, label %76, label %84

76:                                               ; preds = %62
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.inode*, %struct.inode** %12, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = call i64 @fs_changed(i32 %77, %struct.TYPE_8__* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %76
  br label %93

84:                                               ; preds = %76, %62
  br label %85

85:                                               ; preds = %123, %84
  %86 = load i32, i32* @M_INSERT, align 4
  %87 = load %struct.item_head*, %struct.item_head** %11, align 8
  %88 = load i8*, i8** %13, align 8
  %89 = call i32 @fix_nodes(i32 %86, %struct.tree_balance* %14, %struct.item_head* %87, i8* %88)
  store i32 %89, i32* %15, align 4
  %90 = load i32, i32* @REPEAT_SEARCH, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %124

92:                                               ; preds = %85
  br label %93

93:                                               ; preds = %92, %83
  %94 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %95 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = load i32, i32* @insert_item_restarted, align 4
  %98 = call i32 @PROC_INFO_INC(%struct.TYPE_8__* %96, i32 %97)
  %99 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %100 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %99, i32 0, i32 0
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %103 = load %struct.treepath*, %struct.treepath** %9, align 8
  %104 = call i32 @search_item(%struct.TYPE_8__* %101, %struct.cpu_key* %102, %struct.treepath* %103)
  store i32 %104, i32* %15, align 4
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* @IO_ERROR, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %93
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %15, align 4
  br label %145

111:                                              ; preds = %93
  %112 = load i32, i32* %15, align 4
  %113 = load i32, i32* @ITEM_FOUND, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %123

115:                                              ; preds = %111
  %116 = load %struct.reiserfs_transaction_handle*, %struct.reiserfs_transaction_handle** %8, align 8
  %117 = getelementptr inbounds %struct.reiserfs_transaction_handle, %struct.reiserfs_transaction_handle* %116, i32 0, i32 0
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = load %struct.cpu_key*, %struct.cpu_key** %10, align 8
  %120 = call i32 @reiserfs_warning(%struct.TYPE_8__* %118, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.cpu_key* %119)
  %121 = load i32, i32* @EEXIST, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %15, align 4
  br label %145

123:                                              ; preds = %111
  br label %85

124:                                              ; preds = %85
  %125 = load i32, i32* %15, align 4
  %126 = load i32, i32* @CARRY_ON, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %133

128:                                              ; preds = %124
  %129 = load %struct.item_head*, %struct.item_head** %11, align 8
  %130 = load i8*, i8** %13, align 8
  %131 = load i32, i32* @M_INSERT, align 4
  %132 = call i32 @do_balance(%struct.tree_balance* %14, %struct.item_head* %129, i8* %130, i32 %131)
  store i32 0, i32* %7, align 4
  br label %155

133:                                              ; preds = %124
  %134 = load i32, i32* %15, align 4
  %135 = load i32, i32* @NO_DISK_SPACE, align 4
  %136 = icmp eq i32 %134, %135
  br i1 %136, label %137, label %140

137:                                              ; preds = %133
  %138 = load i32, i32* @ENOSPC, align 4
  %139 = sub nsw i32 0, %138
  br label %143

140:                                              ; preds = %133
  %141 = load i32, i32* @EIO, align 4
  %142 = sub nsw i32 0, %141
  br label %143

143:                                              ; preds = %140, %137
  %144 = phi i32 [ %139, %137 ], [ %142, %140 ]
  store i32 %144, i32* %15, align 4
  br label %145

145:                                              ; preds = %143, %115, %108
  %146 = call i32 @unfix_nodes(%struct.tree_balance* %14)
  %147 = load %struct.inode*, %struct.inode** %12, align 8
  %148 = icmp ne %struct.inode* %147, null
  br i1 %148, label %149, label %153

149:                                              ; preds = %145
  %150 = load %struct.inode*, %struct.inode** %12, align 8
  %151 = load i32, i32* %17, align 4
  %152 = call i32 @vfs_dq_free_space_nodirty(%struct.inode* %150, i32 %151)
  br label %153

153:                                              ; preds = %149, %145
  %154 = load i32, i32* %15, align 4
  store i32 %154, i32* %7, align 4
  br label %155

155:                                              ; preds = %153, %128, %56
  %156 = load i32, i32* %7, align 4
  ret i32 %156
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @get_generation(%struct.TYPE_8__*) #1

declare dso_local i32 @ih_item_len(%struct.item_head*) #1

declare dso_local i32 @S_ISLNK(i32) #1

declare dso_local i64 @is_direct_le_ih(%struct.item_head*) #1

declare dso_local i64 @vfs_dq_alloc_space_nodirty(%struct.inode*, i32) #1

declare dso_local i32 @pathrelse(%struct.treepath*) #1

declare dso_local i32 @init_tb_struct(%struct.reiserfs_transaction_handle*, %struct.tree_balance*, %struct.TYPE_8__*, %struct.treepath*, i64) #1

declare dso_local i64 @fs_changed(i32, %struct.TYPE_8__*) #1

declare dso_local i32 @fix_nodes(i32, %struct.tree_balance*, %struct.item_head*, i8*) #1

declare dso_local i32 @PROC_INFO_INC(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @search_item(%struct.TYPE_8__*, %struct.cpu_key*, %struct.treepath*) #1

declare dso_local i32 @reiserfs_warning(%struct.TYPE_8__*, i8*, i8*, %struct.cpu_key*) #1

declare dso_local i32 @do_balance(%struct.tree_balance*, %struct.item_head*, i8*, i32) #1

declare dso_local i32 @unfix_nodes(%struct.tree_balance*) #1

declare dso_local i32 @vfs_dq_free_space_nodirty(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
