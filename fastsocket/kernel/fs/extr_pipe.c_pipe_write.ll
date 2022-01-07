; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_pipe.c_pipe_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pipe_buf_operations = type { i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i64 }
%struct.pipe_inode_info = type { i32, i32, i32, i32, i32, %struct.page*, %struct.pipe_buffer*, i32 }
%struct.page = type { i32 }
%struct.pipe_buffer = type { i32, i32, %struct.pipe_buf_operations*, %struct.page* }
%struct.kiocb = type { %struct.file* }
%struct.file = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32, %struct.pipe_inode_info* }
%struct.iovec = type { i32 }

@SIGPIPE = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PIPE_BUFFERS = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KM_USER0 = common dso_local global i32 0, align 4
@anon_pipe_buf_ops = common dso_local global %struct.pipe_buf_operations zeroinitializer, align 8
@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kiocb*, %struct.iovec*, i64, i32)* @pipe_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pipe_write(%struct.kiocb* %0, %struct.iovec* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.kiocb*, align 8
  %7 = alloca %struct.iovec*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.file*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.pipe_inode_info*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.iovec*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.pipe_buffer*, align 8
  %20 = alloca %struct.pipe_buf_operations*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i8*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.pipe_buffer*, align 8
  %28 = alloca %struct.page*, align 8
  %29 = alloca i8*, align 8
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  store %struct.kiocb* %0, %struct.kiocb** %6, align 8
  store %struct.iovec* %1, %struct.iovec** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %32 = load %struct.kiocb*, %struct.kiocb** %6, align 8
  %33 = getelementptr inbounds %struct.kiocb, %struct.kiocb* %32, i32 0, i32 0
  %34 = load %struct.file*, %struct.file** %33, align 8
  store %struct.file* %34, %struct.file** %10, align 8
  %35 = load %struct.file*, %struct.file** %10, align 8
  %36 = getelementptr inbounds %struct.file, %struct.file* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %11, align 8
  %41 = load %struct.iovec*, %struct.iovec** %7, align 8
  store %struct.iovec* %41, %struct.iovec** %15, align 8
  %42 = load %struct.iovec*, %struct.iovec** %15, align 8
  %43 = load i64, i64* %8, align 8
  %44 = call i64 @iov_length(%struct.iovec* %42, i64 %43)
  store i64 %44, i64* %16, align 8
  %45 = load i64, i64* %16, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %411

51:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  %52 = load %struct.inode*, %struct.inode** %11, align 8
  %53 = getelementptr inbounds %struct.inode, %struct.inode* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @sb_start_write(i32 %54)
  %56 = load %struct.inode*, %struct.inode** %11, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 1
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.inode*, %struct.inode** %11, align 8
  %60 = getelementptr inbounds %struct.inode, %struct.inode* %59, i32 0, i32 2
  %61 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %60, align 8
  store %struct.pipe_inode_info* %61, %struct.pipe_inode_info** %12, align 8
  %62 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %63 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %51
  %67 = load i32, i32* @SIGPIPE, align 4
  %68 = load i32, i32* @current, align 4
  %69 = call i32 @send_sig(i32 %67, i32 %68, i32 0)
  %70 = load i32, i32* @EPIPE, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %13, align 4
  br label %384

72:                                               ; preds = %51
  %73 = load i64, i64* %16, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = sext i32 %75 to i64
  %77 = and i64 %73, %76
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %17, align 4
  %79 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %80 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %185

83:                                               ; preds = %72
  %84 = load i32, i32* %17, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %185

86:                                               ; preds = %83
  %87 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %88 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %91 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %89, %92
  %94 = sub nsw i32 %93, 1
  %95 = load i32, i32* @PIPE_BUFFERS, align 4
  %96 = sub nsw i32 %95, 1
  %97 = and i32 %94, %96
  store i32 %97, i32* %18, align 4
  %98 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %99 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %98, i32 0, i32 6
  %100 = load %struct.pipe_buffer*, %struct.pipe_buffer** %99, align 8
  %101 = load i32, i32* %18, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %100, i64 %102
  store %struct.pipe_buffer* %103, %struct.pipe_buffer** %19, align 8
  %104 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %105 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %104, i32 0, i32 2
  %106 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %105, align 8
  store %struct.pipe_buf_operations* %106, %struct.pipe_buf_operations** %20, align 8
  %107 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %108 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %111 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %109, %112
  store i32 %113, i32* %21, align 4
  %114 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %20, align 8
  %115 = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %114, i32 0, i32 3
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %184

118:                                              ; preds = %86
  %119 = load i32, i32* %21, align 4
  %120 = load i32, i32* %17, align 4
  %121 = add nsw i32 %119, %120
  %122 = load i32, i32* @PAGE_SIZE, align 4
  %123 = icmp sle i32 %121, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %118
  store i32 1, i32* %23, align 4
  %125 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %20, align 8
  %126 = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %125, i32 0, i32 0
  %127 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*)** %126, align 8
  %128 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %129 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %130 = call i32 %127(%struct.pipe_inode_info* %128, %struct.pipe_buffer* %129)
  store i32 %130, i32* %22, align 4
  %131 = load i32, i32* %22, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %134

133:                                              ; preds = %124
  br label %384

134:                                              ; preds = %124
  %135 = load %struct.iovec*, %struct.iovec** %15, align 8
  %136 = load i32, i32* %17, align 4
  %137 = call i32 @iov_fault_in_pages_read(%struct.iovec* %135, i32 %136)
  br label %138

138:                                              ; preds = %167, %134
  %139 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %20, align 8
  %140 = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %139, i32 0, i32 2
  %141 = load i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)*, i8* (%struct.pipe_inode_info*, %struct.pipe_buffer*, i32)** %140, align 8
  %142 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %143 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %144 = load i32, i32* %23, align 4
  %145 = call i8* %141(%struct.pipe_inode_info* %142, %struct.pipe_buffer* %143, i32 %144)
  store i8* %145, i8** %24, align 8
  %146 = load i32, i32* %21, align 4
  %147 = load i8*, i8** %24, align 8
  %148 = sext i32 %146 to i64
  %149 = getelementptr i8, i8* %147, i64 %148
  %150 = load %struct.iovec*, %struct.iovec** %15, align 8
  %151 = load i32, i32* %17, align 4
  %152 = load i32, i32* %23, align 4
  %153 = call i32 @pipe_iov_copy_from_user(i8* %149, %struct.iovec* %150, i32 %151, i32 %152)
  store i32 %153, i32* %22, align 4
  %154 = load %struct.pipe_buf_operations*, %struct.pipe_buf_operations** %20, align 8
  %155 = getelementptr inbounds %struct.pipe_buf_operations, %struct.pipe_buf_operations* %154, i32 0, i32 1
  %156 = load i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)*, i32 (%struct.pipe_inode_info*, %struct.pipe_buffer*, i8*)** %155, align 8
  %157 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %158 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %159 = load i8*, i8** %24, align 8
  %160 = call i32 %156(%struct.pipe_inode_info* %157, %struct.pipe_buffer* %158, i8* %159)
  %161 = load i32, i32* %22, align 4
  store i32 %161, i32* %13, align 4
  store i32 1, i32* %14, align 4
  %162 = load i32, i32* %22, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %138
  %165 = load i32, i32* %23, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %168

167:                                              ; preds = %164
  store i32 0, i32* %23, align 4
  br label %138

168:                                              ; preds = %164
  br label %384

169:                                              ; preds = %138
  %170 = load i32, i32* %17, align 4
  %171 = load %struct.pipe_buffer*, %struct.pipe_buffer** %19, align 8
  %172 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  %175 = load i32, i32* %17, align 4
  %176 = sext i32 %175 to i64
  %177 = load i64, i64* %16, align 8
  %178 = sub i64 %177, %176
  store i64 %178, i64* %16, align 8
  %179 = load i32, i32* %17, align 4
  store i32 %179, i32* %13, align 4
  %180 = load i64, i64* %16, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %169
  br label %384

183:                                              ; preds = %169
  br label %184

184:                                              ; preds = %183, %118, %86
  br label %185

185:                                              ; preds = %184, %83, %72
  br label %186

186:                                              ; preds = %372, %334, %185
  %187 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %188 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 8
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %201, label %191

191:                                              ; preds = %186
  %192 = load i32, i32* @SIGPIPE, align 4
  %193 = load i32, i32* @current, align 4
  %194 = call i32 @send_sig(i32 %192, i32 %193, i32 0)
  %195 = load i32, i32* %13, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %200, label %197

197:                                              ; preds = %191
  %198 = load i32, i32* @EPIPE, align 4
  %199 = sub nsw i32 0, %198
  store i32 %199, i32* %13, align 4
  br label %200

200:                                              ; preds = %197, %191
  br label %383

201:                                              ; preds = %186
  %202 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %203 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %25, align 4
  %205 = load i32, i32* %25, align 4
  %206 = load i32, i32* @PIPE_BUFFERS, align 4
  %207 = icmp slt i32 %205, %206
  br i1 %207, label %208, label %330

208:                                              ; preds = %201
  %209 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %210 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %25, align 4
  %213 = add nsw i32 %211, %212
  %214 = load i32, i32* @PIPE_BUFFERS, align 4
  %215 = sub nsw i32 %214, 1
  %216 = and i32 %213, %215
  store i32 %216, i32* %26, align 4
  %217 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %218 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %217, i32 0, i32 6
  %219 = load %struct.pipe_buffer*, %struct.pipe_buffer** %218, align 8
  %220 = load i32, i32* %26, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %219, i64 %221
  store %struct.pipe_buffer* %222, %struct.pipe_buffer** %27, align 8
  %223 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %224 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %223, i32 0, i32 5
  %225 = load %struct.page*, %struct.page** %224, align 8
  store %struct.page* %225, %struct.page** %28, align 8
  store i32 1, i32* %31, align 4
  %226 = load %struct.page*, %struct.page** %28, align 8
  %227 = icmp ne %struct.page* %226, null
  br i1 %227, label %250, label %228

228:                                              ; preds = %208
  %229 = load i32, i32* @GFP_HIGHUSER, align 4
  %230 = call %struct.page* @alloc_page(i32 %229)
  store %struct.page* %230, %struct.page** %28, align 8
  %231 = load %struct.page*, %struct.page** %28, align 8
  %232 = icmp ne %struct.page* %231, null
  %233 = xor i1 %232, true
  %234 = zext i1 %233 to i32
  %235 = call i64 @unlikely(i32 %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %246

237:                                              ; preds = %228
  %238 = load i32, i32* %13, align 4
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %241

240:                                              ; preds = %237
  br label %244

241:                                              ; preds = %237
  %242 = load i32, i32* @ENOMEM, align 4
  %243 = sub nsw i32 0, %242
  br label %244

244:                                              ; preds = %241, %240
  %245 = phi i32 [ %238, %240 ], [ %243, %241 ]
  store i32 %245, i32* %13, align 4
  br label %383

246:                                              ; preds = %228
  %247 = load %struct.page*, %struct.page** %28, align 8
  %248 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %249 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %248, i32 0, i32 5
  store %struct.page* %247, %struct.page** %249, align 8
  br label %250

250:                                              ; preds = %246, %208
  store i32 1, i32* %14, align 4
  %251 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %251, i32* %17, align 4
  %252 = load i32, i32* %17, align 4
  %253 = sext i32 %252 to i64
  %254 = load i64, i64* %16, align 8
  %255 = icmp ugt i64 %253, %254
  br i1 %255, label %256, label %259

256:                                              ; preds = %250
  %257 = load i64, i64* %16, align 8
  %258 = trunc i64 %257 to i32
  store i32 %258, i32* %17, align 4
  br label %259

259:                                              ; preds = %256, %250
  %260 = load %struct.iovec*, %struct.iovec** %15, align 8
  %261 = load i32, i32* %17, align 4
  %262 = call i32 @iov_fault_in_pages_read(%struct.iovec* %260, i32 %261)
  br label %263

263:                                              ; preds = %295, %259
  %264 = load i32, i32* %31, align 4
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load %struct.page*, %struct.page** %28, align 8
  %268 = load i32, i32* @KM_USER0, align 4
  %269 = call i8* @kmap_atomic(%struct.page* %267, i32 %268)
  store i8* %269, i8** %29, align 8
  br label %273

270:                                              ; preds = %263
  %271 = load %struct.page*, %struct.page** %28, align 8
  %272 = call i8* @kmap(%struct.page* %271)
  store i8* %272, i8** %29, align 8
  br label %273

273:                                              ; preds = %270, %266
  %274 = load i8*, i8** %29, align 8
  %275 = load %struct.iovec*, %struct.iovec** %15, align 8
  %276 = load i32, i32* %17, align 4
  %277 = load i32, i32* %31, align 4
  %278 = call i32 @pipe_iov_copy_from_user(i8* %274, %struct.iovec* %275, i32 %276, i32 %277)
  store i32 %278, i32* %30, align 4
  %279 = load i32, i32* %31, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %281, label %285

281:                                              ; preds = %273
  %282 = load i8*, i8** %29, align 8
  %283 = load i32, i32* @KM_USER0, align 4
  %284 = call i32 @kunmap_atomic(i8* %282, i32 %283)
  br label %288

285:                                              ; preds = %273
  %286 = load %struct.page*, %struct.page** %28, align 8
  %287 = call i32 @kunmap(%struct.page* %286)
  br label %288

288:                                              ; preds = %285, %281
  %289 = load i32, i32* %30, align 4
  %290 = call i64 @unlikely(i32 %289)
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %292, label %302

292:                                              ; preds = %288
  %293 = load i32, i32* %31, align 4
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %295, label %296

295:                                              ; preds = %292
  store i32 0, i32* %31, align 4
  br label %263

296:                                              ; preds = %292
  %297 = load i32, i32* %13, align 4
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %301, label %299

299:                                              ; preds = %296
  %300 = load i32, i32* %30, align 4
  store i32 %300, i32* %13, align 4
  br label %301

301:                                              ; preds = %299, %296
  br label %383

302:                                              ; preds = %288
  %303 = load i32, i32* %17, align 4
  %304 = load i32, i32* %13, align 4
  %305 = add nsw i32 %304, %303
  store i32 %305, i32* %13, align 4
  %306 = load %struct.page*, %struct.page** %28, align 8
  %307 = load %struct.pipe_buffer*, %struct.pipe_buffer** %27, align 8
  %308 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %307, i32 0, i32 3
  store %struct.page* %306, %struct.page** %308, align 8
  %309 = load %struct.pipe_buffer*, %struct.pipe_buffer** %27, align 8
  %310 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %309, i32 0, i32 2
  store %struct.pipe_buf_operations* @anon_pipe_buf_ops, %struct.pipe_buf_operations** %310, align 8
  %311 = load %struct.pipe_buffer*, %struct.pipe_buffer** %27, align 8
  %312 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %311, i32 0, i32 0
  store i32 0, i32* %312, align 8
  %313 = load i32, i32* %17, align 4
  %314 = load %struct.pipe_buffer*, %struct.pipe_buffer** %27, align 8
  %315 = getelementptr inbounds %struct.pipe_buffer, %struct.pipe_buffer* %314, i32 0, i32 1
  store i32 %313, i32* %315, align 4
  %316 = load i32, i32* %25, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %25, align 4
  %318 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %319 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %318, i32 0, i32 0
  store i32 %317, i32* %319, align 8
  %320 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %321 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %320, i32 0, i32 5
  store %struct.page* null, %struct.page** %321, align 8
  %322 = load i32, i32* %17, align 4
  %323 = sext i32 %322 to i64
  %324 = load i64, i64* %16, align 8
  %325 = sub i64 %324, %323
  store i64 %325, i64* %16, align 8
  %326 = load i64, i64* %16, align 8
  %327 = icmp ne i64 %326, 0
  br i1 %327, label %329, label %328

328:                                              ; preds = %302
  br label %383

329:                                              ; preds = %302
  br label %330

330:                                              ; preds = %329, %201
  %331 = load i32, i32* %25, align 4
  %332 = load i32, i32* @PIPE_BUFFERS, align 4
  %333 = icmp slt i32 %331, %332
  br i1 %333, label %334, label %335

334:                                              ; preds = %330
  br label %186

335:                                              ; preds = %330
  %336 = load %struct.file*, %struct.file** %10, align 8
  %337 = getelementptr inbounds %struct.file, %struct.file* %336, i32 0, i32 0
  %338 = load i32, i32* %337, align 8
  %339 = load i32, i32* @O_NONBLOCK, align 4
  %340 = and i32 %338, %339
  %341 = icmp ne i32 %340, 0
  br i1 %341, label %342, label %349

342:                                              ; preds = %335
  %343 = load i32, i32* %13, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %348, label %345

345:                                              ; preds = %342
  %346 = load i32, i32* @EAGAIN, align 4
  %347 = sub nsw i32 0, %346
  store i32 %347, i32* %13, align 4
  br label %348

348:                                              ; preds = %345, %342
  br label %383

349:                                              ; preds = %335
  %350 = load i32, i32* @current, align 4
  %351 = call i64 @signal_pending(i32 %350)
  %352 = icmp ne i64 %351, 0
  br i1 %352, label %353, label %360

353:                                              ; preds = %349
  %354 = load i32, i32* %13, align 4
  %355 = icmp ne i32 %354, 0
  br i1 %355, label %359, label %356

356:                                              ; preds = %353
  %357 = load i32, i32* @ERESTARTSYS, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %13, align 4
  br label %359

359:                                              ; preds = %356, %353
  br label %383

360:                                              ; preds = %349
  %361 = load i32, i32* %14, align 4
  %362 = icmp ne i32 %361, 0
  br i1 %362, label %363, label %372

363:                                              ; preds = %360
  %364 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %365 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %364, i32 0, i32 3
  %366 = call i32 @wake_up_interruptible_sync(i32* %365)
  %367 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %368 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %367, i32 0, i32 2
  %369 = load i32, i32* @SIGIO, align 4
  %370 = load i32, i32* @POLL_IN, align 4
  %371 = call i32 @kill_fasync(i32* %368, i32 %369, i32 %370)
  store i32 0, i32* %14, align 4
  br label %372

372:                                              ; preds = %363, %360
  %373 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %374 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %373, i32 0, i32 4
  %375 = load i32, i32* %374, align 8
  %376 = add nsw i32 %375, 1
  store i32 %376, i32* %374, align 8
  %377 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %378 = call i32 @pipe_wait(%struct.pipe_inode_info* %377)
  %379 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %380 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %379, i32 0, i32 4
  %381 = load i32, i32* %380, align 8
  %382 = add nsw i32 %381, -1
  store i32 %382, i32* %380, align 8
  br label %186

383:                                              ; preds = %359, %348, %328, %301, %244, %200
  br label %384

384:                                              ; preds = %383, %182, %168, %133, %66
  %385 = load %struct.inode*, %struct.inode** %11, align 8
  %386 = getelementptr inbounds %struct.inode, %struct.inode* %385, i32 0, i32 1
  %387 = call i32 @mutex_unlock(i32* %386)
  %388 = load i32, i32* %14, align 4
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %390, label %399

390:                                              ; preds = %384
  %391 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %392 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %391, i32 0, i32 3
  %393 = call i32 @wake_up_interruptible_sync(i32* %392)
  %394 = load %struct.pipe_inode_info*, %struct.pipe_inode_info** %12, align 8
  %395 = getelementptr inbounds %struct.pipe_inode_info, %struct.pipe_inode_info* %394, i32 0, i32 2
  %396 = load i32, i32* @SIGIO, align 4
  %397 = load i32, i32* @POLL_IN, align 4
  %398 = call i32 @kill_fasync(i32* %395, i32 %396, i32 %397)
  br label %399

399:                                              ; preds = %390, %384
  %400 = load i32, i32* %13, align 4
  %401 = icmp sgt i32 %400, 0
  br i1 %401, label %402, label %405

402:                                              ; preds = %399
  %403 = load %struct.file*, %struct.file** %10, align 8
  %404 = call i32 @file_update_time(%struct.file* %403)
  br label %405

405:                                              ; preds = %402, %399
  %406 = load %struct.inode*, %struct.inode** %11, align 8
  %407 = getelementptr inbounds %struct.inode, %struct.inode* %406, i32 0, i32 0
  %408 = load i32, i32* %407, align 8
  %409 = call i32 @sb_end_write(i32 %408)
  %410 = load i32, i32* %13, align 4
  store i32 %410, i32* %5, align 4
  br label %411

411:                                              ; preds = %405, %50
  %412 = load i32, i32* %5, align 4
  ret i32 %412
}

declare dso_local i64 @iov_length(%struct.iovec*, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sb_start_write(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @send_sig(i32, i32, i32) #1

declare dso_local i32 @iov_fault_in_pages_read(%struct.iovec*, i32) #1

declare dso_local i32 @pipe_iov_copy_from_user(i8*, %struct.iovec*, i32, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i8* @kmap_atomic(%struct.page*, i32) #1

declare dso_local i8* @kmap(%struct.page*) #1

declare dso_local i32 @kunmap_atomic(i8*, i32) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @wake_up_interruptible_sync(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @pipe_wait(%struct.pipe_inode_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @file_update_time(%struct.file*) #1

declare dso_local i32 @sb_end_write(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
