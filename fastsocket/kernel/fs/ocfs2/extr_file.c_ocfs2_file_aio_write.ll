; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_aio_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/ocfs2/extr_file.c_ocfs2_file_aio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kiocb = type { i64, i32, %struct.file* }
%struct.file = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__, %struct.inode* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.inode = type { i64, i32, i32, i32, i32 }
%struct.iovec = type { i32 }
%struct.ocfs2_super = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { i64 }

@.str = private unnamed_addr constant [20 x i8] c"(0x%p, %u, '%.*s')\0A\00", align 1
@SB_FREEZE_WRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@O_DIRECT = common dso_local global i32 0, align 4
@VERIFY_READ = common dso_local global i32 0, align 4
@EIOCBQUEUED = common dso_local global i32 0, align 4
@O_SYNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i64)* @ocfs2_file_aio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_file_aio_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.file*, align 8
  %23 = alloca %struct.inode*, align 8
  %24 = alloca %struct.ocfs2_super*, align 8
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %25 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %26 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %25, i32 0, i32 0
  store i64* %26, i64** %20, align 8
  %27 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %28 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %27, i32 0, i32 2
  %29 = load %struct.file*, %struct.file** %28, align 8
  store %struct.file* %29, %struct.file** %22, align 8
  %30 = load %struct.file*, %struct.file** %22, align 8
  %31 = getelementptr inbounds %struct.file, %struct.file* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load %struct.inode*, %struct.inode** %34, align 8
  store %struct.inode* %35, %struct.inode** %23, align 8
  %36 = load %struct.inode*, %struct.inode** %23, align 8
  %37 = getelementptr inbounds %struct.inode, %struct.inode* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = call %struct.ocfs2_super* @OCFS2_SB(i32 %38)
  store %struct.ocfs2_super* %39, %struct.ocfs2_super** %24, align 8
  %40 = load %struct.file*, %struct.file** %22, align 8
  %41 = load i64, i64* %8, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.file*, %struct.file** %22, align 8
  %44 = getelementptr inbounds %struct.file, %struct.file* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.file*, %struct.file** %22, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @mlog_entry(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.file* %40, i32 %42, i32 %49, i32 %56)
  %58 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %59 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %328

63:                                               ; preds = %4
  %64 = load %struct.inode*, %struct.inode** %23, align 8
  %65 = getelementptr inbounds %struct.inode, %struct.inode* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @SB_FREEZE_WRITE, align 4
  %68 = call i32 @vfs_check_frozen(i32 %66, i32 %67)
  %69 = load %struct.file*, %struct.file** %22, align 8
  %70 = getelementptr inbounds %struct.file, %struct.file* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @O_APPEND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  store i32 %76, i32* %12, align 4
  %77 = load %struct.file*, %struct.file** %22, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @O_DIRECT, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 1, i32 0
  store i32 %84, i32* %11, align 4
  %85 = load %struct.inode*, %struct.inode** %23, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = call i32 @mutex_lock(i32* %86)
  br label %88

88:                                               ; preds = %131, %63
  %89 = load i32, i32* %11, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %88
  %92 = load %struct.inode*, %struct.inode** %23, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 2
  %94 = call i32 @down_read(i32* %93)
  store i32 1, i32* %14, align 4
  br label %95

95:                                               ; preds = %91, %88
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  store i32 %99, i32* %13, align 4
  %100 = load %struct.inode*, %struct.inode** %23, align 8
  %101 = load i32, i32* %13, align 4
  %102 = call i32 @ocfs2_rw_lock(%struct.inode* %100, i32 %101)
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %10, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %95
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  br label %309

108:                                              ; preds = %95
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %15, align 4
  %110 = load %struct.file*, %struct.file** %22, align 8
  %111 = getelementptr inbounds %struct.file, %struct.file* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load %struct.TYPE_9__*, %struct.TYPE_9__** %112, align 8
  %114 = load i64*, i64** %20, align 8
  %115 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %116 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = call i32 @ocfs2_prepare_inode_for_write(%struct.TYPE_9__* %113, i64* %114, i32 %117, i32 %118, i32* %15)
  store i32 %119, i32* %10, align 4
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %108
  %123 = load i32, i32* %10, align 4
  %124 = call i32 @mlog_errno(i32 %123)
  br label %301

125:                                              ; preds = %108
  %126 = load i32, i32* %11, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load i32, i32* %15, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %138, label %131

131:                                              ; preds = %128
  %132 = load %struct.inode*, %struct.inode** %23, align 8
  %133 = load i32, i32* %13, align 4
  %134 = call i32 @ocfs2_rw_unlock(%struct.inode* %132, i32 %133)
  %135 = load %struct.inode*, %struct.inode** %23, align 8
  %136 = getelementptr inbounds %struct.inode, %struct.inode* %135, i32 0, i32 2
  %137 = call i32 @up_read(i32* %136)
  store i32 0, i32* %14, align 4
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %88

138:                                              ; preds = %128, %125
  %139 = load %struct.inode*, %struct.inode** %23, align 8
  %140 = call i64 @i_size_read(%struct.inode* %139)
  store i64 %140, i64* %19, align 8
  %141 = load %struct.inode*, %struct.inode** %23, align 8
  %142 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %141)
  %143 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  store i64 %144, i64* %21, align 8
  %145 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %146 = load i32, i32* %13, align 4
  %147 = call i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb* %145, i32 %146)
  %148 = load i32, i32* %11, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %198

150:                                              ; preds = %138
  %151 = load %struct.iovec*, %struct.iovec** %7, align 8
  %152 = load i32, i32* @VERIFY_READ, align 4
  %153 = call i32 @generic_segment_checks(%struct.iovec* %151, i64* %8, i64* %17, i32 %152)
  store i32 %153, i32* %10, align 4
  %154 = load i32, i32* %10, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %150
  br label %205

157:                                              ; preds = %150
  %158 = load i64, i64* %17, align 8
  store i64 %158, i64* %18, align 8
  %159 = load %struct.file*, %struct.file** %22, align 8
  %160 = load i64*, i64** %20, align 8
  %161 = load %struct.inode*, %struct.inode** %23, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 8
  %164 = call i32 @S_ISBLK(i32 %163)
  %165 = call i32 @generic_write_checks(%struct.file* %159, i64* %160, i64* %18, i32 %164)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %169

168:                                              ; preds = %157
  br label %205

169:                                              ; preds = %157
  %170 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %171 = load %struct.iovec*, %struct.iovec** %7, align 8
  %172 = load i64*, i64** %20, align 8
  %173 = load i64, i64* %172, align 8
  %174 = load i64*, i64** %20, align 8
  %175 = load i64, i64* %18, align 8
  %176 = load i64, i64* %17, align 8
  %177 = call i32 @generic_file_direct_write(%struct.kiocb* %170, %struct.iovec* %171, i64* %8, i64 %173, i64* %174, i64 %175, i64 %176)
  store i32 %177, i32* %16, align 4
  %178 = load i32, i32* %16, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %197

180:                                              ; preds = %169
  %181 = load i64*, i64** %20, align 8
  %182 = load i64, i64* %181, align 8
  %183 = load i64, i64* %18, align 8
  %184 = add i64 %182, %183
  %185 = load %struct.inode*, %struct.inode** %23, align 8
  %186 = getelementptr inbounds %struct.inode, %struct.inode* %185, i32 0, i32 0
  %187 = load i64, i64* %186, align 8
  %188 = icmp ugt i64 %184, %187
  br i1 %188, label %189, label %195

189:                                              ; preds = %180
  %190 = load %struct.inode*, %struct.inode** %23, align 8
  %191 = load %struct.inode*, %struct.inode** %23, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = call i32 @vmtruncate(%struct.inode* %190, i64 %193)
  br label %195

195:                                              ; preds = %189, %180
  %196 = load i32, i32* %16, align 4
  store i32 %196, i32* %10, align 4
  br label %205

197:                                              ; preds = %169
  br label %204

198:                                              ; preds = %138
  %199 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %200 = load %struct.iovec*, %struct.iovec** %7, align 8
  %201 = load i64, i64* %8, align 8
  %202 = load i64*, i64** %20, align 8
  %203 = call i32 @__generic_file_aio_write(%struct.kiocb* %199, %struct.iovec* %200, i64 %201, i64* %202)
  store i32 %203, i32* %16, align 4
  br label %204

204:                                              ; preds = %198, %197
  br label %205

205:                                              ; preds = %204, %195, %168, %156
  %206 = load i32, i32* %10, align 4
  %207 = load i32, i32* @EIOCBQUEUED, align 4
  %208 = sub nsw i32 0, %207
  %209 = icmp eq i32 %206, %208
  br i1 %209, label %210, label %218

210:                                              ; preds = %205
  %211 = load %struct.file*, %struct.file** %22, align 8
  %212 = getelementptr inbounds %struct.file, %struct.file* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = load i32, i32* @O_DIRECT, align 4
  %215 = and i32 %213, %214
  %216 = icmp ne i32 %215, 0
  %217 = xor i1 %216, true
  br label %218

218:                                              ; preds = %210, %205
  %219 = phi i1 [ false, %205 ], [ %217, %210 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @BUG_ON(i32 %220)
  %222 = load %struct.file*, %struct.file** %22, align 8
  %223 = getelementptr inbounds %struct.file, %struct.file* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = load i32, i32* @O_SYNC, align 4
  %226 = and i32 %224, %225
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %228, label %231

228:                                              ; preds = %218
  %229 = load i32, i32* %11, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %235

231:                                              ; preds = %228, %218
  %232 = load %struct.inode*, %struct.inode** %23, align 8
  %233 = call i64 @IS_SYNC(%struct.inode* %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %290

235:                                              ; preds = %231, %228
  %236 = load %struct.file*, %struct.file** %22, align 8
  %237 = getelementptr inbounds %struct.file, %struct.file* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = load i64, i64* %9, align 8
  %240 = load i64, i64* %9, align 8
  %241 = load i64, i64* %18, align 8
  %242 = add i64 %240, %241
  %243 = sub i64 %242, 1
  %244 = call i32 @filemap_fdatawrite_range(i32 %238, i64 %239, i64 %243)
  store i32 %244, i32* %10, align 4
  %245 = load i32, i32* %10, align 4
  %246 = icmp slt i32 %245, 0
  br i1 %246, label %247, label %249

247:                                              ; preds = %235
  %248 = load i32, i32* %10, align 4
  store i32 %248, i32* %16, align 4
  br label %249

249:                                              ; preds = %247, %235
  %250 = load i32, i32* %10, align 4
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %276, label %252

252:                                              ; preds = %249
  %253 = load i64, i64* %19, align 8
  %254 = load %struct.inode*, %struct.inode** %23, align 8
  %255 = call i64 @i_size_read(%struct.inode* %254)
  %256 = icmp ne i64 %253, %255
  br i1 %256, label %264, label %257

257:                                              ; preds = %252
  %258 = load i64, i64* %21, align 8
  %259 = load %struct.inode*, %struct.inode** %23, align 8
  %260 = call %struct.TYPE_10__* @OCFS2_I(%struct.inode* %259)
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 0
  %262 = load i64, i64* %261, align 8
  %263 = icmp ne i64 %258, %262
  br i1 %263, label %264, label %276

264:                                              ; preds = %257, %252
  %265 = load %struct.ocfs2_super*, %struct.ocfs2_super** %24, align 8
  %266 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %265, i32 0, i32 0
  %267 = load %struct.TYPE_8__*, %struct.TYPE_8__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = call i32 @jbd2_journal_force_commit(i32 %269)
  store i32 %270, i32* %10, align 4
  %271 = load i32, i32* %10, align 4
  %272 = icmp slt i32 %271, 0
  br i1 %272, label %273, label %275

273:                                              ; preds = %264
  %274 = load i32, i32* %10, align 4
  store i32 %274, i32* %16, align 4
  br label %275

275:                                              ; preds = %273, %264
  br label %276

276:                                              ; preds = %275, %257, %249
  %277 = load i32, i32* %10, align 4
  %278 = icmp ne i32 %277, 0
  br i1 %278, label %289, label %279

279:                                              ; preds = %276
  %280 = load %struct.file*, %struct.file** %22, align 8
  %281 = getelementptr inbounds %struct.file, %struct.file* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load i64, i64* %9, align 8
  %284 = load i64, i64* %9, align 8
  %285 = load i64, i64* %18, align 8
  %286 = add i64 %284, %285
  %287 = sub i64 %286, 1
  %288 = call i32 @filemap_fdatawait_range(i32 %282, i64 %283, i64 %287)
  store i32 %288, i32* %10, align 4
  br label %289

289:                                              ; preds = %279, %276
  br label %290

290:                                              ; preds = %289, %231
  %291 = load i32, i32* %10, align 4
  %292 = load i32, i32* @EIOCBQUEUED, align 4
  %293 = sub nsw i32 0, %292
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %299, label %295

295:                                              ; preds = %290
  %296 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %297 = call i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb* %296)
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %300, label %299

299:                                              ; preds = %295, %290
  store i32 -1, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %300

300:                                              ; preds = %299, %295
  br label %301

301:                                              ; preds = %300, %122
  %302 = load i32, i32* %13, align 4
  %303 = icmp ne i32 %302, -1
  br i1 %303, label %304, label %308

304:                                              ; preds = %301
  %305 = load %struct.inode*, %struct.inode** %23, align 8
  %306 = load i32, i32* %13, align 4
  %307 = call i32 @ocfs2_rw_unlock(%struct.inode* %305, i32 %306)
  br label %308

308:                                              ; preds = %304, %301
  br label %309

309:                                              ; preds = %308, %105
  %310 = load i32, i32* %14, align 4
  %311 = icmp ne i32 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %309
  %313 = load %struct.inode*, %struct.inode** %23, align 8
  %314 = getelementptr inbounds %struct.inode, %struct.inode* %313, i32 0, i32 2
  %315 = call i32 @up_read(i32* %314)
  br label %316

316:                                              ; preds = %312, %309
  %317 = load %struct.inode*, %struct.inode** %23, align 8
  %318 = getelementptr inbounds %struct.inode, %struct.inode* %317, i32 0, i32 1
  %319 = call i32 @mutex_unlock(i32* %318)
  %320 = load i32, i32* %16, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %322, label %324

322:                                              ; preds = %316
  %323 = load i32, i32* %16, align 4
  store i32 %323, i32* %10, align 4
  br label %324

324:                                              ; preds = %322, %316
  %325 = load i32, i32* %10, align 4
  %326 = call i32 @mlog_exit(i32 %325)
  %327 = load i32, i32* %10, align 4
  store i32 %327, i32* %5, align 4
  br label %328

328:                                              ; preds = %324, %62
  %329 = load i32, i32* %5, align 4
  ret i32 %329
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(i32) #1

declare dso_local i32 @mlog_entry(i8*, %struct.file*, i32, i32, i32) #1

declare dso_local i32 @vfs_check_frozen(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @ocfs2_rw_lock(%struct.inode*, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_prepare_inode_for_write(%struct.TYPE_9__*, i64*, i32, i32, i32*) #1

declare dso_local i32 @ocfs2_rw_unlock(%struct.inode*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @i_size_read(%struct.inode*) #1

declare dso_local %struct.TYPE_10__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_iocb_set_rw_locked(%struct.kiocb*, i32) #1

declare dso_local i32 @generic_segment_checks(%struct.iovec*, i64*, i64*, i32) #1

declare dso_local i32 @generic_write_checks(%struct.file*, i64*, i64*, i32) #1

declare dso_local i32 @S_ISBLK(i32) #1

declare dso_local i32 @generic_file_direct_write(%struct.kiocb*, %struct.iovec*, i64*, i64, i64*, i64, i64) #1

declare dso_local i32 @vmtruncate(%struct.inode*, i64) #1

declare dso_local i32 @__generic_file_aio_write(%struct.kiocb*, %struct.iovec*, i64, i64*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i32 @filemap_fdatawrite_range(i32, i64, i64) #1

declare dso_local i32 @jbd2_journal_force_commit(i32) #1

declare dso_local i32 @filemap_fdatawait_range(i32, i64, i64) #1

declare dso_local i32 @ocfs2_iocb_is_rw_locked(%struct.kiocb*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mlog_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
