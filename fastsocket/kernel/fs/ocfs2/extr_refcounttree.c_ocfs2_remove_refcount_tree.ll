; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_remove_refcount_tree.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_refcounttree.c_ocfs2_remove_refcount_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i64, i32 }
%struct.ocfs2_inode_info = type { i32, i32 }
%struct.ocfs2_super = type { i32 }
%struct.ocfs2_refcount_block = type { i32, i32, i32, i64 }
%struct.ocfs2_refcount_tree = type { i32 }

@OCFS2_REFCOUNT_TREE_REMOVE_CREDITS = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@EXTENT_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_SUBALLOC_FREE = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_remove_refcount_tree(%struct.inode* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_inode_info*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_refcount_block*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.ocfs2_refcount_tree*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %5, align 8
  store i32 0, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %25, %struct.ocfs2_dinode** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = call %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode* %26)
  store %struct.ocfs2_inode_info* %27, %struct.ocfs2_inode_info** %10, align 8
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.ocfs2_super* @OCFS2_SB(i32 %30)
  store %struct.ocfs2_super* %31, %struct.ocfs2_super** %11, align 8
  store %struct.inode* null, %struct.inode** %13, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  %32 = load i32, i32* @OCFS2_REFCOUNT_TREE_REMOVE_CREDITS, align 4
  store i32 %32, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %33 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %34 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = call i32 @le64_to_cpu(i64 %35)
  store i32 %36, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %37 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %38 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %235

44:                                               ; preds = %2
  %45 = load i32, i32* %20, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i32 @BUG_ON(i32 %48)
  %50 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %51 = load i32, i32* %20, align 4
  %52 = call i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super* %50, i32 %51, i32 1, %struct.ocfs2_refcount_tree** %16, %struct.buffer_head** %15)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @mlog_errno(i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %235

59:                                               ; preds = %44
  %60 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %61 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ocfs2_refcount_block*
  store %struct.ocfs2_refcount_block* %63, %struct.ocfs2_refcount_block** %12, align 8
  %64 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %65 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @le32_to_cpu(i32 %66)
  %68 = icmp eq i32 %67, 1
  br i1 %68, label %69, label %112

69:                                               ; preds = %59
  %70 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %71 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %70, i32 0, i32 3
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @le64_to_cpu(i64 %72)
  store i32 %73, i32* %18, align 4
  %74 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %75 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @le16_to_cpu(i32 %76)
  store i32 %77, i32* %21, align 4
  %78 = load i32, i32* %18, align 4
  %79 = load i32, i32* %21, align 4
  %80 = call i32 @ocfs2_which_suballoc_group(i32 %78, i32 %79)
  store i32 %80, i32* %19, align 4
  %81 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %82 = load i32, i32* @EXTENT_ALLOC_SYSTEM_INODE, align 4
  %83 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %84 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %81, i32 %82, i32 %86)
  store %struct.inode* %87, %struct.inode** %13, align 8
  %88 = load %struct.inode*, %struct.inode** %13, align 8
  %89 = icmp ne %struct.inode* %88, null
  br i1 %89, label %95, label %90

90:                                               ; preds = %69
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %6, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %222

95:                                               ; preds = %69
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 0
  %98 = call i32 @mutex_lock(i32* %97)
  %99 = load %struct.inode*, %struct.inode** %13, align 8
  %100 = call i32 @ocfs2_inode_lock(%struct.inode* %99, %struct.buffer_head** %14, i32 1)
  store i32 %100, i32* %6, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %95
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %212

106:                                              ; preds = %95
  %107 = load i64, i64* @OCFS2_SUBALLOC_FREE, align 8
  %108 = load i32, i32* %17, align 4
  %109 = sext i32 %108 to i64
  %110 = add nsw i64 %109, %107
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %17, align 4
  br label %112

112:                                              ; preds = %106, %59
  %113 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %114 = load i32, i32* %17, align 4
  %115 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %113, i32 %114)
  store i32* %115, i32** %8, align 8
  %116 = load i32*, i32** %8, align 8
  %117 = call i64 @IS_ERR(i32* %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %124

119:                                              ; preds = %112
  %120 = load i32*, i32** %8, align 8
  %121 = call i32 @PTR_ERR(i32* %120)
  store i32 %121, i32* %6, align 4
  %122 = load i32, i32* %6, align 4
  %123 = call i32 @mlog_errno(i32 %122)
  br label %203

124:                                              ; preds = %112
  %125 = load i32*, i32** %8, align 8
  %126 = load %struct.inode*, %struct.inode** %4, align 8
  %127 = call i32 @INODE_CACHE(%struct.inode* %126)
  %128 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %129 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %130 = call i32 @ocfs2_journal_access_di(i32* %125, i32 %127, %struct.buffer_head* %128, i32 %129)
  store i32 %130, i32* %6, align 4
  %131 = load i32, i32* %6, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %124
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @mlog_errno(i32 %134)
  br label %199

136:                                              ; preds = %124
  %137 = load i32*, i32** %8, align 8
  %138 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %139 = getelementptr inbounds %struct.ocfs2_refcount_tree, %struct.ocfs2_refcount_tree* %138, i32 0, i32 0
  %140 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %141 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %142 = call i32 @ocfs2_journal_access_rb(i32* %137, i32* %139, %struct.buffer_head* %140, i32 %141)
  store i32 %142, i32* %6, align 4
  %143 = load i32, i32* %6, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %148

145:                                              ; preds = %136
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @mlog_errno(i32 %146)
  br label %199

148:                                              ; preds = %136
  %149 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %150 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %149, i32 0, i32 1
  %151 = call i32 @spin_lock(i32* %150)
  %152 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %153 = xor i32 %152, -1
  %154 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %155 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %156, %153
  store i32 %157, i32* %155, align 4
  %158 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %159 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @cpu_to_le16(i32 %160)
  %162 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %163 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %162, i32 0, i32 1
  store i32 %161, i32* %163, align 8
  %164 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %165 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %164, i32 0, i32 0
  store i64 0, i64* %165, align 8
  %166 = load %struct.ocfs2_inode_info*, %struct.ocfs2_inode_info** %10, align 8
  %167 = getelementptr inbounds %struct.ocfs2_inode_info, %struct.ocfs2_inode_info* %166, i32 0, i32 1
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load i32*, i32** %8, align 8
  %170 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %171 = call i32 @ocfs2_journal_dirty(i32* %169, %struct.buffer_head* %170)
  %172 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %173 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %172, i32 0, i32 0
  %174 = call i32 @le32_add_cpu(i32* %173, i32 -1)
  %175 = load i32*, i32** %8, align 8
  %176 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %177 = call i32 @ocfs2_journal_dirty(i32* %175, %struct.buffer_head* %176)
  %178 = load %struct.ocfs2_refcount_block*, %struct.ocfs2_refcount_block** %12, align 8
  %179 = getelementptr inbounds %struct.ocfs2_refcount_block, %struct.ocfs2_refcount_block* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %198, label %182

182:                                              ; preds = %148
  store i32 1, i32* %7, align 4
  %183 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %184 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %185 = call i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super* %183, %struct.ocfs2_refcount_tree* %184)
  %186 = load i32*, i32** %8, align 8
  %187 = load %struct.inode*, %struct.inode** %13, align 8
  %188 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %189 = load i32, i32* %21, align 4
  %190 = load i32, i32* %19, align 4
  %191 = call i32 @ocfs2_free_suballoc_bits(i32* %186, %struct.inode* %187, %struct.buffer_head* %188, i32 %189, i32 %190, i32 1)
  store i32 %191, i32* %6, align 4
  %192 = load i32, i32* %6, align 4
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %197

194:                                              ; preds = %182
  %195 = load i32, i32* %6, align 4
  %196 = call i32 @mlog_errno(i32 %195)
  br label %197

197:                                              ; preds = %194, %182
  br label %198

198:                                              ; preds = %197, %148
  br label %199

199:                                              ; preds = %198, %145, %133
  %200 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %201 = load i32*, i32** %8, align 8
  %202 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %200, i32* %201)
  br label %203

203:                                              ; preds = %199, %119
  %204 = load %struct.inode*, %struct.inode** %13, align 8
  %205 = icmp ne %struct.inode* %204, null
  br i1 %205, label %206, label %211

206:                                              ; preds = %203
  %207 = load %struct.inode*, %struct.inode** %13, align 8
  %208 = call i32 @ocfs2_inode_unlock(%struct.inode* %207, i32 1)
  %209 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %210 = call i32 @brelse(%struct.buffer_head* %209)
  br label %211

211:                                              ; preds = %206, %203
  br label %212

212:                                              ; preds = %211, %103
  %213 = load %struct.inode*, %struct.inode** %13, align 8
  %214 = icmp ne %struct.inode* %213, null
  br i1 %214, label %215, label %221

215:                                              ; preds = %212
  %216 = load %struct.inode*, %struct.inode** %13, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 0
  %218 = call i32 @mutex_unlock(i32* %217)
  %219 = load %struct.inode*, %struct.inode** %13, align 8
  %220 = call i32 @iput(%struct.inode* %219)
  br label %221

221:                                              ; preds = %215, %212
  br label %222

222:                                              ; preds = %221, %90
  %223 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %224 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %225 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %223, %struct.ocfs2_refcount_tree* %224, i32 1)
  %226 = load i32, i32* %7, align 4
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %222
  %229 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %16, align 8
  %230 = call i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree* %229)
  br label %231

231:                                              ; preds = %228, %222
  %232 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %233 = call i32 @brelse(%struct.buffer_head* %232)
  %234 = load i32, i32* %6, align 4
  store i32 %234, i32* %3, align 4
  br label %235

235:                                              ; preds = %231, %55, %43
  %236 = load i32, i32* %3, align 4
  ret i32 %236
}

declare dso_local %struct.ocfs2_inode_info* @OCFS2_I(%struct.inode*) #1

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @le64_to_cpu(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @ocfs2_lock_refcount_tree(%struct.ocfs2_super*, i32, i32, %struct.ocfs2_refcount_tree**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ocfs2_which_suballoc_group(i32, i32) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_journal_access_rb(i32*, i32*, %struct.buffer_head*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_erase_refcount_tree_from_list(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*) #1

declare dso_local i32 @ocfs2_free_suballoc_bits(i32*, %struct.inode*, %struct.buffer_head*, i32, i32, i32) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @ocfs2_refcount_tree_put(%struct.ocfs2_refcount_tree*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
