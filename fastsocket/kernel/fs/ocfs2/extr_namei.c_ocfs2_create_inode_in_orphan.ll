; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_create_inode_in_orphan.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_namei.c_ocfs2_create_inode_in_orphan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ocfs2_super = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 (%struct.inode*, i32)* }
%struct.ocfs2_dinode = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_alloc_context = type { i32 }
%struct.ocfs2_dir_lookup_result = type { i32* }
%struct.TYPE_7__ = type { i32 }

@OCFS2_ORPHAN_NAMELEN = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NO_QUOTA = common dso_local global i64 0, align 8
@EDQUOT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Disk is full\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_create_inode_in_orphan(%struct.inode* %0, i32 %1, %struct.inode** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.ocfs2_super*, align 8
  %13 = alloca %struct.ocfs2_dinode*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.buffer_head*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca %struct.ocfs2_alloc_context*, align 8
  %20 = alloca %struct.ocfs2_dir_lookup_result, align 8
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.inode** %2, %struct.inode*** %7, align 8
  store i32 0, i32* %9, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.inode* null, %struct.inode** %11, align 8
  %22 = load %struct.inode*, %struct.inode** %5, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.ocfs2_super* @OCFS2_SB(i32 %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %12, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %13, align 8
  store i32* null, i32** %14, align 8
  %26 = load i32, i32* @OCFS2_ORPHAN_NAMELEN, align 4
  %27 = add nsw i32 %26, 1
  %28 = zext i32 %27 to i64
  %29 = call i8* @llvm.stacksave()
  store i8* %29, i8** %15, align 8
  %30 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %16, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %19, align 8
  %31 = bitcast %struct.ocfs2_dir_lookup_result* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %31, i8 0, i64 8, i1 false)
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @ocfs2_inode_lock(%struct.inode* %32, %struct.buffer_head** %17, i32 1)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %3
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp ne i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %36
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %44

44:                                               ; preds = %41, %36
  %45 = load i32, i32* %8, align 4
  store i32 %45, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %233

46:                                               ; preds = %3
  %47 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super* %47, %struct.inode** %11, i32 %50, i8* %30, %struct.ocfs2_dir_lookup_result* %20)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @mlog_errno(i32 %55)
  br label %167

57:                                               ; preds = %46
  %58 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %59 = call i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super* %58, %struct.ocfs2_alloc_context** %19)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %71

62:                                               ; preds = %57
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @ENOSPC, align 4
  %65 = sub nsw i32 0, %64
  %66 = icmp ne i32 %63, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %8, align 4
  %69 = call i32 @mlog_errno(i32 %68)
  br label %70

70:                                               ; preds = %67, %62
  br label %167

71:                                               ; preds = %57
  %72 = load %struct.inode*, %struct.inode** %5, align 8
  %73 = load i32, i32* %6, align 4
  %74 = call %struct.inode* @ocfs2_get_init_inode(%struct.inode* %72, i32 %73)
  store %struct.inode* %74, %struct.inode** %10, align 8
  %75 = load %struct.inode*, %struct.inode** %10, align 8
  %76 = icmp ne %struct.inode* %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %167

82:                                               ; preds = %71
  %83 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = call i32 @ocfs2_mknod_credits(%struct.TYPE_6__* %86, i32 0, i32 0)
  %88 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %83, i32 %87)
  store i32* %88, i32** %14, align 8
  %89 = load i32*, i32** %14, align 8
  %90 = call i64 @IS_ERR(i32* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %82
  %93 = load i32*, i32** %14, align 8
  %94 = call i32 @PTR_ERR(i32* %93)
  store i32 %94, i32* %8, align 4
  store i32* null, i32** %14, align 8
  %95 = load i32, i32* %8, align 4
  %96 = call i32 @mlog_errno(i32 %95)
  br label %167

97:                                               ; preds = %82
  %98 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %99 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %98, i32 0, i32 0
  %100 = load %struct.TYPE_6__*, %struct.TYPE_6__** %99, align 8
  %101 = call i64 @sb_any_quota_active(%struct.TYPE_6__* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %118

103:                                              ; preds = %97
  %104 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %105 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 0
  %110 = load i64 (%struct.inode*, i32)*, i64 (%struct.inode*, i32)** %109, align 8
  %111 = load %struct.inode*, %struct.inode** %10, align 8
  %112 = call i64 %110(%struct.inode* %111, i32 1)
  %113 = load i64, i64* @NO_QUOTA, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %115, label %118

115:                                              ; preds = %103
  %116 = load i32, i32* @EDQUOT, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %8, align 4
  br label %167

118:                                              ; preds = %103, %97
  store i32 1, i32* %9, align 4
  %119 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %120 = load %struct.inode*, %struct.inode** %5, align 8
  %121 = load %struct.inode*, %struct.inode** %10, align 8
  %122 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %123 = load i32*, i32** %14, align 8
  %124 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %125 = call i32 @ocfs2_mknod_locked(%struct.ocfs2_super* %119, %struct.inode* %120, %struct.inode* %121, i32 0, %struct.buffer_head** %18, %struct.buffer_head* %122, i32* %123, %struct.ocfs2_alloc_context* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %118
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @mlog_errno(i32 %129)
  br label %167

131:                                              ; preds = %118
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call %struct.TYPE_7__* @OCFS2_I(%struct.inode* %132)
  %134 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @ocfs2_blkno_stringify(i32 %135, i8* %30)
  store i32 %136, i32* %8, align 4
  %137 = load i32, i32* %8, align 4
  %138 = icmp slt i32 %137, 0
  br i1 %138, label %139, label %142

139:                                              ; preds = %131
  %140 = load i32, i32* %8, align 4
  %141 = call i32 @mlog_errno(i32 %140)
  br label %167

142:                                              ; preds = %131
  %143 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %144 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %146, %struct.ocfs2_dinode** %13, align 8
  %147 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %148 = load i32*, i32** %14, align 8
  %149 = load %struct.inode*, %struct.inode** %10, align 8
  %150 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %13, align 8
  %151 = load %struct.inode*, %struct.inode** %11, align 8
  %152 = call i32 @ocfs2_orphan_add(%struct.ocfs2_super* %147, i32* %148, %struct.inode* %149, %struct.ocfs2_dinode* %150, i8* %30, %struct.ocfs2_dir_lookup_result* %20, %struct.inode* %151)
  store i32 %152, i32* %8, align 4
  %153 = load i32, i32* %8, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %142
  %156 = load i32, i32* %8, align 4
  %157 = call i32 @mlog_errno(i32 %156)
  br label %167

158:                                              ; preds = %142
  %159 = load %struct.inode*, %struct.inode** %10, align 8
  %160 = call i32 @ocfs2_open_lock(%struct.inode* %159)
  store i32 %160, i32* %8, align 4
  %161 = load i32, i32* %8, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %158
  %164 = load i32, i32* %8, align 4
  %165 = call i32 @mlog_errno(i32 %164)
  br label %166

166:                                              ; preds = %163, %158
  br label %167

167:                                              ; preds = %166, %155, %139, %128, %115, %92, %77, %70, %54
  %168 = load i32, i32* %8, align 4
  %169 = icmp slt i32 %168, 0
  br i1 %169, label %170, label %176

170:                                              ; preds = %167
  %171 = load i32, i32* %9, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %176

173:                                              ; preds = %170
  %174 = load %struct.inode*, %struct.inode** %10, align 8
  %175 = call i32 @vfs_dq_free_inode(%struct.inode* %174)
  br label %176

176:                                              ; preds = %173, %170, %167
  %177 = load i32*, i32** %14, align 8
  %178 = icmp ne i32* %177, null
  br i1 %178, label %179, label %183

179:                                              ; preds = %176
  %180 = load %struct.ocfs2_super*, %struct.ocfs2_super** %12, align 8
  %181 = load i32*, i32** %14, align 8
  %182 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %180, i32* %181)
  br label %183

183:                                              ; preds = %179, %176
  %184 = load %struct.inode*, %struct.inode** %11, align 8
  %185 = icmp ne %struct.inode* %184, null
  br i1 %185, label %186, label %194

186:                                              ; preds = %183
  %187 = load %struct.inode*, %struct.inode** %11, align 8
  %188 = call i32 @ocfs2_inode_unlock(%struct.inode* %187, i32 1)
  %189 = load %struct.inode*, %struct.inode** %11, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.inode*, %struct.inode** %11, align 8
  %193 = call i32 @iput(%struct.inode* %192)
  br label %194

194:                                              ; preds = %186, %183
  %195 = load i32, i32* %8, align 4
  %196 = load i32, i32* @ENOSPC, align 4
  %197 = sub nsw i32 0, %196
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %201

199:                                              ; preds = %194
  %200 = call i32 @mlog(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %201

201:                                              ; preds = %199, %194
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %212

204:                                              ; preds = %201
  %205 = load %struct.inode*, %struct.inode** %10, align 8
  %206 = icmp ne %struct.inode* %205, null
  br i1 %206, label %207, label %212

207:                                              ; preds = %204
  %208 = load %struct.inode*, %struct.inode** %10, align 8
  %209 = call i32 @clear_nlink(%struct.inode* %208)
  %210 = load %struct.inode*, %struct.inode** %10, align 8
  %211 = call i32 @iput(%struct.inode* %210)
  br label %212

212:                                              ; preds = %207, %204, %201
  %213 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %214 = icmp ne %struct.ocfs2_alloc_context* %213, null
  br i1 %214, label %215, label %218

215:                                              ; preds = %212
  %216 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %19, align 8
  %217 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %216)
  br label %218

218:                                              ; preds = %215, %212
  %219 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %220 = call i32 @brelse(%struct.buffer_head* %219)
  %221 = load i32, i32* %8, align 4
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %226, label %223

223:                                              ; preds = %218
  %224 = load %struct.inode*, %struct.inode** %10, align 8
  %225 = load %struct.inode**, %struct.inode*** %7, align 8
  store %struct.inode* %224, %struct.inode** %225, align 8
  br label %226

226:                                              ; preds = %223, %218
  %227 = call i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result* %20)
  %228 = load %struct.inode*, %struct.inode** %5, align 8
  %229 = call i32 @ocfs2_inode_unlock(%struct.inode* %228, i32 1)
  %230 = load %struct.buffer_head*, %struct.buffer_head** %17, align 8
  %231 = call i32 @brelse(%struct.buffer_head* %230)
  %232 = load i32, i32* %8, align 4
  store i32 %232, i32* %4, align 4
  store i32 1, i32* %21, align 4
  br label %233

233:                                              ; preds = %226, %44
  %234 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %234)
  %235 = load i32, i32* %4, align 4
  ret i32 %235
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_orphan_dir(%struct.ocfs2_super*, %struct.inode**, i32, i8*, %struct.ocfs2_dir_lookup_result*) #1

declare dso_local i32 @ocfs2_reserve_new_inode(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**) #1

declare dso_local %struct.inode* @ocfs2_get_init_inode(%struct.inode*, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_mknod_credits(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i64 @sb_any_quota_active(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_mknod_locked(%struct.ocfs2_super*, %struct.inode*, %struct.inode*, i32, %struct.buffer_head**, %struct.buffer_head*, i32*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @ocfs2_blkno_stringify(i32, i8*) #1

declare dso_local %struct.TYPE_7__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_orphan_add(%struct.ocfs2_super*, i32*, %struct.inode*, %struct.ocfs2_dinode*, i8*, %struct.ocfs2_dir_lookup_result*, %struct.inode*) #1

declare dso_local i32 @ocfs2_open_lock(%struct.inode*) #1

declare dso_local i32 @vfs_dq_free_inode(%struct.inode*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mlog(i32, i8*) #1

declare dso_local i32 @clear_nlink(%struct.inode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_free_dir_lookup_result(%struct.ocfs2_dir_lookup_result*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
