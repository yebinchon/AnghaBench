; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_snapshot.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_sendrecv.c_dump_snapshot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i8*, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i8*, i64 (%struct.TYPE_15__*, i32)*, i8*, i64, i32, i32, i32, i32, i32, i32, i64, i64, i64, i32, i32, i32, i64, i64, i64, i8*, i32*, i8*, i32*, i64 }
%struct.TYPE_17__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@stdout = common dso_local global i32* null, align 8
@stderr = common dso_local global i32* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@ZFS_PROP_OBJSETID = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_LARGE_BLOCK = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_EMBED_DATA = common dso_local global i32 0, align 4
@LZC_SEND_FLAG_COMPRESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"snapprops\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"is_clone_origin\00", align 1
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@send_progress_thread = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i8*)* @dump_snapshot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dump_snapshot(%struct.TYPE_15__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_17__, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store i8* %1, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %6, align 8
  %25 = bitcast %struct.TYPE_17__* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %25, i8 0, i64 32, i1 false)
  store i32 0, i32* %10, align 4
  %26 = load i64, i64* @B_FALSE, align 8
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %15, align 4
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 23
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %2
  %33 = load i32*, i32** @stdout, align 8
  br label %36

34:                                               ; preds = %2
  %35 = load i32*, i32** @stderr, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = phi i32* [ %33, %32 ], [ %35, %34 ]
  store i32* %37, i32** %16, align 8
  store i32 0, i32* %11, align 4
  %38 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %38, i32 0, i32 0
  %40 = load i8*, i8** %39, align 8
  %41 = call i8* @strchr(i8* %40, i8 signext 64)
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  store i8* %42, i8** %9, align 8
  %43 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 22
  %45 = load i32*, i32** %44, align 8
  %46 = icmp ne i32* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %36
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %48, i32 0, i32 22
  %50 = load i32*, i32** %49, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = call i64 @strcmp(i32* %50, i8* %51)
  %53 = icmp eq i64 %52, 0
  br label %54

54:                                               ; preds = %47, %36
  %55 = phi i1 [ false, %36 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %12, align 4
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %57, i32 0, i32 21
  %59 = load i8*, i8** %58, align 8
  %60 = icmp ne i8* %59, null
  br i1 %60, label %83, label %61

61:                                               ; preds = %54
  %62 = load i32, i32* %12, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %61
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %67 = call i32 @gather_holds(%struct.TYPE_15__* %65, %struct.TYPE_16__* %66)
  %68 = load i8*, i8** @B_TRUE, align 8
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %69, i32 0, i32 21
  store i8* %68, i8** %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  %74 = load i8*, i8** %9, align 8
  %75 = call i32 @strcpy(i8* %73, i8* %74)
  %76 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %77 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %78 = call i8* @zfs_prop_get_int(%struct.TYPE_15__* %76, i32 %77)
  %79 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %79, i32 0, i32 2
  store i8* %78, i8** %80, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %82 = call i32 @zfs_close(%struct.TYPE_15__* %81)
  store i32 0, i32* %3, align 4
  br label %395

83:                                               ; preds = %61, %54
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 19
  %86 = load i8*, i8** %85, align 8
  %87 = icmp ne i8* %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %83
  %89 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %89, i32 0, i32 21
  %91 = load i8*, i8** %90, align 8
  %92 = icmp ne i8* %91, null
  br i1 %92, label %96, label %93

93:                                               ; preds = %88, %83
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %95 = call i32 @zfs_close(%struct.TYPE_15__* %94)
  store i32 0, i32* %3, align 4
  br label %395

96:                                               ; preds = %88
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 20
  %99 = load i32*, i32** %98, align 8
  %100 = load i8*, i8** %9, align 8
  %101 = call i64 @strcmp(i32* %99, i8* %100)
  %102 = icmp eq i64 %101, 0
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %13, align 4
  %104 = load i32, i32* %13, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %96
  %107 = load i8*, i8** @B_TRUE, align 8
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 19
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %106, %96
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %111, i32 0, i32 18
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load i32, i32* @LZC_SEND_FLAG_LARGE_BLOCK, align 4
  %117 = load i32, i32* %10, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %10, align 4
  br label %119

119:                                              ; preds = %115, %110
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 17
  %122 = load i64, i64* %121, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %128

124:                                              ; preds = %119
  %125 = load i32, i32* @LZC_SEND_FLAG_EMBED_DATA, align 4
  %126 = load i32, i32* %10, align 4
  %127 = or i32 %126, %125
  store i32 %127, i32* %10, align 4
  br label %128

128:                                              ; preds = %124, %119
  %129 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 16
  %131 = load i64, i64* %130, align 8
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %128
  %134 = load i32, i32* @LZC_SEND_FLAG_COMPRESS, align 4
  %135 = load i32, i32* %10, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %10, align 4
  br label %137

137:                                              ; preds = %133, %128
  %138 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %138, i32 0, i32 15
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %182, label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %12, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %182, label %145

145:                                              ; preds = %142
  %146 = load i32, i32* %13, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %182, label %148

148:                                              ; preds = %145
  %149 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %150 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %149, i32 0, i32 11
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %178

153:                                              ; preds = %148
  %154 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %155 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %154, i32 0, i32 14
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = call i32* @fsavl_find(i32 %156, i32 %160, i8** %17)
  store i32* %161, i32** %19, align 8
  %162 = load i32*, i32** %19, align 8
  %163 = call i64 @nvlist_lookup_nvlist(i32* %162, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32** %18)
  %164 = icmp eq i64 0, %163
  %165 = zext i1 %164 to i32
  %166 = call i32 @VERIFY(i32 %165)
  %167 = load i32*, i32** %18, align 8
  %168 = load i8*, i8** %9, align 8
  %169 = call i64 @nvlist_lookup_nvlist(i32* %167, i8* %168, i32** %18)
  %170 = icmp eq i64 0, %169
  %171 = zext i1 %170 to i32
  %172 = call i32 @VERIFY(i32 %171)
  %173 = load i32*, i32** %18, align 8
  %174 = call i32 @nvlist_exists(i32* %173, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %175 = icmp ne i32 %174, 0
  %176 = xor i1 %175, true
  %177 = zext i1 %176 to i32
  store i32 %177, i32* %15, align 4
  br label %181

178:                                              ; preds = %148
  %179 = load i8*, i8** @B_TRUE, align 8
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %15, align 4
  br label %181

181:                                              ; preds = %178, %153
  br label %182

182:                                              ; preds = %181, %145, %142, %137
  %183 = load i32, i32* %15, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %201, label %185

185:                                              ; preds = %182
  %186 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %186, i32 0, i32 1
  %188 = load i64 (%struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_15__*, i32)** %187, align 8
  %189 = icmp ne i64 (%struct.TYPE_15__*, i32)* %188, null
  br i1 %189, label %190, label %204

190:                                              ; preds = %185
  %191 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %191, i32 0, i32 1
  %193 = load i64 (%struct.TYPE_15__*, i32)*, i64 (%struct.TYPE_15__*, i32)** %192, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %195 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %195, i32 0, i32 13
  %197 = load i32, i32* %196, align 8
  %198 = call i64 %193(%struct.TYPE_15__* %194, i32 %197)
  %199 = load i64, i64* @B_FALSE, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %190, %182
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %203 = call i32 @zfs_close(%struct.TYPE_15__* %202)
  store i32 0, i32* %3, align 4
  br label %395

204:                                              ; preds = %190, %185
  %205 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %207 = call i32 @gather_holds(%struct.TYPE_15__* %205, %struct.TYPE_16__* %206)
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 0
  %210 = load i8*, i8** %209, align 8
  %211 = getelementptr inbounds i8, i8* %210, i64 0
  %212 = load i8, i8* %211, align 1
  %213 = sext i8 %212 to i32
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %227

215:                                              ; preds = %204
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %216, i32 0, i32 12
  %218 = load i64, i64* %217, align 8
  %219 = icmp ne i64 %218, 0
  br i1 %219, label %225, label %220

220:                                              ; preds = %215
  %221 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 11
  %223 = load i64, i64* %222, align 8
  %224 = icmp ne i64 %223, 0
  br label %225

225:                                              ; preds = %220, %215
  %226 = phi i1 [ true, %215 ], [ %224, %220 ]
  br label %227

227:                                              ; preds = %225, %204
  %228 = phi i1 [ false, %204 ], [ %226, %225 ]
  %229 = zext i1 %228 to i32
  store i32 %229, i32* %14, align 4
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 10
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %239, label %234

234:                                              ; preds = %227
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 3
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %317

239:                                              ; preds = %234, %227
  store i64 0, i64* %20, align 8
  %240 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %241 = zext i32 %240 to i64
  %242 = call i8* @llvm.stacksave()
  store i8* %242, i8** %21, align 8
  %243 = alloca i8, i64 %241, align 16
  store i64 %241, i64* %22, align 8
  %244 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %244, i32 0, i32 0
  %246 = load i8*, i8** %245, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 0
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %264

251:                                              ; preds = %239
  %252 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %253 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %252, i32 0, i32 0
  %254 = load i8*, i8** %253, align 8
  %255 = trunc i64 %241 to i32
  %256 = call i32 @strlcpy(i8* %243, i8* %254, i32 %255)
  %257 = call i8* @strchr(i8* %243, i8 signext 64)
  %258 = getelementptr inbounds i8, i8* %257, i64 1
  store i8 0, i8* %258, align 1
  %259 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %259, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = trunc i64 %241 to i32
  %263 = call i32 @strlcat(i8* %243, i8* %261, i32 %262)
  br label %264

264:                                              ; preds = %251, %239
  %265 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %266 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %266, i32 0, i32 0
  %268 = load i8*, i8** %267, align 8
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 0
  %271 = load i8*, i8** %270, align 8
  %272 = getelementptr inbounds i8, i8* %271, i64 0
  %273 = load i8, i8* %272, align 1
  %274 = sext i8 %273 to i32
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %277

276:                                              ; preds = %264
  br label %278

277:                                              ; preds = %264
  br label %278

278:                                              ; preds = %277, %276
  %279 = phi i8* [ %243, %276 ], [ null, %277 ]
  %280 = load i32, i32* %10, align 4
  %281 = call i64 @zfs_send_space(%struct.TYPE_15__* %265, i8* %268, i8* %279, i32 %280, i64* %20)
  %282 = icmp ne i64 %281, 0
  br i1 %282, label %283, label %284

283:                                              ; preds = %278
  store i64 0, i64* %20, align 8
  br label %308

284:                                              ; preds = %278
  %285 = load i32*, i32** %16, align 8
  %286 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %286, i32 0, i32 0
  %288 = load i8*, i8** %287, align 8
  %289 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %290 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %289, i32 0, i32 0
  %291 = load i8*, i8** %290, align 8
  %292 = getelementptr inbounds i8, i8* %291, i64 0
  %293 = load i8, i8* %292, align 1
  %294 = sext i8 %293 to i32
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %296, label %300

296:                                              ; preds = %284
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %298 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %297, i32 0, i32 0
  %299 = load i8*, i8** %298, align 8
  br label %301

300:                                              ; preds = %284
  br label %301

301:                                              ; preds = %300, %296
  %302 = phi i8* [ %299, %296 ], [ null, %300 ]
  %303 = load i64, i64* %20, align 8
  %304 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %304, i32 0, i32 8
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @send_print_verbose(i32* %285, i8* %288, i8* %302, i64 %303, i32 %306)
  br label %308

308:                                              ; preds = %301, %283
  %309 = load i64, i64* %20, align 8
  %310 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %311 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %310, i32 0, i32 7
  %312 = load i32, i32* %311, align 4
  %313 = sext i32 %312 to i64
  %314 = add nsw i64 %313, %309
  %315 = trunc i64 %314 to i32
  store i32 %315, i32* %311, align 4
  %316 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %316)
  br label %317

317:                                              ; preds = %308, %234
  %318 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %318, i32 0, i32 9
  %320 = load i32, i32* %319, align 4
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %381, label %322

322:                                              ; preds = %317
  %323 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %323, i32 0, i32 3
  %325 = load i64, i64* %324, align 8
  %326 = icmp ne i64 %325, 0
  br i1 %326, label %327, label %354

327:                                              ; preds = %322
  %328 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %329 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 4
  store %struct.TYPE_15__* %328, %struct.TYPE_15__** %329, align 8
  %330 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %331 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %330, i32 0, i32 5
  %332 = load i32, i32* %331, align 4
  %333 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 3
  store i32 %332, i32* %333, align 4
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 8
  %336 = load i32, i32* %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 2
  store i32 %336, i32* %337, align 8
  %338 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %339 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %338, i32 0, i32 7
  %340 = load i32, i32* %339, align 4
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 1
  store i32 %340, i32* %341, align 4
  %342 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %342, i32 0, i32 6
  %344 = load i32, i32* %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %7, i32 0, i32 0
  store i32 %344, i32* %345, align 8
  %346 = load i32, i32* @send_progress_thread, align 4
  %347 = call i32 @pthread_create(i32* %8, i32* null, i32 %346, %struct.TYPE_17__* %7)
  store i32 %347, i32* %11, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %353

349:                                              ; preds = %327
  %350 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %351 = call i32 @zfs_close(%struct.TYPE_15__* %350)
  %352 = load i32, i32* %11, align 4
  store i32 %352, i32* %3, align 4
  br label %395

353:                                              ; preds = %327
  br label %354

354:                                              ; preds = %353, %322
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %356 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %357 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %356, i32 0, i32 0
  %358 = load i8*, i8** %357, align 8
  %359 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %359, i32 0, i32 2
  %361 = load i8*, i8** %360, align 8
  %362 = load i32, i32* %14, align 4
  %363 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %364 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %363, i32 0, i32 5
  %365 = load i32, i32* %364, align 4
  %366 = load i32, i32* %10, align 4
  %367 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %368 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %367, i32 0, i32 4
  %369 = load i32, i32* %368, align 8
  %370 = call i32 @dump_ioctl(%struct.TYPE_15__* %355, i8* %358, i8* %361, i32 %362, i32 %365, i32 %366, i32 %369)
  store i32 %370, i32* %11, align 4
  %371 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %372 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %371, i32 0, i32 3
  %373 = load i64, i64* %372, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %380

375:                                              ; preds = %354
  %376 = load i32, i32* %8, align 4
  %377 = call i32 @pthread_cancel(i32 %376)
  %378 = load i32, i32* %8, align 4
  %379 = call i32 @pthread_join(i32 %378, i32* null)
  br label %380

380:                                              ; preds = %375, %354
  br label %381

381:                                              ; preds = %380, %317
  %382 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %383 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %382, i32 0, i32 0
  %384 = load i8*, i8** %383, align 8
  %385 = load i8*, i8** %9, align 8
  %386 = call i32 @strcpy(i8* %384, i8* %385)
  %387 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %388 = load i32, i32* @ZFS_PROP_OBJSETID, align 4
  %389 = call i8* @zfs_prop_get_int(%struct.TYPE_15__* %387, i32 %388)
  %390 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %391 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %390, i32 0, i32 2
  store i8* %389, i8** %391, align 8
  %392 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %393 = call i32 @zfs_close(%struct.TYPE_15__* %392)
  %394 = load i32, i32* %11, align 4
  store i32 %394, i32* %3, align 4
  br label %395

395:                                              ; preds = %381, %349, %201, %93, %64
  %396 = load i32, i32* %3, align 4
  ret i32 %396
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @strcmp(i32*, i8*) #2

declare dso_local i32 @gather_holds(%struct.TYPE_15__*, %struct.TYPE_16__*) #2

declare dso_local i32 @strcpy(i8*, i8*) #2

declare dso_local i8* @zfs_prop_get_int(%struct.TYPE_15__*, i32) #2

declare dso_local i32 @zfs_close(%struct.TYPE_15__*) #2

declare dso_local i32* @fsavl_find(i32, i32, i8**) #2

declare dso_local i32 @VERIFY(i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32 @nvlist_exists(i32*, i8*) #2

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i32 @strlcat(i8*, i8*, i32) #2

declare dso_local i64 @zfs_send_space(%struct.TYPE_15__*, i8*, i8*, i32, i64*) #2

declare dso_local i32 @send_print_verbose(i32*, i8*, i8*, i64, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #3

declare !callback !2 dso_local i32 @pthread_create(i32*, i32*, i32, %struct.TYPE_17__*) #2

declare dso_local i32 @dump_ioctl(%struct.TYPE_15__*, i8*, i8*, i32, i32, i32, i32) #2

declare dso_local i32 @pthread_cancel(i32) #2

declare dso_local i32 @pthread_join(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{!3}
!3 = !{i64 2, i64 3, i1 false}
