; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_encode_fattr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/nfsd/extr_nfsxdr.c_encode_fattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.TYPE_4__*, %struct.dentry* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.dentry = type { i32 }
%struct.kstat = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_5__, i64, i32, i64, i32, i64, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.timespec = type { i32, i64 }

@S_IFMT = common dso_local global i32 0, align 4
@nfs_ftypes = common dso_local global i32* null, align 8
@NFS_MAXPATHLEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*)* @encode_fattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_fattr(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2, %struct.kstat* %3) #0 {
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.kstat*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.timespec, align 8
  %12 = alloca i32, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  store %struct.kstat* %3, %struct.kstat** %8, align 8
  %13 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %14 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %13, i32 0, i32 1
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %9, align 8
  %16 = load %struct.kstat*, %struct.kstat** %8, align 8
  %17 = getelementptr inbounds %struct.kstat, %struct.kstat* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @S_IFMT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32*, i32** @nfs_ftypes, align 8
  %22 = load i32, i32* %10, align 4
  %23 = ashr i32 %22, 12
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @htonl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %31 = load %struct.kstat*, %struct.kstat** %8, align 8
  %32 = getelementptr inbounds %struct.kstat, %struct.kstat* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i8* @htonl(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.kstat*, %struct.kstat** %8, align 8
  %39 = getelementptr inbounds %struct.kstat, %struct.kstat* %38, i32 0, i32 11
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = call i8* @htonl(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %6, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %6, align 8
  store i32 %43, i32* %44, align 4
  %46 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %47 = load %struct.kstat*, %struct.kstat** %8, align 8
  %48 = getelementptr inbounds %struct.kstat, %struct.kstat* %47, i32 0, i32 10
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @nfsd_ruid(%struct.svc_rqst* %46, i32 %49)
  %51 = trunc i64 %50 to i32
  %52 = call i8* @htonl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %6, align 8
  store i32 %53, i32* %54, align 4
  %56 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %57 = load %struct.kstat*, %struct.kstat** %8, align 8
  %58 = getelementptr inbounds %struct.kstat, %struct.kstat* %57, i32 0, i32 9
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @nfsd_rgid(%struct.svc_rqst* %56, i32 %59)
  %61 = trunc i64 %60 to i32
  %62 = call i8* @htonl(i32 %61)
  %63 = ptrtoint i8* %62 to i32
  %64 = load i32*, i32** %6, align 8
  %65 = getelementptr inbounds i32, i32* %64, i32 1
  store i32* %65, i32** %6, align 8
  store i32 %63, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = call i64 @S_ISLNK(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %82

69:                                               ; preds = %4
  %70 = load %struct.kstat*, %struct.kstat** %8, align 8
  %71 = getelementptr inbounds %struct.kstat, %struct.kstat* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @NFS_MAXPATHLEN, align 8
  %74 = icmp sgt i64 %72, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %69
  %76 = load i64, i64* @NFS_MAXPATHLEN, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i8* @htonl(i32 %77)
  %79 = ptrtoint i8* %78 to i32
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 1
  store i32* %81, i32** %6, align 8
  store i32 %79, i32* %80, align 4
  br label %91

82:                                               ; preds = %69, %4
  %83 = load %struct.kstat*, %struct.kstat** %8, align 8
  %84 = getelementptr inbounds %struct.kstat, %struct.kstat* %83, i32 0, i32 1
  %85 = load i64, i64* %84, align 8
  %86 = trunc i64 %85 to i32
  %87 = call i8* @htonl(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %6, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %6, align 8
  store i32 %88, i32* %89, align 4
  br label %91

91:                                               ; preds = %82, %75
  %92 = load %struct.kstat*, %struct.kstat** %8, align 8
  %93 = getelementptr inbounds %struct.kstat, %struct.kstat* %92, i32 0, i32 8
  %94 = load i64, i64* %93, align 8
  %95 = trunc i64 %94 to i32
  %96 = call i8* @htonl(i32 %95)
  %97 = ptrtoint i8* %96 to i32
  %98 = load i32*, i32** %6, align 8
  %99 = getelementptr inbounds i32, i32* %98, i32 1
  store i32* %99, i32** %6, align 8
  store i32 %97, i32* %98, align 4
  %100 = load i32, i32* %10, align 4
  %101 = call i64 @S_ISCHR(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %107, label %103

103:                                              ; preds = %91
  %104 = load i32, i32* %10, align 4
  %105 = call i64 @S_ISBLK(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103, %91
  %108 = load %struct.kstat*, %struct.kstat** %8, align 8
  %109 = getelementptr inbounds %struct.kstat, %struct.kstat* %108, i32 0, i32 7
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @new_encode_dev(i32 %110)
  %112 = call i8* @htonl(i32 %111)
  %113 = ptrtoint i8* %112 to i32
  %114 = load i32*, i32** %6, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %6, align 8
  store i32 %113, i32* %114, align 4
  br label %121

116:                                              ; preds = %103
  %117 = call i8* @htonl(i32 -1)
  %118 = ptrtoint i8* %117 to i32
  %119 = load i32*, i32** %6, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %6, align 8
  store i32 %118, i32* %119, align 4
  br label %121

121:                                              ; preds = %116, %107
  %122 = load %struct.kstat*, %struct.kstat** %8, align 8
  %123 = getelementptr inbounds %struct.kstat, %struct.kstat* %122, i32 0, i32 6
  %124 = load i64, i64* %123, align 8
  %125 = trunc i64 %124 to i32
  %126 = call i8* @htonl(i32 %125)
  %127 = ptrtoint i8* %126 to i32
  %128 = load i32*, i32** %6, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %6, align 8
  store i32 %127, i32* %128, align 4
  %130 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %131 = call i32 @fsid_source(%struct.svc_fh* %130)
  switch i32 %131, label %132 [
    i32 130, label %133
    i32 129, label %142
    i32 128, label %153
  ]

132:                                              ; preds = %121
  br label %133

133:                                              ; preds = %121, %132
  %134 = load %struct.kstat*, %struct.kstat** %8, align 8
  %135 = getelementptr inbounds %struct.kstat, %struct.kstat* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @new_encode_dev(i32 %136)
  %138 = call i8* @htonl(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %6, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %6, align 8
  store i32 %139, i32* %140, align 4
  br label %197

142:                                              ; preds = %121
  %143 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %144 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %143, i32 0, i32 0
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i8* @htonl(i32 %148)
  %150 = ptrtoint i8* %149 to i32
  %151 = load i32*, i32** %6, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %6, align 8
  store i32 %150, i32* %151, align 4
  br label %197

153:                                              ; preds = %121
  %154 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %155 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %154, i32 0, i32 0
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 0
  %158 = load i64, i64* %157, align 8
  %159 = inttoptr i64 %158 to i32*
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  %161 = load i32, i32* %160, align 4
  store i32 %161, i32* %12, align 4
  %162 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %163 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %162, i32 0, i32 0
  %164 = load %struct.TYPE_4__*, %struct.TYPE_4__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = inttoptr i64 %166 to i32*
  %168 = getelementptr inbounds i32, i32* %167, i64 1
  %169 = load i32, i32* %168, align 4
  %170 = load i32, i32* %12, align 4
  %171 = xor i32 %170, %169
  store i32 %171, i32* %12, align 4
  %172 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %173 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %172, i32 0, i32 0
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 0
  %176 = load i64, i64* %175, align 8
  %177 = inttoptr i64 %176 to i32*
  %178 = getelementptr inbounds i32, i32* %177, i64 2
  %179 = load i32, i32* %178, align 4
  %180 = load i32, i32* %12, align 4
  %181 = xor i32 %180, %179
  store i32 %181, i32* %12, align 4
  %182 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %183 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %182, i32 0, i32 0
  %184 = load %struct.TYPE_4__*, %struct.TYPE_4__** %183, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = inttoptr i64 %186 to i32*
  %188 = getelementptr inbounds i32, i32* %187, i64 3
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %12, align 4
  %191 = xor i32 %190, %189
  store i32 %191, i32* %12, align 4
  %192 = load i32, i32* %12, align 4
  %193 = call i8* @htonl(i32 %192)
  %194 = ptrtoint i8* %193 to i32
  %195 = load i32*, i32** %6, align 8
  %196 = getelementptr inbounds i32, i32* %195, i32 1
  store i32* %196, i32** %6, align 8
  store i32 %194, i32* %195, align 4
  br label %197

197:                                              ; preds = %153, %142, %133
  %198 = load %struct.kstat*, %struct.kstat** %8, align 8
  %199 = getelementptr inbounds %struct.kstat, %struct.kstat* %198, i32 0, i32 4
  %200 = load i64, i64* %199, align 8
  %201 = trunc i64 %200 to i32
  %202 = call i8* @htonl(i32 %201)
  %203 = ptrtoint i8* %202 to i32
  %204 = load i32*, i32** %6, align 8
  %205 = getelementptr inbounds i32, i32* %204, i32 1
  store i32* %205, i32** %6, align 8
  store i32 %203, i32* %204, align 4
  %206 = load %struct.kstat*, %struct.kstat** %8, align 8
  %207 = getelementptr inbounds %struct.kstat, %struct.kstat* %206, i32 0, i32 3
  %208 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = trunc i64 %209 to i32
  %211 = call i8* @htonl(i32 %210)
  %212 = ptrtoint i8* %211 to i32
  %213 = load i32*, i32** %6, align 8
  %214 = getelementptr inbounds i32, i32* %213, i32 1
  store i32* %214, i32** %6, align 8
  store i32 %212, i32* %213, align 4
  %215 = load %struct.kstat*, %struct.kstat** %8, align 8
  %216 = getelementptr inbounds %struct.kstat, %struct.kstat* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %226

220:                                              ; preds = %197
  %221 = load %struct.kstat*, %struct.kstat** %8, align 8
  %222 = getelementptr inbounds %struct.kstat, %struct.kstat* %221, i32 0, i32 3
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 8
  %225 = sdiv i32 %224, 1000
  br label %227

226:                                              ; preds = %197
  br label %227

227:                                              ; preds = %226, %220
  %228 = phi i32 [ %225, %220 ], [ 0, %226 ]
  %229 = call i8* @htonl(i32 %228)
  %230 = ptrtoint i8* %229 to i32
  %231 = load i32*, i32** %6, align 8
  %232 = getelementptr inbounds i32, i32* %231, i32 1
  store i32* %232, i32** %6, align 8
  store i32 %230, i32* %231, align 4
  %233 = load %struct.dentry*, %struct.dentry** %9, align 8
  %234 = getelementptr inbounds %struct.dentry, %struct.dentry* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @lease_get_mtime(i32 %235, %struct.timespec* %11)
  %237 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = trunc i64 %238 to i32
  %240 = call i8* @htonl(i32 %239)
  %241 = ptrtoint i8* %240 to i32
  %242 = load i32*, i32** %6, align 8
  %243 = getelementptr inbounds i32, i32* %242, i32 1
  store i32* %243, i32** %6, align 8
  store i32 %241, i32* %242, align 4
  %244 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = icmp ne i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %227
  %248 = getelementptr inbounds %struct.timespec, %struct.timespec* %11, i32 0, i32 0
  %249 = load i32, i32* %248, align 8
  %250 = sdiv i32 %249, 1000
  br label %252

251:                                              ; preds = %227
  br label %252

252:                                              ; preds = %251, %247
  %253 = phi i32 [ %250, %247 ], [ 0, %251 ]
  %254 = call i8* @htonl(i32 %253)
  %255 = ptrtoint i8* %254 to i32
  %256 = load i32*, i32** %6, align 8
  %257 = getelementptr inbounds i32, i32* %256, i32 1
  store i32* %257, i32** %6, align 8
  store i32 %255, i32* %256, align 4
  %258 = load %struct.kstat*, %struct.kstat** %8, align 8
  %259 = getelementptr inbounds %struct.kstat, %struct.kstat* %258, i32 0, i32 2
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 1
  %261 = load i64, i64* %260, align 8
  %262 = trunc i64 %261 to i32
  %263 = call i8* @htonl(i32 %262)
  %264 = ptrtoint i8* %263 to i32
  %265 = load i32*, i32** %6, align 8
  %266 = getelementptr inbounds i32, i32* %265, i32 1
  store i32* %266, i32** %6, align 8
  store i32 %264, i32* %265, align 4
  %267 = load %struct.kstat*, %struct.kstat** %8, align 8
  %268 = getelementptr inbounds %struct.kstat, %struct.kstat* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %278

272:                                              ; preds = %252
  %273 = load %struct.kstat*, %struct.kstat** %8, align 8
  %274 = getelementptr inbounds %struct.kstat, %struct.kstat* %273, i32 0, i32 2
  %275 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %274, i32 0, i32 0
  %276 = load i32, i32* %275, align 8
  %277 = sdiv i32 %276, 1000
  br label %279

278:                                              ; preds = %252
  br label %279

279:                                              ; preds = %278, %272
  %280 = phi i32 [ %277, %272 ], [ 0, %278 ]
  %281 = call i8* @htonl(i32 %280)
  %282 = ptrtoint i8* %281 to i32
  %283 = load i32*, i32** %6, align 8
  %284 = getelementptr inbounds i32, i32* %283, i32 1
  store i32* %284, i32** %6, align 8
  store i32 %282, i32* %283, align 4
  %285 = load i32*, i32** %6, align 8
  ret i32* %285
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i64 @nfsd_ruid(%struct.svc_rqst*, i32) #1

declare dso_local i64 @nfsd_rgid(%struct.svc_rqst*, i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @new_encode_dev(i32) #1

declare dso_local i32 @fsid_source(%struct.svc_fh*) #1

declare dso_local i32 @lease_get_mtime(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
