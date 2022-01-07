; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_receive_from_sock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/dlm/extr_lowcomms.c_receive_from_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connection = type { i64, i32, i32, i32, i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i64, i32 }
%struct.msghdr = type { i8*, i32, i32 }
%struct.kvec = type { i32, i64 }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PAGE_CACHE_SIZE = common dso_local global i64 0, align 8
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@MSG_NOSIGNAL = common dso_local global i32 0, align 4
@MSG_NOTIFICATION = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"lowcomms: addr=%p, base=%u, len=%u, iov_len=%u, iov_base[0]=%p, read=%d\00", align 1
@CF_READ_PENDING = common dso_local global i32 0, align 4
@recv_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connection*)* @receive_from_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @receive_from_sock(%struct.connection* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.connection*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.msghdr, align 8
  %6 = alloca [2 x %struct.kvec], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.connection* %0, %struct.connection** %3, align 8
  store i32 0, i32* %4, align 4
  %14 = bitcast %struct.msghdr* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %14, i8 0, i64 16, i1 false)
  store i32 0, i32* %9, align 4
  %15 = call i32 @CMSG_SPACE(i32 4)
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %11, align 8
  %18 = alloca i8, i64 %16, align 16
  store i64 %16, i64* %12, align 8
  %19 = load %struct.connection*, %struct.connection** %3, align 8
  %20 = getelementptr inbounds %struct.connection, %struct.connection* %19, i32 0, i32 1
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.connection*, %struct.connection** %3, align 8
  %23 = getelementptr inbounds %struct.connection, %struct.connection* %22, i32 0, i32 6
  %24 = load i32*, i32** %23, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %258

29:                                               ; preds = %1
  %30 = load %struct.connection*, %struct.connection** %3, align 8
  %31 = getelementptr inbounds %struct.connection, %struct.connection* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i32, i32* @GFP_ATOMIC, align 4
  %36 = call i32* @alloc_page(i32 %35)
  %37 = load %struct.connection*, %struct.connection** %3, align 8
  %38 = getelementptr inbounds %struct.connection, %struct.connection* %37, i32 0, i32 4
  store i32* %36, i32** %38, align 8
  %39 = load %struct.connection*, %struct.connection** %3, align 8
  %40 = getelementptr inbounds %struct.connection, %struct.connection* %39, i32 0, i32 4
  %41 = load i32*, i32** %40, align 8
  %42 = icmp eq i32* %41, null
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %241

44:                                               ; preds = %34
  %45 = load %struct.connection*, %struct.connection** %3, align 8
  %46 = getelementptr inbounds %struct.connection, %struct.connection* %45, i32 0, i32 5
  %47 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %48 = call i32 @cbuf_init(%struct.TYPE_6__* %46, i64 %47)
  br label %49

49:                                               ; preds = %44, %29
  %50 = bitcast i8* %18 to i8**
  %51 = trunc i64 %16 to i32
  %52 = call i32 @memset(i8** %50, i32 0, i32 %51)
  %53 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  store i8* %18, i8** %53, align 8
  %54 = trunc i64 %16 to i32
  %55 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  store i32 %54, i32* %55, align 8
  %56 = load %struct.connection*, %struct.connection** %3, align 8
  %57 = getelementptr inbounds %struct.connection, %struct.connection* %56, i32 0, i32 5
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.connection*, %struct.connection** %3, align 8
  %61 = getelementptr inbounds %struct.connection, %struct.connection* %60, i32 0, i32 5
  %62 = call i64 @cbuf_data(%struct.TYPE_6__* %61)
  %63 = sub nsw i64 %59, %62
  %64 = trunc i64 %63 to i32
  %65 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %66 = getelementptr inbounds %struct.kvec, %struct.kvec* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 16
  %67 = load %struct.connection*, %struct.connection** %3, align 8
  %68 = getelementptr inbounds %struct.connection, %struct.connection* %67, i32 0, i32 4
  %69 = load i32*, i32** %68, align 8
  %70 = call i64 @page_address(i32* %69)
  %71 = load %struct.connection*, %struct.connection** %3, align 8
  %72 = getelementptr inbounds %struct.connection, %struct.connection* %71, i32 0, i32 5
  %73 = call i64 @cbuf_data(%struct.TYPE_6__* %72)
  %74 = add nsw i64 %70, %73
  %75 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %76 = getelementptr inbounds %struct.kvec, %struct.kvec* %75, i32 0, i32 1
  store i64 %74, i64* %76, align 8
  %77 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %78 = getelementptr inbounds %struct.kvec, %struct.kvec* %77, i32 0, i32 0
  store i32 0, i32* %78, align 16
  store i32 1, i32* %10, align 4
  %79 = load %struct.connection*, %struct.connection** %3, align 8
  %80 = getelementptr inbounds %struct.connection, %struct.connection* %79, i32 0, i32 5
  %81 = call i64 @cbuf_data(%struct.TYPE_6__* %80)
  %82 = load %struct.connection*, %struct.connection** %3, align 8
  %83 = getelementptr inbounds %struct.connection, %struct.connection* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp sge i64 %81, %85
  br i1 %86, label %87, label %109

87:                                               ; preds = %49
  %88 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %89 = load %struct.connection*, %struct.connection** %3, align 8
  %90 = getelementptr inbounds %struct.connection, %struct.connection* %89, i32 0, i32 5
  %91 = call i64 @cbuf_data(%struct.TYPE_6__* %90)
  %92 = sub nsw i64 %88, %91
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %95 = getelementptr inbounds %struct.kvec, %struct.kvec* %94, i32 0, i32 0
  store i32 %93, i32* %95, align 16
  %96 = load %struct.connection*, %struct.connection** %3, align 8
  %97 = getelementptr inbounds %struct.connection, %struct.connection* %96, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = trunc i64 %99 to i32
  %101 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %102 = getelementptr inbounds %struct.kvec, %struct.kvec* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 16
  %103 = load %struct.connection*, %struct.connection** %3, align 8
  %104 = getelementptr inbounds %struct.connection, %struct.connection* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = call i64 @page_address(i32* %105)
  %107 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %108 = getelementptr inbounds %struct.kvec, %struct.kvec* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  store i32 2, i32* %10, align 4
  br label %109

109:                                              ; preds = %87, %49
  %110 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %111 = getelementptr inbounds %struct.kvec, %struct.kvec* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 16
  %113 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 1
  %114 = getelementptr inbounds %struct.kvec, %struct.kvec* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 16
  %116 = add i32 %112, %115
  store i32 %116, i32* %7, align 4
  %117 = load %struct.connection*, %struct.connection** %3, align 8
  %118 = getelementptr inbounds %struct.connection, %struct.connection* %117, i32 0, i32 6
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %121 = load i32, i32* %10, align 4
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @MSG_DONTWAIT, align 4
  %124 = load i32, i32* @MSG_NOSIGNAL, align 4
  %125 = or i32 %123, %124
  %126 = call i32 @kernel_recvmsg(i32* %119, %struct.msghdr* %5, %struct.kvec* %120, i32 %121, i32 %122, i32 %125)
  store i32 %126, i32* %4, align 4
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* %4, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %130

129:                                              ; preds = %109
  br label %258

130:                                              ; preds = %109
  %131 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 2
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @MSG_NOTIFICATION, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %154

136:                                              ; preds = %130
  %137 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 0
  store i8* %18, i8** %137, align 8
  %138 = trunc i64 %16 to i32
  %139 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %5, i32 0, i32 1
  store i32 %138, i32* %139, align 8
  %140 = load %struct.connection*, %struct.connection** %3, align 8
  %141 = load %struct.connection*, %struct.connection** %3, align 8
  %142 = getelementptr inbounds %struct.connection, %struct.connection* %141, i32 0, i32 4
  %143 = load i32*, i32** %142, align 8
  %144 = call i64 @page_address(i32* %143)
  %145 = load %struct.connection*, %struct.connection** %3, align 8
  %146 = getelementptr inbounds %struct.connection, %struct.connection* %145, i32 0, i32 5
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = add nsw i64 %144, %148
  %150 = call i32 @process_sctp_notification(%struct.connection* %140, %struct.msghdr* %5, i64 %149)
  %151 = load %struct.connection*, %struct.connection** %3, align 8
  %152 = getelementptr inbounds %struct.connection, %struct.connection* %151, i32 0, i32 1
  %153 = call i32 @mutex_unlock(i32* %152)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %277

154:                                              ; preds = %130
  %155 = load %struct.connection*, %struct.connection** %3, align 8
  %156 = getelementptr inbounds %struct.connection, %struct.connection* %155, i32 0, i32 0
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %157, 0
  %159 = zext i1 %158 to i32
  %160 = call i32 @BUG_ON(i32 %159)
  %161 = load i32, i32* %4, align 4
  %162 = load i32, i32* %7, align 4
  %163 = icmp eq i32 %161, %162
  br i1 %163, label %164, label %165

164:                                              ; preds = %154
  store i32 1, i32* %9, align 4
  br label %165

165:                                              ; preds = %164, %154
  %166 = load %struct.connection*, %struct.connection** %3, align 8
  %167 = getelementptr inbounds %struct.connection, %struct.connection* %166, i32 0, i32 5
  %168 = load i32, i32* %4, align 4
  %169 = call i32 @cbuf_add(%struct.TYPE_6__* %167, i32 %168)
  %170 = load %struct.connection*, %struct.connection** %3, align 8
  %171 = getelementptr inbounds %struct.connection, %struct.connection* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.connection*, %struct.connection** %3, align 8
  %174 = getelementptr inbounds %struct.connection, %struct.connection* %173, i32 0, i32 4
  %175 = load i32*, i32** %174, align 8
  %176 = call i64 @page_address(i32* %175)
  %177 = load %struct.connection*, %struct.connection** %3, align 8
  %178 = getelementptr inbounds %struct.connection, %struct.connection* %177, i32 0, i32 5
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.connection*, %struct.connection** %3, align 8
  %182 = getelementptr inbounds %struct.connection, %struct.connection* %181, i32 0, i32 5
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = load i64, i64* @PAGE_CACHE_SIZE, align 8
  %186 = call i32 @dlm_process_incoming_buffer(i64 %172, i64 %176, i64 %180, i32 %184, i64 %185)
  store i32 %186, i32* %4, align 4
  %187 = load i32, i32* %4, align 4
  %188 = load i32, i32* @EBADMSG, align 4
  %189 = sub nsw i32 0, %188
  %190 = icmp eq i32 %187, %189
  br i1 %190, label %191, label %210

191:                                              ; preds = %165
  %192 = load %struct.connection*, %struct.connection** %3, align 8
  %193 = getelementptr inbounds %struct.connection, %struct.connection* %192, i32 0, i32 4
  %194 = load i32*, i32** %193, align 8
  %195 = call i64 @page_address(i32* %194)
  %196 = load %struct.connection*, %struct.connection** %3, align 8
  %197 = getelementptr inbounds %struct.connection, %struct.connection* %196, i32 0, i32 5
  %198 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = load %struct.connection*, %struct.connection** %3, align 8
  %201 = getelementptr inbounds %struct.connection, %struct.connection* %200, i32 0, i32 5
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 1
  %203 = load i32, i32* %202, align 8
  %204 = load i32, i32* %7, align 4
  %205 = getelementptr inbounds [2 x %struct.kvec], [2 x %struct.kvec]* %6, i64 0, i64 0
  %206 = getelementptr inbounds %struct.kvec, %struct.kvec* %205, i32 0, i32 1
  %207 = load i64, i64* %206, align 8
  %208 = load i32, i32* %8, align 4
  %209 = call i32 @log_print(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %195, i64 %199, i32 %203, i32 %204, i64 %207, i32 %208)
  br label %210

210:                                              ; preds = %191, %165
  %211 = load i32, i32* %4, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %214

213:                                              ; preds = %210
  br label %258

214:                                              ; preds = %210
  %215 = load %struct.connection*, %struct.connection** %3, align 8
  %216 = getelementptr inbounds %struct.connection, %struct.connection* %215, i32 0, i32 5
  %217 = load i32, i32* %4, align 4
  %218 = call i32 @cbuf_eat(%struct.TYPE_6__* %216, i32 %217)
  %219 = load %struct.connection*, %struct.connection** %3, align 8
  %220 = getelementptr inbounds %struct.connection, %struct.connection* %219, i32 0, i32 5
  %221 = call i64 @cbuf_empty(%struct.TYPE_6__* %220)
  %222 = icmp ne i64 %221, 0
  br i1 %222, label %223, label %233

223:                                              ; preds = %214
  %224 = load i32, i32* %9, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %233, label %226

226:                                              ; preds = %223
  %227 = load %struct.connection*, %struct.connection** %3, align 8
  %228 = getelementptr inbounds %struct.connection, %struct.connection* %227, i32 0, i32 4
  %229 = load i32*, i32** %228, align 8
  %230 = call i32 @__free_page(i32* %229)
  %231 = load %struct.connection*, %struct.connection** %3, align 8
  %232 = getelementptr inbounds %struct.connection, %struct.connection* %231, i32 0, i32 4
  store i32* null, i32** %232, align 8
  br label %233

233:                                              ; preds = %226, %223, %214
  %234 = load i32, i32* %9, align 4
  %235 = icmp ne i32 %234, 0
  br i1 %235, label %236, label %237

236:                                              ; preds = %233
  br label %241

237:                                              ; preds = %233
  %238 = load %struct.connection*, %struct.connection** %3, align 8
  %239 = getelementptr inbounds %struct.connection, %struct.connection* %238, i32 0, i32 1
  %240 = call i32 @mutex_unlock(i32* %239)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %277

241:                                              ; preds = %236, %43
  %242 = load i32, i32* @CF_READ_PENDING, align 4
  %243 = load %struct.connection*, %struct.connection** %3, align 8
  %244 = getelementptr inbounds %struct.connection, %struct.connection* %243, i32 0, i32 3
  %245 = call i32 @test_and_set_bit(i32 %242, i32* %244)
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %252, label %247

247:                                              ; preds = %241
  %248 = load i32, i32* @recv_workqueue, align 4
  %249 = load %struct.connection*, %struct.connection** %3, align 8
  %250 = getelementptr inbounds %struct.connection, %struct.connection* %249, i32 0, i32 2
  %251 = call i32 @queue_work(i32 %248, i32* %250)
  br label %252

252:                                              ; preds = %247, %241
  %253 = load %struct.connection*, %struct.connection** %3, align 8
  %254 = getelementptr inbounds %struct.connection, %struct.connection* %253, i32 0, i32 1
  %255 = call i32 @mutex_unlock(i32* %254)
  %256 = load i32, i32* @EAGAIN, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %277

258:                                              ; preds = %213, %129, %26
  %259 = load %struct.connection*, %struct.connection** %3, align 8
  %260 = getelementptr inbounds %struct.connection, %struct.connection* %259, i32 0, i32 1
  %261 = call i32 @mutex_unlock(i32* %260)
  %262 = load i32, i32* %4, align 4
  %263 = load i32, i32* @EAGAIN, align 4
  %264 = sub nsw i32 0, %263
  %265 = icmp ne i32 %262, %264
  br i1 %265, label %266, label %269

266:                                              ; preds = %258
  %267 = load %struct.connection*, %struct.connection** %3, align 8
  %268 = call i32 @close_connection(%struct.connection* %267, i32 0)
  br label %269

269:                                              ; preds = %266, %258
  %270 = load i32, i32* %4, align 4
  %271 = icmp eq i32 %270, 0
  br i1 %271, label %272, label %275

272:                                              ; preds = %269
  %273 = load i32, i32* @EAGAIN, align 4
  %274 = sub nsw i32 0, %273
  store i32 %274, i32* %4, align 4
  br label %275

275:                                              ; preds = %272, %269
  %276 = load i32, i32* %4, align 4
  store i32 %276, i32* %2, align 4
  store i32 1, i32* %13, align 4
  br label %277

277:                                              ; preds = %275, %252, %237, %136
  %278 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %278)
  %279 = load i32, i32* %2, align 4
  ret i32 %279
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CMSG_SPACE(i32) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32* @alloc_page(i32) #2

declare dso_local i32 @cbuf_init(%struct.TYPE_6__*, i64) #2

declare dso_local i32 @memset(i8**, i32, i32) #2

declare dso_local i64 @cbuf_data(%struct.TYPE_6__*) #2

declare dso_local i64 @page_address(i32*) #2

declare dso_local i32 @kernel_recvmsg(i32*, %struct.msghdr*, %struct.kvec*, i32, i32, i32) #2

declare dso_local i32 @process_sctp_notification(%struct.connection*, %struct.msghdr*, i64) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @cbuf_add(%struct.TYPE_6__*, i32) #2

declare dso_local i32 @dlm_process_incoming_buffer(i64, i64, i64, i32, i64) #2

declare dso_local i32 @log_print(i8*, i64, i64, i32, i32, i64, i32) #2

declare dso_local i32 @cbuf_eat(%struct.TYPE_6__*, i32) #2

declare dso_local i64 @cbuf_empty(%struct.TYPE_6__*) #2

declare dso_local i32 @__free_page(i32*) #2

declare dso_local i32 @test_and_set_bit(i32, i32*) #2

declare dso_local i32 @queue_work(i32, i32*) #2

declare dso_local i32 @close_connection(%struct.connection*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
