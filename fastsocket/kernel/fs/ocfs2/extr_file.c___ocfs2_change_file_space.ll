; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c___ocfs2_change_file_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c___ocfs2_change_file_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i32, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.ocfs2_space_resv = type { i32, i64, i64 }
%struct.ocfs2_super = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i32 }

@EROFS = common dso_local global i32 0, align 4
@S_IMMUTABLE = common dso_local global i32 0, align 4
@S_APPEND = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_INODE_UPDATE_CREDITS = common dso_local global i32 0, align 4
@CURRENT_TIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.inode*, i64, i32, %struct.ocfs2_space_resv*, i32)* @__ocfs2_change_file_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ocfs2_change_file_space(%struct.file* %0, %struct.inode* %1, i64 %2, i32 %3, %struct.ocfs2_space_resv* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.inode*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_space_resv*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca %struct.buffer_head*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store %struct.inode* %1, %struct.inode** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store %struct.ocfs2_space_resv* %4, %struct.ocfs2_space_resv** %12, align 8
  store i32 %5, i32* %13, align 4
  %21 = load %struct.inode*, %struct.inode** %9, align 8
  %22 = getelementptr inbounds %struct.inode, %struct.inode* %21, i32 0, i32 4
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__* %23)
  store %struct.ocfs2_super* %24, %struct.ocfs2_super** %17, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %18, align 8
  %25 = load %struct.inode*, %struct.inode** %9, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  store i64 %29, i64* %20, align 8
  %30 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %31 = call i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %6
  %34 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %35 = call i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33, %6
  %38 = load i32, i32* @EROFS, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %7, align 4
  br label %274

40:                                               ; preds = %33
  %41 = load %struct.inode*, %struct.inode** %9, align 8
  %42 = getelementptr inbounds %struct.inode, %struct.inode* %41, i32 0, i32 1
  %43 = call i32 @mutex_lock(i32* %42)
  %44 = load %struct.inode*, %struct.inode** %9, align 8
  %45 = call i32 @ocfs2_rw_lock(%struct.inode* %44, i32 1)
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load i32, i32* %14, align 4
  %50 = call i32 @mlog_errno(i32 %49)
  br label %269

51:                                               ; preds = %40
  %52 = load %struct.inode*, %struct.inode** %9, align 8
  %53 = call i32 @ocfs2_inode_lock(%struct.inode* %52, %struct.buffer_head** %18, i32 1)
  store i32 %53, i32* %14, align 4
  %54 = load i32, i32* %14, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @mlog_errno(i32 %57)
  br label %266

59:                                               ; preds = %51
  %60 = load %struct.inode*, %struct.inode** %9, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @S_IMMUTABLE, align 4
  %64 = load i32, i32* @S_APPEND, align 4
  %65 = or i32 %63, %64
  %66 = and i32 %62, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %59
  %69 = load i32, i32* @EPERM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %14, align 4
  br label %261

71:                                               ; preds = %59
  %72 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %73 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  switch i32 %74, label %89 [
    i32 0, label %75
    i32 1, label %76
    i32 2, label %82
  ]

75:                                               ; preds = %71
  br label %92

76:                                               ; preds = %71
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %79 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = add nsw i64 %80, %77
  store i64 %81, i64* %79, align 8
  br label %92

82:                                               ; preds = %71
  %83 = load %struct.inode*, %struct.inode** %9, align 8
  %84 = call i64 @i_size_read(%struct.inode* %83)
  %85 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %86 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %85, i32 0, i32 1
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  br label %92

89:                                               ; preds = %71
  %90 = load i32, i32* @EINVAL, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %14, align 4
  br label %261

92:                                               ; preds = %82, %76, %75
  %93 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %94 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %93, i32 0, i32 0
  store i32 0, i32* %94, align 8
  %95 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %96 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %95, i32 0, i32 2
  %97 = load i64, i64* %96, align 8
  %98 = icmp sgt i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %101 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %100, i32 0, i32 2
  %102 = load i64, i64* %101, align 8
  %103 = sub nsw i64 %102, 1
  br label %108

104:                                              ; preds = %92
  %105 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %106 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %105, i32 0, i32 2
  %107 = load i64, i64* %106, align 8
  br label %108

108:                                              ; preds = %104, %99
  %109 = phi i64 [ %103, %99 ], [ %107, %104 ]
  store i64 %109, i64* %15, align 8
  %110 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %111 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %110, i32 0, i32 1
  %112 = load i64, i64* %111, align 8
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %135, label %114

114:                                              ; preds = %108
  %115 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %116 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %20, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %135, label %120

120:                                              ; preds = %114
  %121 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %122 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* %15, align 8
  %125 = add i64 %123, %124
  %126 = icmp ult i64 %125, 0
  br i1 %126, label %135, label %127

127:                                              ; preds = %120
  %128 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %129 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* %15, align 8
  %132 = add i64 %130, %131
  %133 = load i64, i64* %20, align 8
  %134 = icmp ugt i64 %132, %133
  br i1 %134, label %135, label %138

135:                                              ; preds = %127, %120, %114, %108
  %136 = load i32, i32* @EINVAL, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %14, align 4
  br label %261

138:                                              ; preds = %127
  %139 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %140 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %143 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %142, i32 0, i32 2
  %144 = load i64, i64* %143, align 8
  %145 = add nsw i64 %141, %144
  store i64 %145, i64* %16, align 8
  %146 = load i32, i32* %11, align 4
  %147 = icmp eq i32 %146, 131
  br i1 %147, label %151, label %148

148:                                              ; preds = %138
  %149 = load i32, i32* %11, align 4
  %150 = icmp eq i32 %149, 130
  br i1 %150, label %151, label %160

151:                                              ; preds = %148, %138
  %152 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %153 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %152, i32 0, i32 2
  %154 = load i64, i64* %153, align 8
  %155 = icmp sle i64 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %151
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %14, align 4
  br label %261

159:                                              ; preds = %151
  br label %160

160:                                              ; preds = %159, %148
  %161 = load %struct.file*, %struct.file** %8, align 8
  %162 = icmp ne %struct.file* %161, null
  br i1 %162, label %163, label %180

163:                                              ; preds = %160
  %164 = load %struct.file*, %struct.file** %8, align 8
  %165 = getelementptr inbounds %struct.file, %struct.file* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = call i64 @should_remove_suid(i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %180

170:                                              ; preds = %163
  %171 = load %struct.inode*, %struct.inode** %9, align 8
  %172 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %173 = call i32 @__ocfs2_write_remove_suid(%struct.inode* %171, %struct.buffer_head* %172)
  store i32 %173, i32* %14, align 4
  %174 = load i32, i32* %14, align 4
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %170
  %177 = load i32, i32* %14, align 4
  %178 = call i32 @mlog_errno(i32 %177)
  br label %261

179:                                              ; preds = %170
  br label %180

180:                                              ; preds = %179, %163, %160
  %181 = load %struct.inode*, %struct.inode** %9, align 8
  %182 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %181)
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 0
  %184 = call i32 @down_write(i32* %183)
  %185 = load i32, i32* %11, align 4
  switch i32 %185, label %205 [
    i32 131, label %186
    i32 130, label %186
    i32 129, label %195
    i32 128, label %195
  ]

186:                                              ; preds = %180, %180
  %187 = load %struct.inode*, %struct.inode** %9, align 8
  %188 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %189 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %192 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %191, i32 0, i32 2
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @ocfs2_allocate_unwritten_extents(%struct.inode* %187, i64 %190, i64 %193)
  store i32 %194, i32* %14, align 4
  br label %208

195:                                              ; preds = %180, %180
  %196 = load %struct.inode*, %struct.inode** %9, align 8
  %197 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %198 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %199 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %198, i32 0, i32 1
  %200 = load i64, i64* %199, align 8
  %201 = load %struct.ocfs2_space_resv*, %struct.ocfs2_space_resv** %12, align 8
  %202 = getelementptr inbounds %struct.ocfs2_space_resv, %struct.ocfs2_space_resv* %201, i32 0, i32 2
  %203 = load i64, i64* %202, align 8
  %204 = call i32 @ocfs2_remove_inode_range(%struct.inode* %196, %struct.buffer_head* %197, i64 %200, i64 %203)
  store i32 %204, i32* %14, align 4
  br label %208

205:                                              ; preds = %180
  %206 = load i32, i32* @EINVAL, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %14, align 4
  br label %208

208:                                              ; preds = %205, %195, %186
  %209 = load %struct.inode*, %struct.inode** %9, align 8
  %210 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %209)
  %211 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %210, i32 0, i32 0
  %212 = call i32 @up_write(i32* %211)
  %213 = load i32, i32* %14, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %218

215:                                              ; preds = %208
  %216 = load i32, i32* %14, align 4
  %217 = call i32 @mlog_errno(i32 %216)
  br label %261

218:                                              ; preds = %208
  %219 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %220 = load i32, i32* @OCFS2_INODE_UPDATE_CREDITS, align 4
  %221 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %219, i32 %220)
  store i32* %221, i32** %19, align 8
  %222 = load i32*, i32** %19, align 8
  %223 = call i64 @IS_ERR(i32* %222)
  %224 = icmp ne i64 %223, 0
  br i1 %224, label %225, label %230

225:                                              ; preds = %218
  %226 = load i32*, i32** %19, align 8
  %227 = call i32 @PTR_ERR(i32* %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = call i32 @mlog_errno(i32 %228)
  br label %261

230:                                              ; preds = %218
  %231 = load i32, i32* %13, align 4
  %232 = icmp ne i32 %231, 0
  br i1 %232, label %233, label %242

233:                                              ; preds = %230
  %234 = load %struct.inode*, %struct.inode** %9, align 8
  %235 = call i64 @i_size_read(%struct.inode* %234)
  %236 = load i64, i64* %16, align 8
  %237 = icmp slt i64 %235, %236
  br i1 %237, label %238, label %242

238:                                              ; preds = %233
  %239 = load %struct.inode*, %struct.inode** %9, align 8
  %240 = load i64, i64* %16, align 8
  %241 = call i32 @i_size_write(%struct.inode* %239, i64 %240)
  br label %242

242:                                              ; preds = %238, %233, %230
  %243 = load i32, i32* @CURRENT_TIME, align 4
  %244 = load %struct.inode*, %struct.inode** %9, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 2
  store i32 %243, i32* %245, align 8
  %246 = load %struct.inode*, %struct.inode** %9, align 8
  %247 = getelementptr inbounds %struct.inode, %struct.inode* %246, i32 0, i32 3
  store i32 %243, i32* %247, align 4
  %248 = load i32*, i32** %19, align 8
  %249 = load %struct.inode*, %struct.inode** %9, align 8
  %250 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %251 = call i32 @ocfs2_mark_inode_dirty(i32* %248, %struct.inode* %249, %struct.buffer_head* %250)
  store i32 %251, i32* %14, align 4
  %252 = load i32, i32* %14, align 4
  %253 = icmp slt i32 %252, 0
  br i1 %253, label %254, label %257

254:                                              ; preds = %242
  %255 = load i32, i32* %14, align 4
  %256 = call i32 @mlog_errno(i32 %255)
  br label %257

257:                                              ; preds = %254, %242
  %258 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %259 = load i32*, i32** %19, align 8
  %260 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %258, i32* %259)
  br label %261

261:                                              ; preds = %257, %225, %215, %176, %156, %135, %89, %68
  %262 = load %struct.buffer_head*, %struct.buffer_head** %18, align 8
  %263 = call i32 @brelse(%struct.buffer_head* %262)
  %264 = load %struct.inode*, %struct.inode** %9, align 8
  %265 = call i32 @ocfs2_inode_unlock(%struct.inode* %264, i32 1)
  br label %266

266:                                              ; preds = %261, %56
  %267 = load %struct.inode*, %struct.inode** %9, align 8
  %268 = call i32 @ocfs2_rw_unlock(%struct.inode* %267, i32 1)
  br label %269

269:                                              ; preds = %266, %48
  %270 = load %struct.inode*, %struct.inode** %9, align 8
  %271 = getelementptr inbounds %struct.inode, %struct.inode* %270, i32 0, i32 1
  %272 = call i32 @mutex_unlock(i32* %271)
  %273 = load i32, i32* %14, align 4
  store i32 %273, i32* %7, align 4
  br label %274

274:                                              ; preds = %269, %37
  %275 = load i32, i32* %7, align 4
  ret i32 %275
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_5__*) #1

declare dso_local i64 @ocfs2_is_hard_readonly(%struct.ocfs2_super*) #1

declare dso_local i64 @ocfs2_is_soft_readonly(%struct.ocfs2_super*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local i64 @should_remove_suid(i32) #1

declare dso_local i32 @__ocfs2_write_remove_suid(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_allocate_unwritten_extents(%struct.inode*, i64, i64) #1

declare dso_local i32 @ocfs2_remove_inode_range(%struct.inode*, %struct.buffer_head*, i64, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local i32 @ocfs2_mark_inode_dirty(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
