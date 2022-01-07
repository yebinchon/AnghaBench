; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_mkdir.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ext3/extr_namei.c_ext3_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.TYPE_6__*, i32, i64, i32*, i32* }
%struct.TYPE_6__ = type { i64 }
%struct.dentry = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext3_dir_entry_2 = type { i32, i32, i8*, i8* }
%struct.TYPE_7__ = type { i64 }

@EXT3_LINK_MAX = common dso_local global i64 0, align 8
@EMLINK = common dso_local global i32 0, align 4
@EXT3_INDEX_EXTRA_TRANS_BLOCKS = common dso_local global i64 0, align 8
@S_IFDIR = common dso_local global i32 0, align 4
@ext3_dir_inode_operations = common dso_local global i32 0, align 4
@ext3_dir_operations = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"..\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"call ext3_journal_dirty_metadata\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @ext3_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext3_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca %struct.ext3_dir_entry_2*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @EXT3_LINK_MAX, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* @EMLINK, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %218

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %215, %22
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.inode*, %struct.inode** %5, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 2
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = call i64 @EXT3_DATA_TRANS_BLOCKS(%struct.TYPE_6__* %27)
  %29 = load i64, i64* @EXT3_INDEX_EXTRA_TRANS_BLOCKS, align 8
  %30 = add nsw i64 %28, %29
  %31 = add nsw i64 %30, 3
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = call i32 @EXT3_QUOTA_INIT_BLOCKS(%struct.TYPE_6__* %34)
  %36 = mul nsw i32 2, %35
  %37 = sext i32 %36 to i64
  %38 = add nsw i64 %31, %37
  %39 = call %struct.inode* @ext3_journal_start(%struct.inode* %24, i64 %38)
  store %struct.inode* %39, %struct.inode** %8, align 8
  %40 = load %struct.inode*, %struct.inode** %8, align 8
  %41 = call i64 @IS_ERR(%struct.inode* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %23
  %44 = load %struct.inode*, %struct.inode** %8, align 8
  %45 = call i32 @PTR_ERR(%struct.inode* %44)
  store i32 %45, i32* %4, align 4
  br label %218

46:                                               ; preds = %23
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i64 @IS_DIRSYNC(%struct.inode* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %46
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i32, i32* @S_IFDIR, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %56, %57
  %59 = call %struct.inode* @ext3_new_inode(%struct.inode* %54, %struct.inode* %55, i32 %58)
  store %struct.inode* %59, %struct.inode** %9, align 8
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = call i32 @PTR_ERR(%struct.inode* %60)
  store i32 %61, i32* %12, align 4
  %62 = load %struct.inode*, %struct.inode** %9, align 8
  %63 = call i64 @IS_ERR(%struct.inode* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %202

66:                                               ; preds = %53
  %67 = load %struct.inode*, %struct.inode** %9, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 6
  store i32* @ext3_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %9, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 5
  store i32* @ext3_dir_operations, i32** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %9, align 8
  %72 = getelementptr inbounds %struct.inode, %struct.inode* %71, i32 0, i32 2
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.inode*, %struct.inode** %9, align 8
  %77 = call %struct.TYPE_7__* @EXT3_I(%struct.inode* %76)
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  store i64 %75, i64* %78, align 8
  %79 = load %struct.inode*, %struct.inode** %9, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 4
  store i64 %75, i64* %80, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.inode*, %struct.inode** %9, align 8
  %83 = call %struct.buffer_head* @ext3_bread(%struct.inode* %81, %struct.inode* %82, i32 0, i32 1, i32* %12)
  store %struct.buffer_head* %83, %struct.buffer_head** %10, align 8
  %84 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %85 = icmp ne %struct.buffer_head* %84, null
  br i1 %85, label %96, label %86

86:                                               ; preds = %66
  %87 = load %struct.inode*, %struct.inode** %9, align 8
  %88 = call i32 @drop_nlink(%struct.inode* %87)
  %89 = load %struct.inode*, %struct.inode** %9, align 8
  %90 = call i32 @unlock_new_inode(%struct.inode* %89)
  %91 = load %struct.inode*, %struct.inode** %8, align 8
  %92 = load %struct.inode*, %struct.inode** %9, align 8
  %93 = call i32 @ext3_mark_inode_dirty(%struct.inode* %91, %struct.inode* %92)
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = call i32 @iput(%struct.inode* %94)
  br label %202

96:                                               ; preds = %66
  %97 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %98 = call i32 @BUFFER_TRACE(%struct.buffer_head* %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %99 = load %struct.inode*, %struct.inode** %8, align 8
  %100 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %101 = call i32 @ext3_journal_get_write_access(%struct.inode* %99, %struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %103 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = inttoptr i64 %104 to %struct.ext3_dir_entry_2*
  store %struct.ext3_dir_entry_2* %105, %struct.ext3_dir_entry_2** %11, align 8
  %106 = load %struct.inode*, %struct.inode** %9, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %111 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %110, i32 0, i32 3
  store i8* %109, i8** %111, align 8
  %112 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %113 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %112, i32 0, i32 0
  store i32 1, i32* %113, align 8
  %114 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %115 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i64 @EXT3_DIR_REC_LEN(i32 %116)
  %118 = call i8* @ext3_rec_len_to_disk(i64 %117)
  %119 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %120 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  %121 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %122 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @strcpy(i32 %123, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %125 = load %struct.inode*, %struct.inode** %5, align 8
  %126 = getelementptr inbounds %struct.inode, %struct.inode* %125, i32 0, i32 2
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %129 = load i32, i32* @S_IFDIR, align 4
  %130 = call i32 @ext3_set_de_type(%struct.TYPE_6__* %127, %struct.ext3_dir_entry_2* %128, i32 %129)
  %131 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %132 = call %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2* %131)
  store %struct.ext3_dir_entry_2* %132, %struct.ext3_dir_entry_2** %11, align 8
  %133 = load %struct.inode*, %struct.inode** %5, align 8
  %134 = getelementptr inbounds %struct.inode, %struct.inode* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %138 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %137, i32 0, i32 3
  store i8* %136, i8** %138, align 8
  %139 = load %struct.inode*, %struct.inode** %9, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 2
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = call i64 @EXT3_DIR_REC_LEN(i32 1)
  %145 = sub nsw i64 %143, %144
  %146 = call i8* @ext3_rec_len_to_disk(i64 %145)
  %147 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %148 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %147, i32 0, i32 2
  store i8* %146, i8** %148, align 8
  %149 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %150 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %149, i32 0, i32 0
  store i32 2, i32* %150, align 8
  %151 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %152 = getelementptr inbounds %struct.ext3_dir_entry_2, %struct.ext3_dir_entry_2* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @strcpy(i32 %153, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  %155 = load %struct.inode*, %struct.inode** %5, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 2
  %157 = load %struct.TYPE_6__*, %struct.TYPE_6__** %156, align 8
  %158 = load %struct.ext3_dir_entry_2*, %struct.ext3_dir_entry_2** %11, align 8
  %159 = load i32, i32* @S_IFDIR, align 4
  %160 = call i32 @ext3_set_de_type(%struct.TYPE_6__* %157, %struct.ext3_dir_entry_2* %158, i32 %159)
  %161 = load %struct.inode*, %struct.inode** %9, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 0
  store i64 2, i64* %162, align 8
  %163 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %164 = call i32 @BUFFER_TRACE(%struct.buffer_head* %163, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  %165 = load %struct.inode*, %struct.inode** %8, align 8
  %166 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %167 = call i32 @ext3_journal_dirty_metadata(%struct.inode* %165, %struct.buffer_head* %166)
  %168 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %169 = call i32 @brelse(%struct.buffer_head* %168)
  %170 = load %struct.inode*, %struct.inode** %8, align 8
  %171 = load %struct.inode*, %struct.inode** %9, align 8
  %172 = call i32 @ext3_mark_inode_dirty(%struct.inode* %170, %struct.inode* %171)
  %173 = load %struct.inode*, %struct.inode** %8, align 8
  %174 = load %struct.dentry*, %struct.dentry** %6, align 8
  %175 = load %struct.inode*, %struct.inode** %9, align 8
  %176 = call i32 @ext3_add_entry(%struct.inode* %173, %struct.dentry* %174, %struct.inode* %175)
  store i32 %176, i32* %12, align 4
  %177 = load i32, i32* %12, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %189

179:                                              ; preds = %96
  %180 = load %struct.inode*, %struct.inode** %9, align 8
  %181 = getelementptr inbounds %struct.inode, %struct.inode* %180, i32 0, i32 0
  store i64 0, i64* %181, align 8
  %182 = load %struct.inode*, %struct.inode** %9, align 8
  %183 = call i32 @unlock_new_inode(%struct.inode* %182)
  %184 = load %struct.inode*, %struct.inode** %8, align 8
  %185 = load %struct.inode*, %struct.inode** %9, align 8
  %186 = call i32 @ext3_mark_inode_dirty(%struct.inode* %184, %struct.inode* %185)
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = call i32 @iput(%struct.inode* %187)
  br label %202

189:                                              ; preds = %96
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = call i32 @inc_nlink(%struct.inode* %190)
  %192 = load %struct.inode*, %struct.inode** %5, align 8
  %193 = call i32 @ext3_update_dx_flag(%struct.inode* %192)
  %194 = load %struct.inode*, %struct.inode** %8, align 8
  %195 = load %struct.inode*, %struct.inode** %5, align 8
  %196 = call i32 @ext3_mark_inode_dirty(%struct.inode* %194, %struct.inode* %195)
  %197 = load %struct.dentry*, %struct.dentry** %6, align 8
  %198 = load %struct.inode*, %struct.inode** %9, align 8
  %199 = call i32 @d_instantiate(%struct.dentry* %197, %struct.inode* %198)
  %200 = load %struct.inode*, %struct.inode** %9, align 8
  %201 = call i32 @unlock_new_inode(%struct.inode* %200)
  br label %202

202:                                              ; preds = %189, %179, %86, %65
  %203 = load %struct.inode*, %struct.inode** %8, align 8
  %204 = call i32 @ext3_journal_stop(%struct.inode* %203)
  %205 = load i32, i32* %12, align 4
  %206 = load i32, i32* @ENOSPC, align 4
  %207 = sub nsw i32 0, %206
  %208 = icmp eq i32 %205, %207
  br i1 %208, label %209, label %216

209:                                              ; preds = %202
  %210 = load %struct.inode*, %struct.inode** %5, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 2
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = call i64 @ext3_should_retry_alloc(%struct.TYPE_6__* %212, i32* %13)
  %214 = icmp ne i64 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %209
  br label %23

216:                                              ; preds = %209, %202
  %217 = load i32, i32* %12, align 4
  store i32 %217, i32* %4, align 4
  br label %218

218:                                              ; preds = %216, %43, %19
  %219 = load i32, i32* %4, align 4
  ret i32 %219
}

declare dso_local %struct.inode* @ext3_journal_start(%struct.inode*, i64) #1

declare dso_local i64 @EXT3_DATA_TRANS_BLOCKS(%struct.TYPE_6__*) #1

declare dso_local i32 @EXT3_QUOTA_INIT_BLOCKS(%struct.TYPE_6__*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @IS_DIRSYNC(%struct.inode*) #1

declare dso_local %struct.inode* @ext3_new_inode(%struct.inode*, %struct.inode*, i32) #1

declare dso_local %struct.TYPE_7__* @EXT3_I(%struct.inode*) #1

declare dso_local %struct.buffer_head* @ext3_bread(%struct.inode*, %struct.inode*, i32, i32, i32*) #1

declare dso_local i32 @drop_nlink(%struct.inode*) #1

declare dso_local i32 @unlock_new_inode(%struct.inode*) #1

declare dso_local i32 @ext3_mark_inode_dirty(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @ext3_journal_get_write_access(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @ext3_rec_len_to_disk(i64) #1

declare dso_local i64 @EXT3_DIR_REC_LEN(i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @ext3_set_de_type(%struct.TYPE_6__*, %struct.ext3_dir_entry_2*, i32) #1

declare dso_local %struct.ext3_dir_entry_2* @ext3_next_entry(%struct.ext3_dir_entry_2*) #1

declare dso_local i32 @ext3_journal_dirty_metadata(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ext3_add_entry(%struct.inode*, %struct.dentry*, %struct.inode*) #1

declare dso_local i32 @inc_nlink(%struct.inode*) #1

declare dso_local i32 @ext3_update_dx_flag(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ext3_journal_stop(%struct.inode*) #1

declare dso_local i64 @ext3_should_retry_alloc(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
