; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_xattr.c_ocfs2_xattr_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.buffer_head = type { i64 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_super = type { %struct.inode* }
%struct.ocfs2_xattr_set_ctxt = type { i32, i64, i64, i32, i32*, i32* }
%struct.ocfs2_refcount_tree = type { i32 }
%struct.ocfs2_xattr_info = type { i32, i8*, i8*, i64 }
%struct.ocfs2_xattr_search = type { i32, i32, %struct.buffer_head*, %struct.buffer_head* }
%struct.TYPE_2__ = type { i32, i32 }

@ENODATA = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@XATTR_REPLACE = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@XATTR_CREATE = common dso_local global i32 0, align 4
@OCFS2_HAS_REFCOUNT_FL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_xattr_set(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.buffer_head*, align 8
  %15 = alloca %struct.ocfs2_dinode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.ocfs2_super*, align 8
  %21 = alloca %struct.inode*, align 8
  %22 = alloca %struct.ocfs2_xattr_set_ctxt, align 8
  %23 = alloca %struct.ocfs2_refcount_tree*, align 8
  %24 = alloca %struct.ocfs2_xattr_info, align 8
  %25 = alloca %struct.ocfs2_xattr_search, align 8
  %26 = alloca %struct.ocfs2_xattr_search, align 8
  store %struct.inode* %0, %struct.inode** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %14, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  %27 = load %struct.inode*, %struct.inode** %8, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call %struct.ocfs2_super* @OCFS2_SB(i32 %29)
  store %struct.ocfs2_super* %30, %struct.ocfs2_super** %20, align 8
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %32 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %31, i32 0, i32 0
  %33 = load %struct.inode*, %struct.inode** %32, align 8
  store %struct.inode* %33, %struct.inode** %21, align 8
  %34 = bitcast %struct.ocfs2_xattr_set_ctxt* %22 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %34, i8 0, i64 48, i1 false)
  store %struct.ocfs2_refcount_tree* null, %struct.ocfs2_refcount_tree** %23, align 8
  %35 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 0
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %35, align 8
  %37 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 1
  %38 = load i8*, i8** %10, align 8
  store i8* %38, i8** %37, align 8
  %39 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 2
  %40 = load i8*, i8** %11, align 8
  store i8* %40, i8** %39, align 8
  %41 = getelementptr inbounds %struct.ocfs2_xattr_info, %struct.ocfs2_xattr_info* %24, i32 0, i32 3
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %41, align 8
  %43 = bitcast %struct.ocfs2_xattr_search* %25 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %43, i8 0, i64 24, i1 false)
  %44 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  %45 = load i32, i32* @ENODATA, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %44, align 8
  %47 = bitcast %struct.ocfs2_xattr_search* %26 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %47, i8 0, i64 24, i1 false)
  %48 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %49 = load i32, i32* @ENODATA, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %48, align 8
  %51 = load %struct.inode*, %struct.inode** %8, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.ocfs2_super* @OCFS2_SB(i32 %53)
  %55 = call i32 @ocfs2_supports_xattr(%struct.ocfs2_super* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %6
  %58 = load i32, i32* @EOPNOTSUPP, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %7, align 4
  br label %297

60:                                               ; preds = %6
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @ocfs2_xattr_bucket_new(%struct.inode* %61)
  %63 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  store i32 %62, i32* %63, align 4
  %64 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %73, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* @ENOMEM, align 4
  %69 = sub nsw i32 0, %68
  %70 = call i32 @mlog_errno(i32 %69)
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %7, align 4
  br label %297

73:                                               ; preds = %60
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = call i32 @ocfs2_inode_lock(%struct.inode* %74, %struct.buffer_head** %14, i32 1)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %16, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* %16, align 4
  %80 = call i32 @mlog_errno(i32 %79)
  br label %287

81:                                               ; preds = %73
  %82 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %83 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 3
  store %struct.buffer_head* %82, %struct.buffer_head** %83, align 8
  %84 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 3
  store %struct.buffer_head* %82, %struct.buffer_head** %84, align 8
  %85 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %86 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %88, %struct.ocfs2_dinode** %15, align 8
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = call i32 @down_write(i32* %91)
  %93 = load %struct.inode*, %struct.inode** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i8*, i8** %10, align 8
  %96 = call i32 @ocfs2_xattr_ibody_find(%struct.inode* %93, i32 %94, i8* %95, %struct.ocfs2_xattr_search* %25)
  store i32 %96, i32* %16, align 4
  %97 = load i32, i32* %16, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %81
  br label %257

100:                                              ; preds = %81
  %101 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %100
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = load i32, i32* %9, align 4
  %107 = load i8*, i8** %10, align 8
  %108 = call i32 @ocfs2_xattr_block_find(%struct.inode* %105, i32 %106, i8* %107, %struct.ocfs2_xattr_search* %26)
  store i32 %108, i32* %16, align 4
  %109 = load i32, i32* %16, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %257

112:                                              ; preds = %104
  br label %113

113:                                              ; preds = %112, %100
  %114 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %134

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %134

121:                                              ; preds = %117
  %122 = load i32, i32* @ENODATA, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %16, align 4
  %124 = load i32, i32* %13, align 4
  %125 = load i32, i32* @XATTR_REPLACE, align 4
  %126 = and i32 %124, %125
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %121
  br label %257

129:                                              ; preds = %121
  store i32 0, i32* %16, align 4
  %130 = load i8*, i8** %11, align 8
  %131 = icmp ne i8* %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %129
  br label %257

133:                                              ; preds = %129
  br label %143

134:                                              ; preds = %117, %113
  %135 = load i32, i32* @EEXIST, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %13, align 4
  %138 = load i32, i32* @XATTR_CREATE, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %257

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %133
  %144 = load %struct.inode*, %struct.inode** %8, align 8
  %145 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %144)
  %146 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @OCFS2_HAS_REFCOUNT_FL, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %169

151:                                              ; preds = %143
  %152 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %25, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %169, label %159

159:                                              ; preds = %155, %151
  %160 = load %struct.inode*, %struct.inode** %8, align 8
  %161 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %162 = call i32 @ocfs2_prepare_refcount_xattr(%struct.inode* %160, %struct.ocfs2_dinode* %161, %struct.ocfs2_xattr_info* %24, %struct.ocfs2_xattr_search* %25, %struct.ocfs2_xattr_search* %26, %struct.ocfs2_refcount_tree** %23, i32* %18, i32* %19)
  store i32 %162, i32* %16, align 4
  %163 = load i32, i32* %16, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32, i32* %16, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %257

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %155, %143
  %170 = load %struct.inode*, %struct.inode** %21, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 0
  %172 = call i32 @mutex_lock(i32* %171)
  %173 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %174 = call i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %188

176:                                              ; preds = %169
  %177 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %178 = call i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super* %177)
  store i32 %178, i32* %16, align 4
  %179 = load i32, i32* %16, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %176
  %182 = load %struct.inode*, %struct.inode** %21, align 8
  %183 = getelementptr inbounds %struct.inode, %struct.inode* %182, i32 0, i32 0
  %184 = call i32 @mutex_unlock(i32* %183)
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @mlog_errno(i32 %185)
  br label %257

187:                                              ; preds = %176
  br label %188

188:                                              ; preds = %187, %169
  %189 = load %struct.inode*, %struct.inode** %21, align 8
  %190 = getelementptr inbounds %struct.inode, %struct.inode* %189, i32 0, i32 0
  %191 = call i32 @mutex_unlock(i32* %190)
  %192 = load %struct.inode*, %struct.inode** %8, align 8
  %193 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %194 = load i32, i32* %18, align 4
  %195 = call i32 @ocfs2_init_xattr_set_ctxt(%struct.inode* %192, %struct.ocfs2_dinode* %193, %struct.ocfs2_xattr_info* %24, %struct.ocfs2_xattr_search* %25, %struct.ocfs2_xattr_search* %26, %struct.ocfs2_xattr_set_ctxt* %22, i32 %194, i32* %17)
  store i32 %195, i32* %16, align 4
  %196 = load i32, i32* %16, align 4
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %198, label %201

198:                                              ; preds = %188
  %199 = load i32, i32* %16, align 4
  %200 = call i32 @mlog_errno(i32 %199)
  br label %257

201:                                              ; preds = %188
  %202 = load i64, i64* @OCFS2_INODE_UPDATE_CREDITS, align 8
  %203 = load i32, i32* %17, align 4
  %204 = sext i32 %203 to i64
  %205 = add nsw i64 %204, %202
  %206 = trunc i64 %205 to i32
  store i32 %206, i32* %17, align 4
  %207 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %208 = load i32, i32* %17, align 4
  %209 = load i32, i32* %19, align 4
  %210 = add nsw i32 %208, %209
  %211 = call i32 @ocfs2_start_trans(%struct.ocfs2_super* %207, i32 %210)
  %212 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 3
  store i32 %211, i32* %212, align 8
  %213 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 3
  %214 = load i32, i32* %213, align 8
  %215 = call i64 @IS_ERR(i32 %214)
  %216 = icmp ne i64 %215, 0
  br i1 %216, label %217, label %223

217:                                              ; preds = %201
  %218 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 3
  %219 = load i32, i32* %218, align 8
  %220 = call i32 @PTR_ERR(i32 %219)
  store i32 %220, i32* %16, align 4
  %221 = load i32, i32* %16, align 4
  %222 = call i32 @mlog_errno(i32 %221)
  br label %257

223:                                              ; preds = %201
  %224 = load %struct.inode*, %struct.inode** %8, align 8
  %225 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %15, align 8
  %226 = call i32 @__ocfs2_xattr_set_handle(%struct.inode* %224, %struct.ocfs2_dinode* %225, %struct.ocfs2_xattr_info* %24, %struct.ocfs2_xattr_search* %25, %struct.ocfs2_xattr_search* %26, %struct.ocfs2_xattr_set_ctxt* %22)
  store i32 %226, i32* %16, align 4
  %227 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %228 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 3
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %227, i32 %229)
  %231 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 2
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %223
  %235 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 2
  %236 = load i64, i64* %235, align 8
  %237 = call i32 @ocfs2_free_alloc_context(i64 %236)
  br label %238

238:                                              ; preds = %234, %223
  %239 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 1
  %240 = load i64, i64* %239, align 8
  %241 = icmp ne i64 %240, 0
  br i1 %241, label %242, label %246

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = call i32 @ocfs2_free_alloc_context(i64 %244)
  br label %246

246:                                              ; preds = %242, %238
  %247 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 0
  %248 = call i64 @ocfs2_dealloc_has_cluster(i32* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %253

250:                                              ; preds = %246
  %251 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %252 = call i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super* %251, i32 1)
  br label %253

253:                                              ; preds = %250, %246
  %254 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %255 = getelementptr inbounds %struct.ocfs2_xattr_set_ctxt, %struct.ocfs2_xattr_set_ctxt* %22, i32 0, i32 0
  %256 = call i32 @ocfs2_run_deallocs(%struct.ocfs2_super* %254, i32* %255)
  br label %257

257:                                              ; preds = %253, %217, %198, %181, %165, %141, %132, %128, %111, %99
  %258 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %259 = icmp ne %struct.ocfs2_refcount_tree* %258, null
  br i1 %259, label %260, label %264

260:                                              ; preds = %257
  %261 = load %struct.ocfs2_super*, %struct.ocfs2_super** %20, align 8
  %262 = load %struct.ocfs2_refcount_tree*, %struct.ocfs2_refcount_tree** %23, align 8
  %263 = call i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super* %261, %struct.ocfs2_refcount_tree* %262, i32 1)
  br label %264

264:                                              ; preds = %260, %257
  %265 = load %struct.inode*, %struct.inode** %8, align 8
  %266 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %265)
  %267 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i32 0, i32 1
  %268 = call i32 @up_write(i32* %267)
  %269 = load i8*, i8** %11, align 8
  %270 = icmp ne i8* %269, null
  br i1 %270, label %284, label %271

271:                                              ; preds = %264
  %272 = load i32, i32* %16, align 4
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %284, label %274

274:                                              ; preds = %271
  %275 = load %struct.inode*, %struct.inode** %8, align 8
  %276 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %277 = call i32 @ocfs2_try_remove_refcount_tree(%struct.inode* %275, %struct.buffer_head* %276)
  store i32 %277, i32* %16, align 4
  %278 = load i32, i32* %16, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %283

280:                                              ; preds = %274
  %281 = load i32, i32* %16, align 4
  %282 = call i32 @mlog_errno(i32 %281)
  br label %283

283:                                              ; preds = %280, %274
  br label %284

284:                                              ; preds = %283, %271, %264
  %285 = load %struct.inode*, %struct.inode** %8, align 8
  %286 = call i32 @ocfs2_inode_unlock(%struct.inode* %285, i32 1)
  br label %287

287:                                              ; preds = %284, %78
  %288 = load %struct.buffer_head*, %struct.buffer_head** %14, align 8
  %289 = call i32 @brelse(%struct.buffer_head* %288)
  %290 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 2
  %291 = load %struct.buffer_head*, %struct.buffer_head** %290, align 8
  %292 = call i32 @brelse(%struct.buffer_head* %291)
  %293 = getelementptr inbounds %struct.ocfs2_xattr_search, %struct.ocfs2_xattr_search* %26, i32 0, i32 1
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @ocfs2_xattr_bucket_free(i32 %294)
  %296 = load i32, i32* %16, align 4
  store i32 %296, i32* %7, align 4
  br label %297

297:                                              ; preds = %287, %67, %57
  %298 = load i32, i32* %7, align 4
  ret i32 %298
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocfs2_supports_xattr(%struct.ocfs2_super*) #1

declare dso_local i32 @ocfs2_xattr_bucket_new(%struct.inode*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_ibody_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_xattr_block_find(%struct.inode*, i32, i8*, %struct.ocfs2_xattr_search*) #1

declare dso_local i32 @ocfs2_prepare_refcount_xattr(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_refcount_tree**, i32*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ocfs2_truncate_log_needs_flush(%struct.ocfs2_super*) #1

declare dso_local i32 @__ocfs2_flush_truncate_log(%struct.ocfs2_super*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ocfs2_init_xattr_set_ctxt(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*, i32, i32*) #1

declare dso_local i32 @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @__ocfs2_xattr_set_handle(%struct.inode*, %struct.ocfs2_dinode*, %struct.ocfs2_xattr_info*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_search*, %struct.ocfs2_xattr_set_ctxt*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_free_alloc_context(i64) #1

declare dso_local i64 @ocfs2_dealloc_has_cluster(i32*) #1

declare dso_local i32 @ocfs2_schedule_truncate_log_flush(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_run_deallocs(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_unlock_refcount_tree(%struct.ocfs2_super*, %struct.ocfs2_refcount_tree*, i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @ocfs2_try_remove_refcount_tree(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_xattr_bucket_free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
