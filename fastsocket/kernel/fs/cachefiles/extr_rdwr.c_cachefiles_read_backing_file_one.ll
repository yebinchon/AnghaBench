; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_rdwr.c_cachefiles_read_backing_file_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/cachefiles/extr_rdwr.c_cachefiles_read_backing_file_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cachefiles_object = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.address_space* }
%struct.address_space = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (i32*, %struct.page*)* }
%struct.fscache_retrieval = type { i32 }
%struct.page = type { i32, i32 }
%struct.pagevec = type { i32 }
%struct.cachefiles_one_read = type { i32, %struct.TYPE_9__, %struct.page*, %struct.page* }
%struct.TYPE_9__ = type { %struct.page* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"read back %p{%lu,%d}\00", align 1
@cachefiles_gfp = common dso_local global i32 0, align 4
@cachefiles_read_waiter = common dso_local global i32 0, align 4
@__GFP_COLD = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"- new %p\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"- monitor add\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"jumpstart %p {%lx}\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"- present\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"read %p {%lx}\00", align 1
@.str.7 = private unnamed_addr constant [11 x i8] c"- uptodate\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"success\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c" = %d\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"read error %d\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [32 x i8] c"Page read error on backing file\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [11 x i8] c" = -ENOMEM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cachefiles_object*, %struct.fscache_retrieval*, %struct.page*, %struct.pagevec*)* @cachefiles_read_backing_file_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cachefiles_read_backing_file_one(%struct.cachefiles_object* %0, %struct.fscache_retrieval* %1, %struct.page* %2, %struct.pagevec* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cachefiles_object*, align 8
  %7 = alloca %struct.fscache_retrieval*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.pagevec*, align 8
  %10 = alloca %struct.cachefiles_one_read*, align 8
  %11 = alloca %struct.address_space*, align 8
  %12 = alloca %struct.page*, align 8
  %13 = alloca %struct.page*, align 8
  %14 = alloca i32, align 4
  store %struct.cachefiles_object* %0, %struct.cachefiles_object** %6, align 8
  store %struct.fscache_retrieval* %1, %struct.fscache_retrieval** %7, align 8
  store %struct.page* %2, %struct.page** %8, align 8
  store %struct.pagevec* %3, %struct.pagevec** %9, align 8
  %15 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pagevec*, %struct.pagevec** %9, align 8
  %17 = call i32 @pagevec_reinit(%struct.pagevec* %16)
  %18 = load %struct.page*, %struct.page** %8, align 8
  %19 = load %struct.page*, %struct.page** %8, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = call i32 @page_count(%struct.page* %22)
  %24 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), %struct.page* %18, i32 %21, i32 %23)
  %25 = load i32, i32* @cachefiles_gfp, align 4
  %26 = call %struct.cachefiles_one_read* @kzalloc(i32 32, i32 %25)
  store %struct.cachefiles_one_read* %26, %struct.cachefiles_one_read** %10, align 8
  %27 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %28 = icmp ne %struct.cachefiles_one_read* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %4
  br label %233

30:                                               ; preds = %4
  %31 = load %struct.page*, %struct.page** %8, align 8
  %32 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %33 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %32, i32 0, i32 3
  store %struct.page* %31, %struct.page** %33, align 8
  %34 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %35 = call i32 @fscache_get_retrieval(%struct.fscache_retrieval* %34)
  %36 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %37 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %39 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %38, i32 0, i32 1
  %40 = load i32, i32* @cachefiles_read_waiter, align 4
  %41 = call i32 @init_waitqueue_func_entry(%struct.TYPE_9__* %39, i32 %40)
  %42 = load %struct.cachefiles_object*, %struct.cachefiles_object** %6, align 8
  %43 = getelementptr inbounds %struct.cachefiles_object, %struct.cachefiles_object* %42, i32 0, i32 0
  %44 = load %struct.TYPE_7__*, %struct.TYPE_7__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.address_space*, %struct.address_space** %47, align 8
  store %struct.address_space* %48, %struct.address_space** %11, align 8
  store %struct.page* null, %struct.page** %12, align 8
  br label %49

49:                                               ; preds = %87, %30
  %50 = load %struct.address_space*, %struct.address_space** %11, align 8
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call %struct.page* @find_get_page(%struct.address_space* %50, i32 %53)
  store %struct.page* %54, %struct.page** %13, align 8
  %55 = load %struct.page*, %struct.page** %13, align 8
  %56 = icmp ne %struct.page* %55, null
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %142

58:                                               ; preds = %49
  %59 = load %struct.page*, %struct.page** %12, align 8
  %60 = icmp ne %struct.page* %59, null
  br i1 %60, label %70, label %61

61:                                               ; preds = %58
  %62 = load i32, i32* @cachefiles_gfp, align 4
  %63 = load i32, i32* @__GFP_COLD, align 4
  %64 = or i32 %62, %63
  %65 = call %struct.page* @__page_cache_alloc(i32 %64)
  store %struct.page* %65, %struct.page** %12, align 8
  %66 = load %struct.page*, %struct.page** %12, align 8
  %67 = icmp ne %struct.page* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %61
  br label %226

69:                                               ; preds = %61
  br label %70

70:                                               ; preds = %69, %58
  %71 = load %struct.page*, %struct.page** %12, align 8
  %72 = load %struct.address_space*, %struct.address_space** %11, align 8
  %73 = load %struct.page*, %struct.page** %8, align 8
  %74 = getelementptr inbounds %struct.page, %struct.page* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @cachefiles_gfp, align 4
  %77 = call i32 @add_to_page_cache(%struct.page* %71, %struct.address_space* %72, i32 %75, i32 %76)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %70
  br label %88

81:                                               ; preds = %70
  %82 = load i32, i32* %14, align 4
  %83 = load i32, i32* @EEXIST, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  br label %223

87:                                               ; preds = %81
  br label %49

88:                                               ; preds = %80
  %89 = load %struct.page*, %struct.page** %12, align 8
  %90 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.page* %89)
  %91 = load %struct.page*, %struct.page** %12, align 8
  store %struct.page* %91, %struct.page** %13, align 8
  store %struct.page* null, %struct.page** %12, align 8
  %92 = load %struct.page*, %struct.page** %13, align 8
  %93 = call i32 @page_cache_get(%struct.page* %92)
  %94 = load %struct.pagevec*, %struct.pagevec** %9, align 8
  %95 = load %struct.page*, %struct.page** %13, align 8
  %96 = call i32 @pagevec_add(%struct.pagevec* %94, %struct.page* %95)
  %97 = load %struct.pagevec*, %struct.pagevec** %9, align 8
  %98 = call i32 @__pagevec_lru_add_file(%struct.pagevec* %97)
  br label %99

99:                                               ; preds = %164, %88
  %100 = load %struct.address_space*, %struct.address_space** %11, align 8
  %101 = getelementptr inbounds %struct.address_space, %struct.address_space* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32 (i32*, %struct.page*)*, i32 (i32*, %struct.page*)** %103, align 8
  %105 = load %struct.page*, %struct.page** %13, align 8
  %106 = call i32 %104(i32* null, %struct.page* %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = icmp slt i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %99
  br label %205

110:                                              ; preds = %99
  br label %111

111:                                              ; preds = %163, %110
  %112 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %113 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %114 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %113, i32 0, i32 3
  %115 = load %struct.page*, %struct.page** %114, align 8
  %116 = call i32 @page_cache_get(%struct.page* %115)
  %117 = load %struct.page*, %struct.page** %13, align 8
  %118 = call i32 @page_cache_get(%struct.page* %117)
  %119 = load %struct.page*, %struct.page** %13, align 8
  %120 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %121 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %120, i32 0, i32 2
  store %struct.page* %119, %struct.page** %121, align 8
  %122 = load %struct.page*, %struct.page** %13, align 8
  %123 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %124 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %123, i32 0, i32 1
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  store %struct.page* %122, %struct.page** %125, align 8
  %126 = load %struct.page*, %struct.page** %13, align 8
  %127 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %128 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %127, i32 0, i32 1
  %129 = call i32 @add_page_wait_queue(%struct.page* %126, %struct.TYPE_9__* %128)
  store %struct.cachefiles_one_read* null, %struct.cachefiles_one_read** %10, align 8
  %130 = load %struct.page*, %struct.page** %13, align 8
  %131 = call i64 @trylock_page(%struct.page* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %141

133:                                              ; preds = %111
  %134 = load %struct.page*, %struct.page** %13, align 8
  %135 = load %struct.page*, %struct.page** %13, align 8
  %136 = getelementptr inbounds %struct.page, %struct.page* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), %struct.page* %134, i32 %137)
  %139 = load %struct.page*, %struct.page** %13, align 8
  %140 = call i32 @unlock_page(%struct.page* %139)
  br label %141

141:                                              ; preds = %133, %111
  br label %183

142:                                              ; preds = %57
  %143 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %144 = load %struct.page*, %struct.page** %12, align 8
  %145 = icmp ne %struct.page* %144, null
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = load %struct.page*, %struct.page** %12, align 8
  %148 = call i32 @page_cache_release(%struct.page* %147)
  store %struct.page* null, %struct.page** %12, align 8
  br label %149

149:                                              ; preds = %146, %142
  %150 = load %struct.page*, %struct.page** %13, align 8
  %151 = call i64 @PageError(%struct.page* %150)
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %154

153:                                              ; preds = %149
  br label %216

154:                                              ; preds = %149
  %155 = load %struct.page*, %struct.page** %13, align 8
  %156 = call i64 @PageUptodate(%struct.page* %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %154
  br label %170

159:                                              ; preds = %154
  %160 = load %struct.page*, %struct.page** %13, align 8
  %161 = call i64 @trylock_page(%struct.page* %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %164, label %163

163:                                              ; preds = %159
  br label %111

164:                                              ; preds = %159
  %165 = load %struct.page*, %struct.page** %13, align 8
  %166 = load %struct.page*, %struct.page** %13, align 8
  %167 = getelementptr inbounds %struct.page, %struct.page* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), %struct.page* %165, i32 %168)
  br label %99

170:                                              ; preds = %158
  %171 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  %172 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %173 = load %struct.page*, %struct.page** %8, align 8
  %174 = call i32 @fscache_mark_page_cached(%struct.fscache_retrieval* %172, %struct.page* %173, i32 1)
  %175 = load %struct.page*, %struct.page** %8, align 8
  %176 = load %struct.page*, %struct.page** %13, align 8
  %177 = call i32 @copy_highpage(%struct.page* %175, %struct.page* %176)
  %178 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %179 = load %struct.page*, %struct.page** %8, align 8
  %180 = call i32 @fscache_end_io(%struct.fscache_retrieval* %178, %struct.page* %179, i32 0)
  %181 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %182 = call i32 @fscache_retrieval_complete(%struct.fscache_retrieval* %181, i32 1)
  br label %183

183:                                              ; preds = %170, %141
  %184 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %216, %212, %183
  %186 = load %struct.page*, %struct.page** %13, align 8
  %187 = icmp ne %struct.page* %186, null
  br i1 %187, label %188, label %191

188:                                              ; preds = %185
  %189 = load %struct.page*, %struct.page** %13, align 8
  %190 = call i32 @page_cache_release(%struct.page* %189)
  br label %191

191:                                              ; preds = %188, %185
  %192 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %193 = icmp ne %struct.cachefiles_one_read* %192, null
  br i1 %193, label %194, label %201

194:                                              ; preds = %191
  %195 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %196 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = call i32 @fscache_put_retrieval(i32 %197)
  %199 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %200 = call i32 @kfree(%struct.cachefiles_one_read* %199)
  br label %201

201:                                              ; preds = %194, %191
  %202 = load i32, i32* %14, align 4
  %203 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %202)
  %204 = load i32, i32* %14, align 4
  store i32 %204, i32* %5, align 4
  br label %239

205:                                              ; preds = %109
  %206 = load i32, i32* %14, align 4
  %207 = call i32 (i8*, ...) @_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %206)
  %208 = load i32, i32* %14, align 4
  %209 = load i32, i32* @ENOMEM, align 4
  %210 = sub nsw i32 0, %209
  %211 = icmp eq i32 %208, %210
  br i1 %211, label %212, label %215

212:                                              ; preds = %205
  %213 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %214 = call i32 @fscache_retrieval_complete(%struct.fscache_retrieval* %213, i32 1)
  br label %185

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %153
  %217 = load %struct.cachefiles_object*, %struct.cachefiles_object** %6, align 8
  %218 = call i32 @cachefiles_io_error_obj(%struct.cachefiles_object* %217, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.11, i64 0, i64 0))
  %219 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %220 = call i32 @fscache_retrieval_complete(%struct.fscache_retrieval* %219, i32 1)
  %221 = load i32, i32* @ENOBUFS, align 4
  %222 = sub nsw i32 0, %221
  store i32 %222, i32* %14, align 4
  br label %185

223:                                              ; preds = %86
  %224 = load %struct.page*, %struct.page** %12, align 8
  %225 = call i32 @page_cache_release(%struct.page* %224)
  br label %226

226:                                              ; preds = %223, %68
  %227 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %228 = getelementptr inbounds %struct.cachefiles_one_read, %struct.cachefiles_one_read* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = call i32 @fscache_put_retrieval(i32 %229)
  %231 = load %struct.cachefiles_one_read*, %struct.cachefiles_one_read** %10, align 8
  %232 = call i32 @kfree(%struct.cachefiles_one_read* %231)
  br label %233

233:                                              ; preds = %226, %29
  %234 = load %struct.fscache_retrieval*, %struct.fscache_retrieval** %7, align 8
  %235 = call i32 @fscache_retrieval_complete(%struct.fscache_retrieval* %234, i32 1)
  %236 = call i32 (i8*, ...) @_leave(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %237 = load i32, i32* @ENOMEM, align 4
  %238 = sub nsw i32 0, %237
  store i32 %238, i32* %5, align 4
  br label %239

239:                                              ; preds = %233, %201
  %240 = load i32, i32* %5, align 4
  ret i32 %240
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i32 @pagevec_reinit(%struct.pagevec*) #1

declare dso_local i32 @_debug(i8*, ...) #1

declare dso_local i32 @page_count(%struct.page*) #1

declare dso_local %struct.cachefiles_one_read* @kzalloc(i32, i32) #1

declare dso_local i32 @fscache_get_retrieval(%struct.fscache_retrieval*) #1

declare dso_local i32 @init_waitqueue_func_entry(%struct.TYPE_9__*, i32) #1

declare dso_local %struct.page* @find_get_page(%struct.address_space*, i32) #1

declare dso_local %struct.page* @__page_cache_alloc(i32) #1

declare dso_local i32 @add_to_page_cache(%struct.page*, %struct.address_space*, i32, i32) #1

declare dso_local i32 @page_cache_get(%struct.page*) #1

declare dso_local i32 @pagevec_add(%struct.pagevec*, %struct.page*) #1

declare dso_local i32 @__pagevec_lru_add_file(%struct.pagevec*) #1

declare dso_local i32 @add_page_wait_queue(%struct.page*, %struct.TYPE_9__*) #1

declare dso_local i64 @trylock_page(%struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @page_cache_release(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i64 @PageUptodate(%struct.page*) #1

declare dso_local i32 @fscache_mark_page_cached(%struct.fscache_retrieval*, %struct.page*, i32) #1

declare dso_local i32 @copy_highpage(%struct.page*, %struct.page*) #1

declare dso_local i32 @fscache_end_io(%struct.fscache_retrieval*, %struct.page*, i32) #1

declare dso_local i32 @fscache_retrieval_complete(%struct.fscache_retrieval*, i32) #1

declare dso_local i32 @fscache_put_retrieval(i32) #1

declare dso_local i32 @kfree(%struct.cachefiles_one_read*) #1

declare dso_local i32 @_leave(i8*, ...) #1

declare dso_local i32 @cachefiles_io_error_obj(%struct.cachefiles_object*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
