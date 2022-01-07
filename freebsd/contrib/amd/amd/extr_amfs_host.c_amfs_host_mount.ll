; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_mount.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/amd/amd/extr_amfs_host.c_amfs_host_mount.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i8*, i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i8*, i64, %struct.sockaddr_in* }
%struct.sockaddr_in = type { i32 }
%struct.timeval = type { i32, i64 }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_19__ = type { i8*, %struct.TYPE_19__* }

@RPC_ANYSOCK = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@MAXPATHLEN = common dso_local global i32 0, align 4
@MFF_WEBNFS = common dso_local global i32 0, align 4
@XLOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"amfs_host_mount: cannot support WebNFS\00", align 1
@EIO = common dso_local global i32 0, align 4
@mnttab_file_name = common dso_local global i32 0, align 4
@XLOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"amfs_host_mount: NFS version %d\00", align 1
@MOUNTVERS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"get_mount_client failed for %s\00", align 1
@nfs_auth = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"Fetching export list from %s\00", align 1
@MOUNTPROC_EXPORT = common dso_local global i32 0, align 4
@xdr_void = common dso_local global i64 0, align 8
@xdr_exports = common dso_local global i64 0, align 8
@RPC_SUCCESS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"host_mount rpc failed: %s\00", align 1
@TRUE = common dso_local global i32 0, align 4
@sortfun = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [38 x i8] c"avoiding dup fhandle requested for %s\00", align 1
@XLOG_FATAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [38 x i8] c"amfs_host_mount: mf_info has no colon\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AM_MOUNTVERS3 = common dso_local global i32 0, align 4
@NFS_VERSION3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_18__*)* @amfs_host_mount to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amfs_host_mount(i32* %0, %struct.TYPE_18__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.TYPE_20__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_19__*, align 8
  %13 = alloca %struct.TYPE_19__*, align 8
  %14 = alloca %struct.TYPE_19__**, align 8
  %15 = alloca %struct.TYPE_19__**, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.sockaddr_in, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i64, align 8
  %26 = alloca %struct.timeval, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %14, align 8
  store %struct.TYPE_19__** null, %struct.TYPE_19__*** %15, align 8
  store i32 0, i32* %17, align 4
  %30 = load i32, i32* @RPC_ANYSOCK, align 4
  store i32 %30, i32* %19, align 4
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %20, align 4
  %32 = load i32, i32* @MAXPATHLEN, align 4
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %22, align 8
  %35 = alloca i8, i64 %33, align 16
  store i64 %33, i64* %23, align 8
  %36 = load i32, i32* @MAXPATHLEN, align 4
  %37 = zext i32 %36 to i64
  %38 = alloca i8, i64 %37, align 16
  store i64 %37, i64* %25, align 8
  %39 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %40 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @MFF_WEBNFS, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %2
  %46 = load i32, i32* @XLOG_ERROR, align 4
  %47 = call i32 (i32, i8*, ...) @plog(i32 %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EIO, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %28, align 4
  br label %352

49:                                               ; preds = %2
  %50 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @mnttab_file_name, align 4
  %54 = call i32* @read_mtab(i32 %52, i32 %53)
  store i32* %54, i32** %21, align 8
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 3
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = load i8*, i8** %58, align 8
  store i8* %59, i8** %16, align 8
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_17__*, %struct.TYPE_17__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %62, i32 0, i32 2
  %64 = load %struct.sockaddr_in*, %struct.sockaddr_in** %63, align 8
  %65 = bitcast %struct.sockaddr_in* %18 to i8*
  %66 = bitcast %struct.sockaddr_in* %64 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %65, i8* align 4 %66, i64 4, i1 false)
  %67 = load i32, i32* @XLOG_INFO, align 4
  %68 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 (i32, i8*, ...) @plog(i32 %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load i32, i32* @MOUNTVERS, align 4
  store i32 %75, i32* %27, align 4
  %76 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 0
  store i32 2, i32* %76, align 8
  %77 = getelementptr inbounds %struct.timeval, %struct.timeval* %26, i32 0, i32 1
  store i64 0, i64* %77, align 8
  %78 = load i8*, i8** %16, align 8
  %79 = load i32, i32* %27, align 4
  %80 = call %struct.TYPE_20__* @get_mount_client(i8* %78, %struct.sockaddr_in* %18, %struct.timeval* %26, i32* %19, i32 %79)
  store %struct.TYPE_20__* %80, %struct.TYPE_20__** %7, align 8
  %81 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %82 = icmp eq %struct.TYPE_20__* %81, null
  br i1 %82, label %83, label %88

83:                                               ; preds = %49
  %84 = load i32, i32* @XLOG_ERROR, align 4
  %85 = load i8*, i8** %16, align 8
  %86 = call i32 (i32, i8*, ...) @plog(i32 %84, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* %85)
  %87 = load i32, i32* @EIO, align 4
  store i32 %87, i32* %17, align 4
  br label %319

88:                                               ; preds = %49
  %89 = load i64, i64* @nfs_auth, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %97, label %91

91:                                               ; preds = %88
  %92 = call i32 (...) @make_nfs_auth()
  store i32 %92, i32* %17, align 4
  %93 = load i32, i32* %17, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %319

96:                                               ; preds = %91
  br label %97

97:                                               ; preds = %96, %88
  %98 = load i64, i64* @nfs_auth, align 8
  %99 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i8*, i8** %16, align 8
  %102 = call i32 @dlog(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i8* %101)
  %103 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  store i32 10, i32* %103, align 8
  %104 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %106 = load i32, i32* @MOUNTPROC_EXPORT, align 4
  %107 = load i64, i64* @xdr_void, align 8
  %108 = trunc i64 %107 to i32
  %109 = load i64, i64* @xdr_exports, align 8
  %110 = trunc i64 %109 to i32
  %111 = ptrtoint %struct.TYPE_19__** %12 to i32
  %112 = call i32 @clnt_call(%struct.TYPE_20__* %105, i32 %106, i32 %108, i32 0, i32 %110, i32 %111, %struct.timeval* byval(%struct.timeval) align 8 %6)
  store i32 %112, i32* %8, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* @RPC_SUCCESS, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %123

116:                                              ; preds = %97
  %117 = load i32, i32* %8, align 4
  %118 = call i8* @clnt_sperrno(i32 %117)
  store i8* %118, i8** %29, align 8
  %119 = load i32, i32* @XLOG_ERROR, align 4
  %120 = load i8*, i8** %29, align 8
  %121 = call i32 (i32, i8*, ...) @plog(i32 %119, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0), i8* %120)
  %122 = load i32, i32* @EIO, align 4
  store i32 %122, i32* %17, align 4
  br label %319

123:                                              ; preds = %97
  store i32 0, i32* %9, align 4
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %124, %struct.TYPE_19__** %13, align 8
  br label %125

125:                                              ; preds = %131, %123
  %126 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %127 = icmp ne %struct.TYPE_19__* %126, null
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load i32, i32* %9, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %9, align 4
  br label %131

131:                                              ; preds = %128
  %132 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_19__*, %struct.TYPE_19__** %133, align 8
  store %struct.TYPE_19__* %134, %struct.TYPE_19__** %13, align 8
  br label %125

135:                                              ; preds = %125
  %136 = load i32, i32* %9, align 4
  %137 = sext i32 %136 to i64
  %138 = mul i64 %137, 8
  %139 = trunc i64 %138 to i32
  %140 = call i64 @xmalloc(i32 %139)
  %141 = inttoptr i64 %140 to %struct.TYPE_19__**
  store %struct.TYPE_19__** %141, %struct.TYPE_19__*** %14, align 8
  store i32 0, i32* %10, align 4
  %142 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  store %struct.TYPE_19__* %142, %struct.TYPE_19__** %13, align 8
  br label %143

143:                                              ; preds = %166, %135
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %145 = icmp ne %struct.TYPE_19__* %144, null
  br i1 %145, label %146, label %170

146:                                              ; preds = %143
  %147 = trunc i64 %37 to i32
  %148 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @make_mntpt(i8* %38, i32 %147, %struct.TYPE_19__* %148, i32 %151)
  %153 = load i32*, i32** %21, align 8
  %154 = call i64 @already_mounted(i32* %153, i8* %38)
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* @TRUE, align 4
  store i32 %157, i32* %20, align 4
  br label %165

158:                                              ; preds = %146
  %159 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %160 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %161 = load i32, i32* %10, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %10, align 4
  %163 = sext i32 %161 to i64
  %164 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %160, i64 %163
  store %struct.TYPE_19__* %159, %struct.TYPE_19__** %164, align 8
  br label %165

165:                                              ; preds = %158, %156
  br label %166

166:                                              ; preds = %165
  %167 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 1
  %169 = load %struct.TYPE_19__*, %struct.TYPE_19__** %168, align 8
  store %struct.TYPE_19__* %169, %struct.TYPE_19__** %13, align 8
  br label %143

170:                                              ; preds = %143
  %171 = load i32, i32* %10, align 4
  store i32 %171, i32* %9, align 4
  %172 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @sortfun, align 4
  %175 = call i32 @qsort(%struct.TYPE_19__** %172, i32 %173, i32 8, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = sext i32 %176 to i64
  %178 = mul i64 %177, 8
  %179 = trunc i64 %178 to i32
  %180 = call i64 @xmalloc(i32 %179)
  %181 = inttoptr i64 %180 to %struct.TYPE_19__**
  store %struct.TYPE_19__** %181, %struct.TYPE_19__*** %15, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %182

182:                                              ; preds = %256, %170
  %183 = load i32, i32* %10, align 4
  %184 = load i32, i32* %9, align 4
  %185 = icmp slt i32 %183, %184
  br i1 %185, label %186, label %259

186:                                              ; preds = %182
  %187 = load i32, i32* %10, align 4
  %188 = load i32, i32* %11, align 4
  %189 = icmp sgt i32 %187, %188
  br i1 %189, label %190, label %227

190:                                              ; preds = %186
  %191 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %192 = load i32, i32* %11, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %191, i64 %193
  %195 = load %struct.TYPE_19__*, %struct.TYPE_19__** %194, align 8
  %196 = icmp ne %struct.TYPE_19__* %195, null
  br i1 %196, label %197, label %227

197:                                              ; preds = %190
  %198 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %199 = load i32, i32* %10, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %198, i64 %200
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %202, i32 0, i32 0
  %204 = load i8*, i8** %203, align 8
  %205 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %205, i64 %207
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %208, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i8*, i8** %210, align 8
  %212 = call i64 @STREQ(i8* %204, i8* %211)
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %227

214:                                              ; preds = %197
  %215 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %216 = load i32, i32* %10, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %215, i64 %217
  %219 = load %struct.TYPE_19__*, %struct.TYPE_19__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %219, i32 0, i32 0
  %221 = load i8*, i8** %220, align 8
  %222 = call i32 @dlog(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0), i8* %221)
  %223 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %224 = load i32, i32* %10, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %223, i64 %225
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %226, align 8
  br label %255

227:                                              ; preds = %197, %190, %186
  %228 = load i32, i32* %10, align 4
  store i32 %228, i32* %11, align 4
  %229 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %230 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %231 = load i32, i32* %10, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %230, i64 %232
  %234 = load %struct.TYPE_19__*, %struct.TYPE_19__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %234, i32 0, i32 0
  %236 = load i8*, i8** %235, align 8
  %237 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %238 = load i32, i32* %10, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %237, i64 %239
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 3
  %243 = load %struct.TYPE_17__*, %struct.TYPE_17__** %242, align 8
  %244 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %243, i32 0, i32 1
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @fetch_fhandle(%struct.TYPE_20__* %229, i8* %236, %struct.TYPE_19__** %240, i64 %245)
  store i32 %246, i32* %17, align 4
  %247 = load i32, i32* %17, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %227
  %250 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %251 = load i32, i32* %10, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %250, i64 %252
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %253, align 8
  br label %254

254:                                              ; preds = %249, %227
  br label %255

255:                                              ; preds = %254, %214
  br label %256

256:                                              ; preds = %255
  %257 = load i32, i32* %10, align 4
  %258 = add nsw i32 %257, 1
  store i32 %258, i32* %10, align 4
  br label %182

259:                                              ; preds = %182
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = trunc i64 %33 to i32
  %264 = call i32 @xstrlcpy(i8* %35, i8* %262, i32 %263)
  %265 = call i8* @strchr(i8* %35, i8 signext 58)
  store i8* %265, i8** %24, align 8
  %266 = icmp eq i8* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %259
  %268 = load i32, i32* @XLOG_FATAL, align 4
  %269 = call i32 (i32, i8*, ...) @plog(i32 %268, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  %270 = load i32, i32* @EINVAL, align 4
  store i32 %270, i32* %17, align 4
  br label %319

271:                                              ; preds = %259
  %272 = load i8*, i8** %24, align 8
  %273 = getelementptr inbounds i8, i8* %272, i32 1
  store i8* %273, i8** %24, align 8
  store i32 0, i32* %10, align 4
  br label %274

274:                                              ; preds = %315, %271
  %275 = load i32, i32* %10, align 4
  %276 = load i32, i32* %9, align 4
  %277 = icmp slt i32 %275, %276
  br i1 %277, label %278, label %318

278:                                              ; preds = %274
  %279 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %279, i64 %281
  %283 = load %struct.TYPE_19__*, %struct.TYPE_19__** %282, align 8
  store %struct.TYPE_19__* %283, %struct.TYPE_19__** %13, align 8
  %284 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %285 = icmp ne %struct.TYPE_19__* %284, null
  br i1 %285, label %286, label %314

286:                                              ; preds = %278
  %287 = load i8*, i8** %24, align 8
  %288 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %289 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %288, i32 0, i32 0
  %290 = load i8*, i8** %289, align 8
  %291 = load i8*, i8** %24, align 8
  %292 = ptrtoint i8* %291 to i64
  %293 = ptrtoint i8* %35 to i64
  %294 = sub i64 %292, %293
  %295 = sub i64 %33, %294
  %296 = trunc i64 %295 to i32
  %297 = call i32 @xstrlcpy(i8* %287, i8* %290, i32 %296)
  %298 = trunc i64 %37 to i32
  %299 = load %struct.TYPE_19__*, %struct.TYPE_19__** %13, align 8
  %300 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %300, i32 0, i32 2
  %302 = load i32, i32* %301, align 8
  %303 = call i32 @make_mntpt(i8* %38, i32 %298, %struct.TYPE_19__* %299, i32 %302)
  %304 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %305 = load i32, i32* %10, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %304, i64 %306
  %308 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %309 = call i64 @do_mount(%struct.TYPE_19__** %307, i8* %38, i8* %35, %struct.TYPE_18__* %308)
  %310 = icmp eq i64 %309, 0
  br i1 %310, label %311, label %313

311:                                              ; preds = %286
  %312 = load i32, i32* @TRUE, align 4
  store i32 %312, i32* %20, align 4
  br label %313

313:                                              ; preds = %311, %286
  br label %314

314:                                              ; preds = %313, %278
  br label %315

315:                                              ; preds = %314
  %316 = load i32, i32* %10, align 4
  %317 = add nsw i32 %316, 1
  store i32 %317, i32* %10, align 4
  br label %274

318:                                              ; preds = %274
  br label %319

319:                                              ; preds = %318, %267, %116, %95, %83
  %320 = load i32*, i32** %21, align 8
  %321 = call i32 @discard_mntlist(i32* %320)
  %322 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %14, align 8
  %323 = call i32 @XFREE(%struct.TYPE_19__** %322)
  %324 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %15, align 8
  %325 = call i32 @XFREE(%struct.TYPE_19__** %324)
  %326 = load i32, i32* %19, align 4
  %327 = load i32, i32* @RPC_ANYSOCK, align 4
  %328 = icmp ne i32 %326, %327
  br i1 %328, label %329, label %332

329:                                              ; preds = %319
  %330 = load i32, i32* %19, align 4
  %331 = call i32 @amu_close(i32 %330)
  br label %332

332:                                              ; preds = %329, %319
  %333 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %334 = icmp ne %struct.TYPE_20__* %333, null
  br i1 %334, label %335, label %338

335:                                              ; preds = %332
  %336 = load %struct.TYPE_20__*, %struct.TYPE_20__** %7, align 8
  %337 = call i32 @clnt_destroy(%struct.TYPE_20__* %336)
  br label %338

338:                                              ; preds = %335, %332
  %339 = load %struct.TYPE_19__*, %struct.TYPE_19__** %12, align 8
  %340 = icmp ne %struct.TYPE_19__* %339, null
  br i1 %340, label %341, label %346

341:                                              ; preds = %338
  %342 = load i64, i64* @xdr_exports, align 8
  %343 = trunc i64 %342 to i32
  %344 = ptrtoint %struct.TYPE_19__** %12 to i32
  %345 = call i32 @xdr_pri_free(i32 %343, i32 %344)
  br label %346

346:                                              ; preds = %341, %338
  %347 = load i32, i32* %20, align 4
  %348 = icmp ne i32 %347, 0
  br i1 %348, label %349, label %350

349:                                              ; preds = %346
  store i32 0, i32* %3, align 4
  store i32 1, i32* %28, align 4
  br label %352

350:                                              ; preds = %346
  %351 = load i32, i32* %17, align 4
  store i32 %351, i32* %3, align 4
  store i32 1, i32* %28, align 4
  br label %352

352:                                              ; preds = %350, %349, %45
  %353 = load i8*, i8** %22, align 8
  call void @llvm.stackrestore(i8* %353)
  %354 = load i32, i32* %3, align 4
  ret i32 %354
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @plog(i32, i8*, ...) #2

declare dso_local i32* @read_mtab(i32, i32) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local %struct.TYPE_20__* @get_mount_client(i8*, %struct.sockaddr_in*, %struct.timeval*, i32*, i32) #2

declare dso_local i32 @make_nfs_auth(...) #2

declare dso_local i32 @dlog(i8*, i8*) #2

declare dso_local i32 @clnt_call(%struct.TYPE_20__*, i32, i32, i32, i32, i32, %struct.timeval* byval(%struct.timeval) align 8) #2

declare dso_local i8* @clnt_sperrno(i32) #2

declare dso_local i64 @xmalloc(i32) #2

declare dso_local i32 @make_mntpt(i8*, i32, %struct.TYPE_19__*, i32) #2

declare dso_local i64 @already_mounted(i32*, i8*) #2

declare dso_local i32 @qsort(%struct.TYPE_19__**, i32, i32, i32) #2

declare dso_local i64 @STREQ(i8*, i8*) #2

declare dso_local i32 @fetch_fhandle(%struct.TYPE_20__*, i8*, %struct.TYPE_19__**, i64) #2

declare dso_local i32 @xstrlcpy(i8*, i8*, i32) #2

declare dso_local i8* @strchr(i8*, i8 signext) #2

declare dso_local i64 @do_mount(%struct.TYPE_19__**, i8*, i8*, %struct.TYPE_18__*) #2

declare dso_local i32 @discard_mntlist(i32*) #2

declare dso_local i32 @XFREE(%struct.TYPE_19__**) #2

declare dso_local i32 @amu_close(i32) #2

declare dso_local i32 @clnt_destroy(%struct.TYPE_20__*) #2

declare dso_local i32 @xdr_pri_free(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
