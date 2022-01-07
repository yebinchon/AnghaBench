; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext4/extr_namei.c_ext4_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_6__*, i32, i32*, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext4_dir_entry_2 = type { i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i32 }

@EMLINK = common dso_local global i32 0, align 4
@EXT4_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@ext4_dir_inode_operations = common dso_local global i32 0, align 4
@ext4_dir_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"call ext4_handle_dirty_metadata\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext4_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ext4_dir_entry_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = call i64 @EXT4_DIR_LINK_MAX(%struct.inode* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %3
  %24 = load i32, i32* @EMLINK, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %215

26:                                               ; preds = %3
  br label %27

27:                                               ; preds = %212, %26
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 2
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = call i64 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_6__* %31)
  %33 = load i64, i64* @EXT4_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %34 = add nsw i64 %32, %33
  %35 = add nsw i64 %34, 3
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = call i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_6__* %38)
  %40 = add nsw i64 %35, %39
  %41 = call %struct.inode* @ext4_journal_start(%struct.inode* %28, i64 %40)
  store %struct.inode* %41, %struct.inode** %8, align 8
  %42 = load %struct.inode*, %struct.inode** %8, align 8
  %43 = call i64 @IS_ERR(%struct.inode* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.inode*, %struct.inode** %8, align 8
  %47 = call i32 @PTR_ERR(%struct.inode* %46)
  store i32 %47, i32* %4, align 4
  br label %215

48:                                               ; preds = %27
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i64 @IS_DIRSYNC(%struct.inode* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %48
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @ext4_handle_sync(%struct.inode* %53)
  br label %55

55:                                               ; preds = %52, %48
  %56 = load %struct.inode*, %struct.inode** %8, align 8
  %57 = load %struct.inode*, %struct.inode** %5, align 8
  %58 = load i32, i32* @S_IFDIR, align 4
  %59 = load i32, i32* %7, align 4
  %60 = or i32 %58, %59
  %61 = load %struct.dentry*, %struct.dentry** %6, align 8
  %62 = getelementptr inbounds %struct.dentry, %struct.dentry* %61, i32 0, i32 0
  %63 = call %struct.inode* @ext4_new_inode(%struct.inode* %56, %struct.inode* %57, i32 %60, i32* %62, i32 0)
  store %struct.inode* %63, %struct.inode** %9, align 8
  %64 = load %struct.inode*, %struct.inode** %9, align 8
  %65 = call i32 @PTR_ERR(%struct.inode* %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.inode*, %struct.inode** %9, align 8
  %67 = call i64 @IS_ERR(%struct.inode* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %55
  br label %199

70:                                               ; preds = %55
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 5
  store i32* @ext4_dir_inode_operations, i32** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %9, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 4
  store i32* @ext4_dir_operations, i32** %74, align 8
  %75 = load %struct.inode*, %struct.inode** %9, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.inode*, %struct.inode** %9, align 8
  %81 = call %struct.TYPE_7__* @EXT4_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  store i32 %79, i32* %82, align 4
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = getelementptr inbounds %struct.inode, %struct.inode* %83, i32 0, i32 0
  store i32 %79, i32* %84, align 8
  %85 = load %struct.inode*, %struct.inode** %8, align 8
  %86 = load %struct.inode*, %struct.inode** %9, align 8
  %87 = call %struct.buffer_head* @ext4_bread(%struct.inode* %85, %struct.inode* %86, i32 0, i32 1, i32* %13)
  store %struct.buffer_head* %87, %struct.buffer_head** %10, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %89 = icmp ne %struct.buffer_head* %88, null
  br i1 %89, label %91, label %90

90:                                               ; preds = %70
  br label %175

91:                                               ; preds = %70
  %92 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %93 = call i32 @BUFFER_TRACE(%struct.buffer_head* %92, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %96 = call i32 @ext4_journal_get_write_access(%struct.inode* %94, %struct.buffer_head* %95)
  %97 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %98 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = inttoptr i64 %99 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %100, %struct.ext4_dir_entry_2** %11, align 8
  %101 = load %struct.inode*, %struct.inode** %9, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %106 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %105, i32 0, i32 3
  store i8* %104, i8** %106, align 8
  %107 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %108 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %107, i32 0, i32 0
  store i32 1, i32* %108, align 8
  %109 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %110 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @EXT4_DIR_REC_LEN(i32 %111)
  %113 = load i32, i32* %12, align 4
  %114 = call i8* @ext4_rec_len_to_disk(i32 %112, i32 %113)
  %115 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %116 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %115, i32 0, i32 2
  store i8* %114, i8** %116, align 8
  %117 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %118 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strcpy(i32 %119, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = getelementptr inbounds %struct.inode, %struct.inode* %121, i32 0, i32 2
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** %122, align 8
  %124 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %125 = load i32, i32* @S_IFDIR, align 4
  %126 = call i32 @ext4_set_de_type(%struct.TYPE_6__* %123, %struct.ext4_dir_entry_2* %124, i32 %125)
  %127 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %128 = load i32, i32* %12, align 4
  %129 = call %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2* %127, i32 %128)
  store %struct.ext4_dir_entry_2* %129, %struct.ext4_dir_entry_2** %11, align 8
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = getelementptr inbounds %struct.inode, %struct.inode* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 8
  %133 = call i8* @cpu_to_le32(i32 %132)
  %134 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %135 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %134, i32 0, i32 3
  store i8* %133, i8** %135, align 8
  %136 = load i32, i32* %12, align 4
  %137 = call i32 @EXT4_DIR_REC_LEN(i32 1)
  %138 = sub i32 %136, %137
  %139 = load i32, i32* %12, align 4
  %140 = call i8* @ext4_rec_len_to_disk(i32 %138, i32 %139)
  %141 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %142 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %141, i32 0, i32 2
  store i8* %140, i8** %142, align 8
  %143 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %144 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %143, i32 0, i32 0
  store i32 2, i32* %144, align 8
  %145 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %146 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @strcpy(i32 %147, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %149 = load %struct.inode*, %struct.inode** %5, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 2
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %11, align 8
  %153 = load i32, i32* @S_IFDIR, align 4
  %154 = call i32 @ext4_set_de_type(%struct.TYPE_6__* %151, %struct.ext4_dir_entry_2* %152, i32 %153)
  %155 = load %struct.inode*, %struct.inode** %9, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 1
  store i32 2, i32* %156, align 4
  %157 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %158 = call i32 @BUFFER_TRACE(%struct.buffer_head* %157, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = load %struct.inode*, %struct.inode** %9, align 8
  %161 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %162 = call i32 @ext4_handle_dirty_metadata(%struct.inode* %159, %struct.inode* %160, %struct.buffer_head* %161)
  %163 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %164 = call i32 @brelse(%struct.buffer_head* %163)
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = load %struct.inode*, %struct.inode** %9, align 8
  %167 = call i32 @ext4_mark_inode_dirty(%struct.inode* %165, %struct.inode* %166)
  %168 = load %struct.inode*, %struct.inode** %8, align 8
  %169 = load %struct.dentry*, %struct.dentry** %6, align 8
  %170 = load %struct.inode*, %struct.inode** %9, align 8
  %171 = call i32 @ext4_add_entry(%struct.inode* %168, %struct.dentry* %169, %struct.inode* %170)
  store i32 %171, i32* %13, align 4
  %172 = load i32, i32* %13, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %185

174:                                              ; preds = %91
  br label %175

175:                                              ; preds = %174, %90
  %176 = load %struct.inode*, %struct.inode** %9, align 8
  %177 = call i32 @clear_nlink(%struct.inode* %176)
  %178 = load %struct.inode*, %struct.inode** %9, align 8
  %179 = call i32 @unlock_new_inode(%struct.inode* %178)
  %180 = load %struct.inode*, %struct.inode** %8, align 8
  %181 = load %struct.inode*, %struct.inode** %9, align 8
  %182 = call i32 @ext4_mark_inode_dirty(%struct.inode* %180, %struct.inode* %181)
  %183 = load %struct.inode*, %struct.inode** %9, align 8
  %184 = call i32 @iput(%struct.inode* %183)
  br label %199

185:                                              ; preds = %91
  %186 = load %struct.inode*, %struct.inode** %8, align 8
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = call i32 @ext4_inc_count(%struct.inode* %186, %struct.inode* %187)
  %189 = load %struct.inode*, %struct.inode** %5, align 8
  %190 = call i32 @ext4_update_dx_flag(%struct.inode* %189)
  %191 = load %struct.inode*, %struct.inode** %8, align 8
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = call i32 @ext4_mark_inode_dirty(%struct.inode* %191, %struct.inode* %192)
  %194 = load %struct.dentry*, %struct.dentry** %6, align 8
  %195 = load %struct.inode*, %struct.inode** %9, align 8
  %196 = call i32 @d_instantiate(%struct.dentry* %194, %struct.inode* %195)
  %197 = load %struct.inode*, %struct.inode** %9, align 8
  %198 = call i32 @unlock_new_inode(%struct.inode* %197)
  br label %199

199:                                              ; preds = %185, %175, %69
  %200 = load %struct.inode*, %struct.inode** %8, align 8
  %201 = call i32 @ext4_journal_stop(%struct.inode* %200)
  %202 = load i32, i32* %13, align 4
  %203 = load i32, i32* @ENOSPC, align 4
  %204 = sub nsw i32 0, %203
  %205 = icmp eq i32 %202, %204
  br i1 %205, label %206, label %213

206:                                              ; preds = %199
  %207 = load %struct.inode*, %struct.inode** %5, align 8
  %208 = getelementptr inbounds %struct.inode, %struct.inode* %207, i32 0, i32 2
  %209 = load %struct.TYPE_6__*, %struct.TYPE_6__** %208, align 8
  %210 = call i64 @ext4_should_retry_alloc(%struct.TYPE_6__* %209, i32* %14)
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %213

212:                                              ; preds = %206
  br label %27

213:                                              ; preds = %206, %199
  %214 = load i32, i32* %13, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %213, %45, %23
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i64 @EXT4_DIR_LINK_MAX(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT4_DATA_TRANS_BLOCKS(%struct.TYPE_6__*) #1

declare dso_local i64 @EXT4_MAXQUOTAS_INIT_BLOCKS(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local i32 @ext4_handle_sync(%struct.inode*) #1

declare dso_local %struct.inode* @ext4_new_inode(%struct.inode*, %struct.inode*, i32, i32*, i32) #1

declare dso_local %struct.TYPE_7__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext4_bread(%struct.inode*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext4_journal_get_write_access(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @ext4_rec_len_to_disk(i32, i32) #1

declare dso_local i32 @EXT4_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ext4_set_de_type(%struct.TYPE_6__*, %struct.ext4_dir_entry_2*, i32) #1

declare dso_local %struct.ext4_dir_entry_2* @ext4_next_entry(%struct.ext4_dir_entry_2*, i32) #1

declare dso_local i32 @ext4_handle_dirty_metadata(%struct.inode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext4_mark_inode_dirty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_add_entry(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_inc_count(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ext4_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext4_journal_stop(%struct.inode*) #1

declare dso_local i64 @ext4_should_retry_alloc(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
