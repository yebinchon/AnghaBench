; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mv_orphaned_inode_to_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_mv_orphaned_inode_to_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.dentry = type { i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_super = type { i32, i32 }
%struct.ocfs2_dinode = type { i64, i32, i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"(0x%p, 0x%p, %.*s')\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@ORPHAN_DIR_SYSTEM_INODE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@OCFS2_ORPHANED_FL = common dso_local global i32 0, align 4
@ocfs2_dentry_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_mv_orphaned_inode_to_new(%struct.inode* %0, %struct.inode* %1, %struct.dentry* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.ocfs2_super*, align 8
  %12 = alloca %struct.ocfs2_dinode*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca %struct.inode*, align 8
  %15 = alloca %struct.buffer_head*, align 8
  %16 = alloca %struct.buffer_head*, align 8
  %17 = alloca %struct.ocfs2_dir_lookup_result, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.dentry* %2, %struct.dentry** %7, align 8
  store i32 0, i32* %8, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %9, align 8
  store i32* null, i32** %10, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.ocfs2_super* @OCFS2_SB(i32 %20)
  store %struct.ocfs2_super* %21, %struct.ocfs2_super** %11, align 8
  store %struct.inode* null, %struct.inode** %14, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %15, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %16, align 8
  %22 = bitcast %struct.ocfs2_dir_lookup_result* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 8, i1 false)
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = load %struct.dentry*, %struct.dentry** %7, align 8
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @mlog_entry(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.inode* %23, %struct.dentry* %24, i32 %28, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %5, align 8
  %35 = call i32 @ocfs2_inode_lock(%struct.inode* %34, %struct.buffer_head** %9, i32 1)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %3
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp ne i32 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %38
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @mlog_errno(i32 %44)
  br label %46

46:                                               ; preds = %43, %38
  %47 = load i32, i32* %8, align 4
  store i32 %47, i32* %4, align 4
  br label %244

48:                                               ; preds = %3
  %49 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %50 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = inttoptr i64 %51 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %52, %struct.ocfs2_dinode** %12, align 8
  %53 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %12, align 8
  %54 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %48
  %58 = load i32, i32* @ENOENT, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %231

60:                                               ; preds = %48
  %61 = load %struct.inode*, %struct.inode** %5, align 8
  %62 = load %struct.dentry*, %struct.dentry** %7, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.dentry*, %struct.dentry** %7, align 8
  %67 = getelementptr inbounds %struct.dentry, %struct.dentry* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ocfs2_check_dir_for_entry(%struct.inode* %61, i32 %65, i32 %69)
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* %8, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %231

74:                                               ; preds = %60
  %75 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %76 = load %struct.inode*, %struct.inode** %5, align 8
  %77 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %78 = load %struct.dentry*, %struct.dentry** %7, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.dentry*, %struct.dentry** %7, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super* %75, %struct.inode* %76, %struct.buffer_head* %77, i32 %81, i32 %85, %struct.ocfs2_dir_lookup_result* %17)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load i32, i32* %8, align 4
  %91 = call i32 @mlog_errno(i32 %90)
  br label %231

92:                                               ; preds = %74
  %93 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %94 = load i32, i32* @ORPHAN_DIR_SYSTEM_INODE, align 4
  %95 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %96 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %93, i32 %94, i32 %97)
  store %struct.inode* %98, %struct.inode** %14, align 8
  %99 = load %struct.inode*, %struct.inode** %14, align 8
  %100 = icmp ne %struct.inode* %99, null
  br i1 %100, label %106, label %101

101:                                              ; preds = %92
  %102 = load i32, i32* @EEXIST, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i32 @mlog_errno(i32 %104)
  br label %231

106:                                              ; preds = %92
  %107 = load %struct.inode*, %struct.inode** %14, align 8
  %108 = getelementptr inbounds %struct.inode, %struct.inode* %107, i32 0, i32 0
  %109 = call i32 @mutex_lock(i32* %108)
  %110 = load %struct.inode*, %struct.inode** %14, align 8
  %111 = call i32 @ocfs2_inode_lock(%struct.inode* %110, %struct.buffer_head** %15, i32 1)
  store i32 %111, i32* %8, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load i32, i32* %8, align 4
  %116 = call i32 @mlog_errno(i32 %115)
  %117 = load %struct.inode*, %struct.inode** %14, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = call i32 @mutex_unlock(i32* %118)
  %120 = load %struct.inode*, %struct.inode** %14, align 8
  %121 = call i32 @iput(%struct.inode* %120)
  br label %231

122:                                              ; preds = %106
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = call i32 @ocfs2_read_inode_block(%struct.inode* %123, %struct.buffer_head** %16)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %122
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @mlog_errno(i32 %128)
  br label %223

130:                                              ; preds = %122
  %131 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %132 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %133 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @ocfs2_rename_credits(i32 %134)
  %136 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %131, i32 %135)
  store i32* %136, i32** %10, align 8
  %137 = load i32*, i32** %10, align 8
  %138 = call i64 @IS_ERR(i32* %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %145

140:                                              ; preds = %130
  %141 = load i32*, i32** %10, align 8
  %142 = call i32 @PTR_ERR(i32* %141)
  store i32 %142, i32* %8, align 4
  store i32* null, i32** %10, align 8
  %143 = load i32, i32* %8, align 4
  %144 = call i32 @mlog_errno(i32 %143)
  br label %223

145:                                              ; preds = %130
  %146 = load i32*, i32** %10, align 8
  %147 = load %struct.inode*, %struct.inode** %6, align 8
  %148 = call i32 @INODE_CACHE(%struct.inode* %147)
  %149 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %150 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %151 = call i32 @ocfs2_journal_access_di(i32* %146, i32 %148, %struct.buffer_head* %149, i32 %150)
  store i32 %151, i32* %8, align 4
  %152 = load i32, i32* %8, align 4
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %154, label %157

154:                                              ; preds = %145
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @mlog_errno(i32 %155)
  br label %219

157:                                              ; preds = %145
  %158 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %159 = load i32*, i32** %10, align 8
  %160 = load %struct.inode*, %struct.inode** %14, align 8
  %161 = load %struct.inode*, %struct.inode** %6, align 8
  %162 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %163 = call i32 @ocfs2_orphan_del(%struct.ocfs2_super* %158, i32* %159, %struct.inode* %160, %struct.inode* %161, %struct.buffer_head* %162)
  store i32 %163, i32* %8, align 4
  %164 = load i32, i32* %8, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %157
  %167 = load i32, i32* %8, align 4
  %168 = call i32 @mlog_errno(i32 %167)
  br label %219

169:                                              ; preds = %157
  %170 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %171 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = inttoptr i64 %172 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %173, %struct.ocfs2_dinode** %13, align 8
  %174 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %175 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %174, i32 0, i32 1
  %176 = load i32, i32* @OCFS2_ORPHANED_FL, align 4
  %177 = sub nsw i32 0, %176
  %178 = call i32 @le32_add_cpu(i32* %175, i32 %177)
  %179 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %180 = getelementptr inbounds %struct.ocfs2_dinode, %struct.ocfs2_dinode* %179, i32 0, i32 0
  store i64 0, i64* %180, align 8
  %181 = load i32*, i32** %10, align 8
  %182 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %183 = call i32 @ocfs2_journal_dirty(i32* %181, %struct.buffer_head* %182)
  %184 = load i32*, i32** %10, align 8
  %185 = load %struct.dentry*, %struct.dentry** %7, align 8
  %186 = load %struct.inode*, %struct.inode** %6, align 8
  %187 = load %struct.inode*, %struct.inode** %6, align 8
  %188 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %187)
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %192 = call i32 @ocfs2_add_entry(i32* %184, %struct.dentry* %185, %struct.inode* %186, i32 %190, %struct.buffer_head* %191, %struct.ocfs2_dir_lookup_result* %17)
  store i32 %192, i32* %8, align 4
  %193 = load i32, i32* %8, align 4
  %194 = icmp slt i32 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %169
  %196 = load i32, i32* %8, align 4
  %197 = call i32 @mlog_errno(i32 %196)
  br label %219

198:                                              ; preds = %169
  %199 = load %struct.dentry*, %struct.dentry** %7, align 8
  %200 = load %struct.inode*, %struct.inode** %6, align 8
  %201 = load %struct.inode*, %struct.inode** %5, align 8
  %202 = call %struct.TYPE_4__* @OCFS2_I(%struct.inode* %201)
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @ocfs2_dentry_attach_lock(%struct.dentry* %199, %struct.inode* %200, i32 %204)
  store i32 %205, i32* %8, align 4
  %206 = load i32, i32* %8, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %198
  %209 = load i32, i32* %8, align 4
  %210 = call i32 @mlog_errno(i32 %209)
  br label %219

211:                                              ; preds = %198
  %212 = load %struct.inode*, %struct.inode** %6, align 8
  %213 = call i32 @insert_inode_hash(%struct.inode* %212)
  %214 = load %struct.dentry*, %struct.dentry** %7, align 8
  %215 = getelementptr inbounds %struct.dentry, %struct.dentry* %214, i32 0, i32 0
  store i32* @ocfs2_dentry_ops, i32** %215, align 8
  %216 = load %struct.dentry*, %struct.dentry** %7, align 8
  %217 = load %struct.inode*, %struct.inode** %6, align 8
  %218 = call i32 @d_instantiate(%struct.dentry* %216, %struct.inode* %217)
  store i32 0, i32* %8, align 4
  br label %219

219:                                              ; preds = %211, %208, %195, %166, %154
  %220 = load %struct.ocfs2_super*, %struct.ocfs2_super** %11, align 8
  %221 = load i32*, i32** %10, align 8
  %222 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %220, i32* %221)
  br label %223

223:                                              ; preds = %219, %140, %127
  %224 = load %struct.inode*, %struct.inode** %14, align 8
  %225 = call i32 @ocfs2_inode_unlock(%struct.inode* %224, i32 1)
  %226 = load %struct.inode*, %struct.inode** %14, align 8
  %227 = getelementptr inbounds %struct.inode, %struct.inode* %226, i32 0, i32 0
  %228 = call i32 @mutex_unlock(i32* %227)
  %229 = load %struct.inode*, %struct.inode** %14, align 8
  %230 = call i32 @iput(%struct.inode* %229)
  br label %231

231:                                              ; preds = %223, %114, %101, %89, %73, %57
  %232 = load %struct.inode*, %struct.inode** %5, align 8
  %233 = call i32 @ocfs2_inode_unlock(%struct.inode* %232, i32 1)
  %234 = load %struct.buffer_head*, %struct.buffer_head** %16, align 8
  %235 = call i32 @brelse(%struct.buffer_head* %234)
  %236 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %237 = call i32 @brelse(%struct.buffer_head* %236)
  %238 = load %struct.buffer_head*, %struct.buffer_head** %15, align 8
  %239 = call i32 @brelse(%struct.buffer_head* %238)
  %240 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %17)
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @mlog_exit(i32 %241)
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %4, align 4
  br label %244

244:                                              ; preds = %231, %46
  %245 = load i32, i32* %4, align 4
  ret i32 %245
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @mlog_entry(i8*, %struct.inode*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_check_dir_for_entry(%struct.inode*, i32, i32) #1

declare dso_local i32 @ocfs2_prepare_dir_for_insert(%struct.ocfs2_super*, %struct.inode*, %struct.buffer_head*, i32, i32, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_read_inode_block(%struct.inode*, %struct.buffer_head**) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_rename_credits(i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_orphan_del(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_add_entry(i32*, %struct.dentry*, %struct.inode*, i32, %struct.buffer_head*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local %struct.TYPE_4__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
