; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_rename.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_rename.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i8*, i32*, i32 }
%struct.TYPE_16__ = type { i64, i64, i64 }
%struct.TYPE_15__ = type { i8*, i8*, i32, i32, i32 }

@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot rename to '%s'\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"@\00", align 1
@ZFS_TYPE_SNAPSHOT = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@ZFS_TYPE_BOOKMARK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s must be part of same dataset\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"snapshots\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"bookmarks\00", align 1
@EZFS_CROSSTARGET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"recursive rename must be a snapshot\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"datasets must be within same pool\00", align 1
@.str.7 = private unnamed_addr constant [64 x i8] c"New dataset name cannot be a descendant of current dataset name\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"cannot rename '%s'\00", align 1
@GLOBAL_ZONEID = common dso_local global i64 0, align 8
@ZFS_PROP_ZONED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [37 x i8] c"dataset is used in a non-global zone\00", align 1
@EZFS_ZONED = common dso_local global i32 0, align 4
@ZFS_TYPE_FILESYSTEM = common dso_local global i32 0, align 4
@ZFS_PROP_MOUNTPOINT = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"legacy\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i32 0, align 4
@CL_GATHER_DONT_UNMOUNT = common dso_local global i32 0, align 4
@MS_FORCE = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [69 x i8] c"child dataset with inherited mountpoint is used in a non-global zone\00", align 1
@DMU_OST_ZVOL = common dso_local global i32 0, align 4
@DMU_OST_ZFS = common dso_local global i32 0, align 4
@ZFS_IOC_RENAME = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EEXIST = common dso_local global i64 0, align 8
@.str.13 = private unnamed_addr constant [57 x i8] c"a child dataset already has a snapshot with the new name\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_rename(%struct.TYPE_14__* %0, i8* %1, i8* %2, %struct.TYPE_16__* byval(%struct.TYPE_16__) align 8 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_14__*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32*, align 8
  %19 = alloca [1024 x i8], align 16
  %20 = alloca i32, align 4
  %21 = alloca i8, align 1
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %22 = bitcast %struct.TYPE_15__* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %22, i8 0, i64 32, i1 false)
  store i32* null, i32** %12, align 8
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %13, align 8
  store i8* null, i8** %14, align 8
  %23 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %15, align 8
  %26 = alloca i8, i64 %24, align 16
  store i64 %24, i64* %16, align 8
  %27 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i8, i64 %28, align 16
  store i64 %28, i64* %17, align 8
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %18, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = call i64 @strcmp(i8* %35, i8* %36)
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

40:                                               ; preds = %4
  %41 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %42 = load i32, i32* @TEXT_DOMAIN, align 4
  %43 = call i8* @dgettext(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %44 = load i8*, i8** %8, align 8
  %45 = call i32 @snprintf(i8* %41, i32 1024, i8* %43, i8* %44)
  %46 = load i8*, i8** %7, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @assert(i64 %50)
  %52 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %53 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @strlcat(i8* %54, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 8)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i8*, i8** %7, align 8
  %60 = call i32 @strlcat(i8* %58, i8* %59, i32 8)
  %61 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %62, i32 0, i32 2
  store i32 %61, i32* %63, align 8
  br label %64

64:                                               ; preds = %48, %40
  %65 = load i32*, i32** %18, align 8
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i64, i64* @B_TRUE, align 8
  %73 = call i32 @zfs_validate_name(i32* %65, i8* %68, i32 %71, i64 %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %64
  %76 = load i32*, i32** %18, align 8
  %77 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %78 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %79 = call i32 @zfs_error(i32* %76, i32 %77, i8* %78)
  store i32 %79, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

80:                                               ; preds = %64
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %92, label %86

86:                                               ; preds = %80
  %87 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %196

92:                                               ; preds = %86, %80
  %93 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %97 = icmp eq i32 %95, %96
  %98 = zext i1 %97 to i64
  %99 = select i1 %97, i32 64, i32 35
  %100 = trunc i32 %99 to i8
  store i8 %100, i8* %21, align 1
  %101 = load i8*, i8** %8, align 8
  %102 = load i8, i8* %21, align 1
  %103 = call i8* @strchr(i8* %101, i8 signext %102)
  %104 = icmp eq i8* %103, null
  br i1 %104, label %112, label %105

105:                                              ; preds = %92
  %106 = load i8*, i8** %8, align 8
  %107 = load i8, i8* %106, align 1
  %108 = sext i8 %107 to i32
  %109 = load i8, i8* %21, align 1
  %110 = sext i8 %109 to i32
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %133

112:                                              ; preds = %105, %92
  %113 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 0
  %115 = load i8*, i8** %114, align 8
  %116 = trunc i64 %24 to i32
  %117 = call i32 @strlcpy(i8* %26, i8* %115, i32 %116)
  %118 = load i8, i8* %21, align 1
  %119 = call i8* @strchr(i8* %26, i8 signext %118)
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %8, align 8
  %121 = load i8, i8* %21, align 1
  %122 = call i8* @strchr(i8* %120, i8 signext %121)
  %123 = icmp eq i8* %122, null
  br i1 %123, label %124, label %127

124:                                              ; preds = %112
  %125 = load i8*, i8** %11, align 8
  %126 = getelementptr inbounds i8, i8* %125, i32 1
  store i8* %126, i8** %11, align 8
  store i8 0, i8* %126, align 1
  br label %129

127:                                              ; preds = %112
  %128 = load i8*, i8** %11, align 8
  store i8 0, i8* %128, align 1
  br label %129

129:                                              ; preds = %127, %124
  %130 = load i8*, i8** %8, align 8
  %131 = trunc i64 %24 to i32
  %132 = call i32 @strlcat(i8* %26, i8* %130, i32 %131)
  store i8* %26, i8** %8, align 8
  br label %181

133:                                              ; preds = %105
  %134 = load i8*, i8** %8, align 8
  %135 = load i8, i8* %21, align 1
  %136 = call i8* @strchr(i8* %134, i8 signext %135)
  store i8* %136, i8** %11, align 8
  %137 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i8*, i8** %138, align 8
  %140 = load i8*, i8** %8, align 8
  %141 = load i8*, i8** %11, align 8
  %142 = load i8*, i8** %8, align 8
  %143 = ptrtoint i8* %141 to i64
  %144 = ptrtoint i8* %142 to i64
  %145 = sub i64 %143, %144
  %146 = trunc i64 %145 to i32
  %147 = call i64 @strncmp(i8* %139, i8* %140, i32 %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %164, label %149

149:                                              ; preds = %133
  %150 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 0
  %152 = load i8*, i8** %151, align 8
  %153 = load i8*, i8** %11, align 8
  %154 = load i8*, i8** %8, align 8
  %155 = ptrtoint i8* %153 to i64
  %156 = ptrtoint i8* %154 to i64
  %157 = sub i64 %155, %156
  %158 = getelementptr inbounds i8, i8* %152, i64 %157
  %159 = load i8, i8* %158, align 1
  %160 = sext i8 %159 to i32
  %161 = load i8, i8* %21, align 1
  %162 = sext i8 %161 to i32
  %163 = icmp ne i32 %160, %162
  br i1 %163, label %164, label %180

164:                                              ; preds = %149, %133
  %165 = load i32*, i32** %18, align 8
  %166 = load i32, i32* @TEXT_DOMAIN, align 4
  %167 = call i8* @dgettext(i32 %166, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  %168 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %172 = icmp eq i32 %170, %171
  %173 = zext i1 %172 to i64
  %174 = select i1 %172, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0)
  %175 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %165, i8* %167, i8* %174)
  %176 = load i32*, i32** %18, align 8
  %177 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %178 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %179 = call i32 @zfs_error(i32* %176, i32 %177, i8* %178)
  store i32 %179, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

180:                                              ; preds = %149
  br label %181

181:                                              ; preds = %180, %129
  %182 = load i32*, i32** %18, align 8
  %183 = load i8*, i8** %8, align 8
  %184 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i64, i64* @B_TRUE, align 8
  %188 = call i32 @zfs_validate_name(i32* %182, i8* %183, i32 %186, i64 %187)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %195, label %190

190:                                              ; preds = %181
  %191 = load i32*, i32** %18, align 8
  %192 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %193 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %194 = call i32 @zfs_error(i32* %191, i32 %192, i8* %193)
  store i32 %194, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

195:                                              ; preds = %181
  br label %287

196:                                              ; preds = %86
  %197 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %209

200:                                              ; preds = %196
  %201 = load i32*, i32** %18, align 8
  %202 = load i32, i32* @TEXT_DOMAIN, align 4
  %203 = call i8* @dgettext(i32 %202, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %204 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %201, i8* %203)
  %205 = load i32*, i32** %18, align 8
  %206 = load i32, i32* @EZFS_BADTYPE, align 4
  %207 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %208 = call i32 @zfs_error(i32* %205, i32 %206, i8* %207)
  store i32 %208, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

209:                                              ; preds = %196
  %210 = load i32*, i32** %18, align 8
  %211 = load i8*, i8** %8, align 8
  %212 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = load i64, i64* @B_TRUE, align 8
  %216 = call i32 @zfs_validate_name(i32* %210, i8* %211, i32 %214, i64 %215)
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %223, label %218

218:                                              ; preds = %209
  %219 = load i32*, i32** %18, align 8
  %220 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %221 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %222 = call i32 @zfs_error(i32* %219, i32 %220, i8* %221)
  store i32 %222, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

223:                                              ; preds = %209
  %224 = load i32*, i32** %18, align 8
  %225 = load i8*, i8** %8, align 8
  %226 = load i32, i32* @B_FALSE, align 4
  %227 = call i64 @check_parents(i32* %224, i8* %225, i32* null, i32 %226, i32* null)
  %228 = icmp ne i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %223
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

230:                                              ; preds = %223
  %231 = load i8*, i8** %8, align 8
  %232 = call i8* @strchr(i8* %231, i8 signext 47)
  store i8* %232, i8** %11, align 8
  %233 = icmp ne i8* %232, null
  %234 = zext i1 %233 to i32
  %235 = call i32 @verify(i32 %234)
  %236 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %236, i32 0, i32 0
  %238 = load i8*, i8** %237, align 8
  %239 = load i8*, i8** %8, align 8
  %240 = load i8*, i8** %11, align 8
  %241 = load i8*, i8** %8, align 8
  %242 = ptrtoint i8* %240 to i64
  %243 = ptrtoint i8* %241 to i64
  %244 = sub i64 %242, %243
  %245 = trunc i64 %244 to i32
  %246 = call i64 @strncmp(i8* %238, i8* %239, i32 %245)
  %247 = icmp ne i64 %246, 0
  br i1 %247, label %261, label %248

248:                                              ; preds = %230
  %249 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %249, i32 0, i32 0
  %251 = load i8*, i8** %250, align 8
  %252 = load i8*, i8** %11, align 8
  %253 = load i8*, i8** %8, align 8
  %254 = ptrtoint i8* %252 to i64
  %255 = ptrtoint i8* %253 to i64
  %256 = sub i64 %254, %255
  %257 = getelementptr inbounds i8, i8* %251, i64 %256
  %258 = load i8, i8* %257, align 1
  %259 = sext i8 %258 to i32
  %260 = icmp ne i32 %259, 47
  br i1 %260, label %261, label %270

261:                                              ; preds = %248, %230
  %262 = load i32*, i32** %18, align 8
  %263 = load i32, i32* @TEXT_DOMAIN, align 4
  %264 = call i8* @dgettext(i32 %263, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %265 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %262, i8* %264)
  %266 = load i32*, i32** %18, align 8
  %267 = load i32, i32* @EZFS_CROSSTARGET, align 4
  %268 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %269 = call i32 @zfs_error(i32* %266, i32 %267, i8* %268)
  store i32 %269, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

270:                                              ; preds = %248
  %271 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %272 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %271, i32 0, i32 0
  %273 = load i8*, i8** %272, align 8
  %274 = load i8*, i8** %8, align 8
  %275 = call i64 @is_descendant(i8* %273, i8* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %286

277:                                              ; preds = %270
  %278 = load i32*, i32** %18, align 8
  %279 = load i32, i32* @TEXT_DOMAIN, align 4
  %280 = call i8* @dgettext(i32 %279, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.7, i64 0, i64 0))
  %281 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %278, i8* %280)
  %282 = load i32*, i32** %18, align 8
  %283 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %284 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %285 = call i32 @zfs_error(i32* %282, i32 %283, i8* %284)
  store i32 %285, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

286:                                              ; preds = %270
  br label %287

287:                                              ; preds = %286, %195
  %288 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %289 = load i32, i32* @TEXT_DOMAIN, align 4
  %290 = call i8* @dgettext(i32 %289, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %291 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %292 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %291, i32 0, i32 0
  %293 = load i8*, i8** %292, align 8
  %294 = call i32 @snprintf(i8* %288, i32 1024, i8* %290, i8* %293)
  %295 = call i64 (...) @getzoneid()
  %296 = load i64, i64* @GLOBAL_ZONEID, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %312

298:                                              ; preds = %287
  %299 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %300 = load i32, i32* @ZFS_PROP_ZONED, align 4
  %301 = call i64 @zfs_prop_get_int(%struct.TYPE_14__* %299, i32 %300)
  %302 = icmp ne i64 %301, 0
  br i1 %302, label %303, label %312

303:                                              ; preds = %298
  %304 = load i32*, i32** %18, align 8
  %305 = load i32, i32* @TEXT_DOMAIN, align 4
  %306 = call i8* @dgettext(i32 %305, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.9, i64 0, i64 0))
  %307 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %304, i8* %306)
  %308 = load i32*, i32** %18, align 8
  %309 = load i32, i32* @EZFS_ZONED, align 4
  %310 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %311 = call i32 @zfs_error(i32* %308, i32 %309, i8* %310)
  store i32 %311, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

312:                                              ; preds = %298, %287
  %313 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %314 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %313, i32 0, i32 2
  %315 = load i32, i32* %314, align 8
  %316 = load i32, i32* @ZFS_TYPE_FILESYSTEM, align 4
  %317 = icmp eq i32 %315, %316
  br i1 %317, label %318, label %342

318:                                              ; preds = %312
  %319 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = icmp ne i64 %320, 0
  br i1 %321, label %342, label %322

322:                                              ; preds = %318
  %323 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %342, label %326

326:                                              ; preds = %322
  %327 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %328 = load i32, i32* @ZFS_PROP_MOUNTPOINT, align 4
  %329 = trunc i64 %28 to i32
  %330 = load i32, i32* @B_FALSE, align 4
  %331 = call i64 @zfs_prop_get(%struct.TYPE_14__* %327, i32 %328, i8* %29, i32 %329, i32* null, i32* null, i32 0, i32 %330)
  %332 = icmp eq i64 %331, 0
  br i1 %332, label %333, label %342

333:                                              ; preds = %326
  %334 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %335 = icmp eq i64 %334, 0
  br i1 %335, label %339, label %336

336:                                              ; preds = %333
  %337 = call i64 @strcmp(i8* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %338 = icmp eq i64 %337, 0
  br i1 %338, label %339, label %342

339:                                              ; preds = %336, %333
  %340 = load i64, i64* @B_TRUE, align 8
  %341 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  store i64 %340, i64* %341, align 8
  br label %342

342:                                              ; preds = %339, %336, %326, %322, %318, %312
  %343 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = icmp ne i64 %344, 0
  br i1 %345, label %346, label %371

346:                                              ; preds = %342
  %347 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %347, i32 0, i32 1
  %349 = load i32*, i32** %348, align 8
  %350 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = load i8*, i8** %351, align 8
  %353 = call i8* @zfs_strdup(i32* %349, i8* %352)
  store i8* %353, i8** %14, align 8
  %354 = load i8*, i8** %14, align 8
  %355 = icmp eq i8* %354, null
  br i1 %355, label %356, label %357

356:                                              ; preds = %346
  store i32 -1, i32* %9, align 4
  br label %526

357:                                              ; preds = %346
  %358 = load i8*, i8** %14, align 8
  %359 = call i8* @strchr(i8* %358, i8 signext 64)
  store i8* %359, i8** %11, align 8
  %360 = load i8*, i8** %11, align 8
  store i8 0, i8* %360, align 1
  %361 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %361, i32 0, i32 1
  %363 = load i32*, i32** %362, align 8
  %364 = load i8*, i8** %14, align 8
  %365 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %366 = call %struct.TYPE_14__* @zfs_open(i32* %363, i8* %364, i32 %365)
  store %struct.TYPE_14__* %366, %struct.TYPE_14__** %13, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %368 = icmp eq %struct.TYPE_14__* %367, null
  br i1 %368, label %369, label %370

369:                                              ; preds = %357
  store i32 -1, i32* %9, align 4
  br label %526

370:                                              ; preds = %357
  br label %425

371:                                              ; preds = %342
  %372 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %373 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %372, i32 0, i32 2
  %374 = load i32, i32* %373, align 8
  %375 = load i32, i32* @ZFS_TYPE_SNAPSHOT, align 4
  %376 = icmp ne i32 %374, %375
  br i1 %376, label %377, label %424

377:                                              ; preds = %371
  %378 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %379 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 8
  %381 = load i32, i32* @ZFS_TYPE_BOOKMARK, align 4
  %382 = icmp ne i32 %380, %381
  br i1 %382, label %383, label %424

383:                                              ; preds = %377
  %384 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %385 = load i32, i32* @ZFS_PROP_NAME, align 4
  %386 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %387 = load i64, i64* %386, align 8
  %388 = icmp ne i64 %387, 0
  br i1 %388, label %389, label %391

389:                                              ; preds = %383
  %390 = load i32, i32* @CL_GATHER_DONT_UNMOUNT, align 4
  br label %392

391:                                              ; preds = %383
  br label %392

392:                                              ; preds = %391, %389
  %393 = phi i32 [ %390, %389 ], [ 0, %391 ]
  %394 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 2
  %395 = load i64, i64* %394, align 8
  %396 = icmp ne i64 %395, 0
  br i1 %396, label %397, label %399

397:                                              ; preds = %392
  %398 = load i32, i32* @MS_FORCE, align 4
  br label %400

399:                                              ; preds = %392
  br label %400

400:                                              ; preds = %399, %397
  %401 = phi i32 [ %398, %397 ], [ 0, %399 ]
  %402 = call i32* @changelist_gather(%struct.TYPE_14__* %384, i32 %385, i32 %393, i32 %401)
  store i32* %402, i32** %12, align 8
  %403 = icmp eq i32* %402, null
  br i1 %403, label %404, label %405

404:                                              ; preds = %400
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

405:                                              ; preds = %400
  %406 = load i32*, i32** %12, align 8
  %407 = call i64 @changelist_haszonedchild(i32* %406)
  %408 = icmp ne i64 %407, 0
  br i1 %408, label %409, label %418

409:                                              ; preds = %405
  %410 = load i32*, i32** %18, align 8
  %411 = load i32, i32* @TEXT_DOMAIN, align 4
  %412 = call i8* @dgettext(i32 %411, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.12, i64 0, i64 0))
  %413 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %410, i8* %412)
  %414 = load i32*, i32** %18, align 8
  %415 = load i32, i32* @EZFS_ZONED, align 4
  %416 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %417 = call i32 @zfs_error(i32* %414, i32 %415, i8* %416)
  store i32 -1, i32* %9, align 4
  br label %526

418:                                              ; preds = %405
  %419 = load i32*, i32** %12, align 8
  %420 = call i32 @changelist_prefix(i32* %419)
  store i32 %420, i32* %9, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %418
  br label %526

423:                                              ; preds = %418
  br label %424

424:                                              ; preds = %423, %377, %371
  br label %425

425:                                              ; preds = %424, %370
  %426 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %427 = call i64 @ZFS_IS_VOLUME(%struct.TYPE_14__* %426)
  %428 = icmp ne i64 %427, 0
  br i1 %428, label %429, label %432

429:                                              ; preds = %425
  %430 = load i32, i32* @DMU_OST_ZVOL, align 4
  %431 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %430, i32* %431, align 4
  br label %435

432:                                              ; preds = %425
  %433 = load i32, i32* @DMU_OST_ZFS, align 4
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 3
  store i32 %433, i32* %434, align 4
  br label %435

435:                                              ; preds = %432, %429
  %436 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %437 = load i8*, i8** %436, align 8
  %438 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %439 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %438, i32 0, i32 0
  %440 = load i8*, i8** %439, align 8
  %441 = call i32 @strlcpy(i8* %437, i8* %440, i32 8)
  %442 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 1
  %443 = load i8*, i8** %442, align 8
  %444 = load i8*, i8** %8, align 8
  %445 = call i32 @strlcpy(i8* %443, i8* %444, i32 8)
  %446 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %447 = load i64, i64* %446, align 8
  %448 = icmp ne i64 %447, 0
  %449 = zext i1 %448 to i64
  %450 = select i1 %448, i32 1, i32 0
  %451 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  store i32 %450, i32* %451, align 8
  %452 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 1
  %453 = load i64, i64* %452, align 8
  %454 = icmp ne i64 %453, 0
  br i1 %454, label %455, label %459

455:                                              ; preds = %435
  %456 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 2
  %457 = load i32, i32* %456, align 8
  %458 = or i32 %457, 2
  store i32 %458, i32* %456, align 8
  br label %459

459:                                              ; preds = %455, %435
  %460 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %461 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %460, i32 0, i32 1
  %462 = load i32*, i32** %461, align 8
  %463 = load i32, i32* @ZFS_IOC_RENAME, align 4
  %464 = call i32 @zfs_ioctl(i32* %462, i32 %463, %struct.TYPE_15__* %10)
  store i32 %464, i32* %9, align 4
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %513

466:                                              ; preds = %459
  %467 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %468 = load i32, i32* @TEXT_DOMAIN, align 4
  %469 = call i8* @dgettext(i32 %468, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  %470 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 0
  %471 = load i8*, i8** %470, align 8
  %472 = call i32 @snprintf(i8* %467, i32 1024, i8* %469, i8* %471)
  %473 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %3, i32 0, i32 0
  %474 = load i64, i64* %473, align 8
  %475 = icmp ne i64 %474, 0
  br i1 %475, label %476, label %489

476:                                              ; preds = %466
  %477 = load i64, i64* @errno, align 8
  %478 = load i64, i64* @EEXIST, align 8
  %479 = icmp eq i64 %477, %478
  br i1 %479, label %480, label %489

480:                                              ; preds = %476
  %481 = load i32*, i32** %18, align 8
  %482 = load i32, i32* @TEXT_DOMAIN, align 4
  %483 = call i8* @dgettext(i32 %482, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.13, i64 0, i64 0))
  %484 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %481, i8* %483)
  %485 = load i32*, i32** %18, align 8
  %486 = load i32, i32* @EZFS_EXISTS, align 4
  %487 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %488 = call i32 @zfs_error(i32* %485, i32 %486, i8* %487)
  br label %506

489:                                              ; preds = %476, %466
  %490 = load i64, i64* @errno, align 8
  %491 = load i64, i64* @EINVAL, align 8
  %492 = icmp eq i64 %490, %491
  br i1 %492, label %493, label %498

493:                                              ; preds = %489
  %494 = load i32*, i32** %18, align 8
  %495 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %496 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %497 = call i32 @zfs_error(i32* %494, i32 %495, i8* %496)
  br label %505

498:                                              ; preds = %489
  %499 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %500 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %499, i32 0, i32 1
  %501 = load i32*, i32** %500, align 8
  %502 = load i64, i64* @errno, align 8
  %503 = getelementptr inbounds [1024 x i8], [1024 x i8]* %19, i64 0, i64 0
  %504 = call i32 @zfs_standard_error(i32* %501, i64 %502, i8* %503)
  br label %505

505:                                              ; preds = %498, %493
  br label %506

506:                                              ; preds = %505, %480
  %507 = load i32*, i32** %12, align 8
  %508 = icmp ne i32* %507, null
  br i1 %508, label %509, label %512

509:                                              ; preds = %506
  %510 = load i32*, i32** %12, align 8
  %511 = call i32 @changelist_postfix(i32* %510)
  br label %512

512:                                              ; preds = %509, %506
  br label %525

513:                                              ; preds = %459
  %514 = load i32*, i32** %12, align 8
  %515 = icmp ne i32* %514, null
  br i1 %515, label %516, label %524

516:                                              ; preds = %513
  %517 = load i32*, i32** %12, align 8
  %518 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %519 = call i32 @zfs_get_name(%struct.TYPE_14__* %518)
  %520 = load i8*, i8** %8, align 8
  %521 = call i32 @changelist_rename(i32* %517, i32 %519, i8* %520)
  %522 = load i32*, i32** %12, align 8
  %523 = call i32 @changelist_postfix(i32* %522)
  store i32 %523, i32* %9, align 4
  br label %524

524:                                              ; preds = %516, %513
  br label %525

525:                                              ; preds = %524, %512
  br label %526

526:                                              ; preds = %525, %422, %409, %369, %356
  %527 = load i8*, i8** %14, align 8
  %528 = icmp ne i8* %527, null
  br i1 %528, label %529, label %532

529:                                              ; preds = %526
  %530 = load i8*, i8** %14, align 8
  %531 = call i32 @free(i8* %530)
  br label %532

532:                                              ; preds = %529, %526
  %533 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %534 = icmp ne %struct.TYPE_14__* %533, null
  br i1 %534, label %535, label %538

535:                                              ; preds = %532
  %536 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  %537 = call i32 @zfs_close(%struct.TYPE_14__* %536)
  br label %538

538:                                              ; preds = %535, %532
  %539 = load i32*, i32** %12, align 8
  %540 = icmp ne i32* %539, null
  br i1 %540, label %541, label %544

541:                                              ; preds = %538
  %542 = load i32*, i32** %12, align 8
  %543 = call i32 @changelist_free(i32* %542)
  br label %544

544:                                              ; preds = %541, %538
  %545 = load i32, i32* %9, align 4
  store i32 %545, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %546

546:                                              ; preds = %544, %404, %303, %277, %261, %229, %218, %200, %190, %164, %75, %39
  %547 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %547)
  %548 = load i32, i32* %5, align 4
  ret i32 %548
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @strcmp(i8*, i8*) #3

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #3

declare dso_local i8* @dgettext(i32, i8*) #3

declare dso_local i32 @assert(i64) #3

declare dso_local i32 @strlcat(i8*, i8*, i32) #3

declare dso_local i32 @zfs_validate_name(i32*, i8*, i32, i64) #3

declare dso_local i32 @zfs_error(i32*, i32, i8*) #3

declare dso_local i8* @strchr(i8*, i8 signext) #3

declare dso_local i32 @strlcpy(i8*, i8*, i32) #3

declare dso_local i64 @strncmp(i8*, i8*, i32) #3

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #3

declare dso_local i64 @check_parents(i32*, i8*, i32*, i32, i32*) #3

declare dso_local i32 @verify(i32) #3

declare dso_local i64 @is_descendant(i8*, i8*) #3

declare dso_local i64 @getzoneid(...) #3

declare dso_local i64 @zfs_prop_get_int(%struct.TYPE_14__*, i32) #3

declare dso_local i64 @zfs_prop_get(%struct.TYPE_14__*, i32, i8*, i32, i32*, i32*, i32, i32) #3

declare dso_local i8* @zfs_strdup(i32*, i8*) #3

declare dso_local %struct.TYPE_14__* @zfs_open(i32*, i8*, i32) #3

declare dso_local i32* @changelist_gather(%struct.TYPE_14__*, i32, i32, i32) #3

declare dso_local i64 @changelist_haszonedchild(i32*) #3

declare dso_local i32 @changelist_prefix(i32*) #3

declare dso_local i64 @ZFS_IS_VOLUME(%struct.TYPE_14__*) #3

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_15__*) #3

declare dso_local i32 @zfs_standard_error(i32*, i64, i8*) #3

declare dso_local i32 @changelist_postfix(i32*) #3

declare dso_local i32 @changelist_rename(i32*, i32, i8*) #3

declare dso_local i32 @zfs_get_name(%struct.TYPE_14__*) #3

declare dso_local i32 @free(i8*) #3

declare dso_local i32 @zfs_close(%struct.TYPE_14__*) #3

declare dso_local i32 @changelist_free(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
