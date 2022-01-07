; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_numeric_property.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_get_numeric_property.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i8*, i8*, i32*, %struct.TYPE_11__, i32, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i32 }
%struct.mnttab = type { i8* }

@MNTOPT_ATIME = common dso_local global i8* null, align 8
@MNTOPT_NOATIME = common dso_local global i8* null, align 8
@MNTOPT_DEVICES = common dso_local global i8* null, align 8
@MNTOPT_NODEVICES = common dso_local global i8* null, align 8
@MNTOPT_EXEC = common dso_local global i8* null, align 8
@MNTOPT_NOEXEC = common dso_local global i8* null, align 8
@MNTOPT_RO = common dso_local global i8* null, align 8
@MNTOPT_RW = common dso_local global i8* null, align 8
@MNTOPT_SETUID = common dso_local global i8* null, align 8
@MNTOPT_NOSETUID = common dso_local global i8* null, align 8
@MNTOPT_XATTR = common dso_local global i8* null, align 8
@MNTOPT_NOXATTR = common dso_local global i8* null, align 8
@MNTOPT_NBMAND = common dso_local global i8* null, align 8
@MNTOPT_NONBMAND = common dso_local global i8* null, align 8
@B_TRUE = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ZPROP_SRC_TEMPORARY = common dso_local global i32 0, align 4
@B_FALSE = common dso_local global i8* null, align 8
@ZFS_IOC_OBJSET_ZPLPROPS = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"cannot get non-numeric property\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"internal error\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32*, i8**, i8**)* @get_numeric_property to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_numeric_property(%struct.TYPE_12__* %0, i32 %1, i32* %2, i8** %3, i8** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_12__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i8**, align 8
  %12 = alloca %struct.TYPE_13__, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.mnttab, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.mnttab, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i8** %4, i8*** %11, align 8
  %20 = bitcast %struct.TYPE_13__* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  store i32* null, i32** %13, align 8
  store i8* null, i8** %15, align 8
  store i8* null, i8** %16, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %22 = call i32 @zfs_is_recvd_props_mode(%struct.TYPE_12__* %21)
  store i32 %22, i32* %17, align 4
  %23 = load i8**, i8*** %10, align 8
  store i8* null, i8** %23, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %46 [
    i32 151, label %25
    i32 148, label %28
    i32 147, label %31
    i32 138, label %34
    i32 134, label %37
    i32 128, label %40
    i32 142, label %43
  ]

25:                                               ; preds = %5
  %26 = load i8*, i8** @MNTOPT_ATIME, align 8
  store i8* %26, i8** %15, align 8
  %27 = load i8*, i8** @MNTOPT_NOATIME, align 8
  store i8* %27, i8** %16, align 8
  br label %47

28:                                               ; preds = %5
  %29 = load i8*, i8** @MNTOPT_DEVICES, align 8
  store i8* %29, i8** %15, align 8
  %30 = load i8*, i8** @MNTOPT_NODEVICES, align 8
  store i8* %30, i8** %16, align 8
  br label %47

31:                                               ; preds = %5
  %32 = load i8*, i8** @MNTOPT_EXEC, align 8
  store i8* %32, i8** %15, align 8
  %33 = load i8*, i8** @MNTOPT_NOEXEC, align 8
  store i8* %33, i8** %16, align 8
  br label %47

34:                                               ; preds = %5
  %35 = load i8*, i8** @MNTOPT_RO, align 8
  store i8* %35, i8** %15, align 8
  %36 = load i8*, i8** @MNTOPT_RW, align 8
  store i8* %36, i8** %16, align 8
  br label %47

37:                                               ; preds = %5
  %38 = load i8*, i8** @MNTOPT_SETUID, align 8
  store i8* %38, i8** %15, align 8
  %39 = load i8*, i8** @MNTOPT_NOSETUID, align 8
  store i8* %39, i8** %16, align 8
  br label %47

40:                                               ; preds = %5
  %41 = load i8*, i8** @MNTOPT_XATTR, align 8
  store i8* %41, i8** %15, align 8
  %42 = load i8*, i8** @MNTOPT_NOXATTR, align 8
  store i8* %42, i8** %16, align 8
  br label %47

43:                                               ; preds = %5
  %44 = load i8*, i8** @MNTOPT_NBMAND, align 8
  store i8* %44, i8** %15, align 8
  %45 = load i8*, i8** @MNTOPT_NONBMAND, align 8
  store i8* %45, i8** %16, align 8
  br label %47

46:                                               ; preds = %5
  br label %47

47:                                               ; preds = %46, %43, %40, %37, %34, %31, %28, %25
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 5
  %50 = load i8*, i8** %49, align 8
  %51 = icmp ne i8* %50, null
  br i1 %51, label %85, label %52

52:                                               ; preds = %47
  %53 = load i8*, i8** %15, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 143
  br i1 %57, label %58, label %85

58:                                               ; preds = %55, %52
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  store i32* %61, i32** %18, align 8
  %62 = load i32*, i32** %18, align 8
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 0
  %65 = load i8*, i8** %64, align 8
  %66 = call i64 @libzfs_mnttab_find(i32* %62, i8* %65, %struct.mnttab* %19)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %81

68:                                               ; preds = %58
  %69 = load i32*, i32** %18, align 8
  %70 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %19, i32 0, i32 0
  %71 = load i8*, i8** %70, align 8
  %72 = call i8* @zfs_strdup(i32* %69, i8* %71)
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = icmp eq i8* %77, null
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 -1, i32* %6, align 4
  br label %275

80:                                               ; preds = %68
  br label %81

81:                                               ; preds = %80, %58
  %82 = load i8*, i8** @B_TRUE, align 8
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 5
  store i8* %82, i8** %84, align 8
  br label %85

85:                                               ; preds = %81, %55, %47
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = icmp eq i8* %88, null
  br i1 %89, label %90, label %92

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %14, i32 0, i32 0
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %91, align 8
  br label %97

92:                                               ; preds = %85
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 1
  %95 = load i8*, i8** %94, align 8
  %96 = getelementptr inbounds %struct.mnttab, %struct.mnttab* %14, i32 0, i32 0
  store i8* %95, i8** %96, align 8
  br label %97

97:                                               ; preds = %92, %90
  %98 = load i32, i32* %8, align 4
  switch i32 %98, label %228 [
    i32 151, label %99
    i32 148, label %99
    i32 147, label %99
    i32 138, label %99
    i32 134, label %99
    i32 128, label %99
    i32 142, label %99
    i32 150, label %144
    i32 129, label %144
    i32 139, label %144
    i32 137, label %144
    i32 135, label %144
    i32 136, label %144
    i32 145, label %144
    i32 132, label %144
    i32 146, label %144
    i32 133, label %144
    i32 143, label %159
    i32 140, label %168
    i32 130, label %174
    i32 141, label %174
    i32 131, label %174
    i32 149, label %174
    i32 144, label %222
  ]

99:                                               ; preds = %97, %97, %97, %97, %97, %97, %97
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = load i8**, i8*** %10, align 8
  %103 = call i8* @getprop_uint64(%struct.TYPE_12__* %100, i32 %101, i8** %102)
  %104 = load i8**, i8*** %11, align 8
  store i8* %103, i8** %104, align 8
  %105 = load i32, i32* %17, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %274

108:                                              ; preds = %99
  %109 = load i8*, i8** %15, align 8
  %110 = call i32 @hasmntopt(%struct.mnttab* %14, i8* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %125

112:                                              ; preds = %108
  %113 = load i8**, i8*** %11, align 8
  %114 = load i8*, i8** %113, align 8
  %115 = icmp ne i8* %114, null
  br i1 %115, label %125, label %116

116:                                              ; preds = %112
  %117 = load i8*, i8** @B_TRUE, align 8
  %118 = load i8**, i8*** %11, align 8
  store i8* %117, i8** %118, align 8
  %119 = load i32*, i32** %9, align 8
  %120 = icmp ne i32* %119, null
  br i1 %120, label %121, label %124

121:                                              ; preds = %116
  %122 = load i32, i32* @ZPROP_SRC_TEMPORARY, align 4
  %123 = load i32*, i32** %9, align 8
  store i32 %122, i32* %123, align 4
  br label %124

124:                                              ; preds = %121, %116
  br label %143

125:                                              ; preds = %112, %108
  %126 = load i8*, i8** %16, align 8
  %127 = call i32 @hasmntopt(%struct.mnttab* %14, i8* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load i8**, i8*** %11, align 8
  %131 = load i8*, i8** %130, align 8
  %132 = icmp ne i8* %131, null
  br i1 %132, label %133, label %142

133:                                              ; preds = %129
  %134 = load i8*, i8** @B_FALSE, align 8
  %135 = load i8**, i8*** %11, align 8
  store i8* %134, i8** %135, align 8
  %136 = load i32*, i32** %9, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = load i32, i32* @ZPROP_SRC_TEMPORARY, align 4
  %140 = load i32*, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  br label %141

141:                                              ; preds = %138, %133
  br label %142

142:                                              ; preds = %141, %129, %125
  br label %143

143:                                              ; preds = %142, %124
  br label %274

144:                                              ; preds = %97, %97, %97, %97, %97, %97, %97, %97, %97, %97
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i8**, i8*** %10, align 8
  %148 = call i8* @getprop_uint64(%struct.TYPE_12__* %145, i32 %146, i8** %147)
  %149 = load i8**, i8*** %11, align 8
  store i8* %148, i8** %149, align 8
  %150 = load i8**, i8*** %10, align 8
  %151 = load i8*, i8** %150, align 8
  %152 = icmp eq i8* %151, null
  br i1 %152, label %153, label %158

153:                                              ; preds = %144
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i8*, i8** %155, align 8
  %157 = load i8**, i8*** %10, align 8
  store i8* %156, i8** %157, align 8
  br label %158

158:                                              ; preds = %153, %144
  br label %274

159:                                              ; preds = %97
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = icmp ne i8* %162, null
  %164 = zext i1 %163 to i32
  %165 = sext i32 %164 to i64
  %166 = inttoptr i64 %165 to i8*
  %167 = load i8**, i8*** %11, align 8
  store i8* %166, i8** %167, align 8
  br label %274

168:                                              ; preds = %97
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 3
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = load i8*, i8** %171, align 8
  %173 = load i8**, i8*** %11, align 8
  store i8* %172, i8** %173, align 8
  br label %274

174:                                              ; preds = %97, %97, %97, %97
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 4
  %178 = load i32, i32* %177, align 8
  %179 = call i32 @zfs_prop_valid_for_type(i32 %175, i32 %178)
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %187

181:                                              ; preds = %174
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %182, i32 0, i32 2
  %184 = load i32*, i32** %183, align 8
  %185 = call i32 @zcmd_alloc_dst_nvlist(i32* %184, %struct.TYPE_13__* %12, i32 0)
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %188

187:                                              ; preds = %181, %174
  store i32 -1, i32* %6, align 4
  br label %275

188:                                              ; preds = %181
  %189 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 0
  %193 = load i8*, i8** %192, align 8
  %194 = call i32 @strlcpy(i32 %190, i8* %193, i32 4)
  %195 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load i32, i32* @ZFS_IOC_OBJSET_ZPLPROPS, align 4
  %199 = call i32 @zfs_ioctl(i32* %197, i32 %198, %struct.TYPE_13__* %12)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %188
  %202 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  store i32 -1, i32* %6, align 4
  br label %275

203:                                              ; preds = %188
  %204 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %205 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %204, i32 0, i32 2
  %206 = load i32*, i32** %205, align 8
  %207 = call i32 @zcmd_read_dst_nvlist(i32* %206, %struct.TYPE_13__* %12, i32** %13)
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %216, label %209

209:                                              ; preds = %203
  %210 = load i32*, i32** %13, align 8
  %211 = load i32, i32* %8, align 4
  %212 = call i32 @zfs_prop_to_name(i32 %211)
  %213 = load i8**, i8*** %11, align 8
  %214 = call i32 @nvlist_lookup_uint64(i32* %210, i32 %212, i8** %213)
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %209, %203
  %217 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  store i32 -1, i32* %6, align 4
  br label %275

218:                                              ; preds = %209
  %219 = load i32*, i32** %13, align 8
  %220 = call i32 @nvlist_free(i32* %219)
  %221 = call i32 @zcmd_free_nvlists(%struct.TYPE_13__* %12)
  br label %274

222:                                              ; preds = %97
  %223 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = load i8*, i8** %225, align 8
  %227 = load i8**, i8*** %11, align 8
  store i8* %226, i8** %227, align 8
  br label %274

228:                                              ; preds = %97
  %229 = load i32, i32* %8, align 4
  %230 = call i32 @zfs_prop_get_type(i32 %229)
  switch i32 %230, label %259 [
    i32 153, label %231
    i32 154, label %231
    i32 152, label %258
  ]

231:                                              ; preds = %228, %228
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %233 = load i32, i32* %8, align 4
  %234 = load i8**, i8*** %10, align 8
  %235 = call i8* @getprop_uint64(%struct.TYPE_12__* %232, i32 %233, i8** %234)
  %236 = load i8**, i8*** %11, align 8
  store i8* %235, i8** %236, align 8
  %237 = load i32, i32* %8, align 4
  %238 = call i32 @zfs_prop_readonly(i32 %237)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %257

240:                                              ; preds = %231
  %241 = load i32, i32* %8, align 4
  %242 = call i32 @zfs_prop_setonce(i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %257, label %244

244:                                              ; preds = %240
  %245 = load i8**, i8*** %10, align 8
  %246 = load i8*, i8** %245, align 8
  %247 = icmp ne i8* %246, null
  br i1 %247, label %248, label %257

248:                                              ; preds = %244
  %249 = load i8**, i8*** %10, align 8
  %250 = load i8*, i8** %249, align 8
  %251 = getelementptr inbounds i8, i8* %250, i64 0
  %252 = load i8, i8* %251, align 1
  %253 = sext i8 %252 to i32
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %255, label %257

255:                                              ; preds = %248
  %256 = load i8**, i8*** %10, align 8
  store i8* null, i8** %256, align 8
  store i32 -1, i32* %6, align 4
  br label %275

257:                                              ; preds = %248, %244, %240, %231
  br label %273

258:                                              ; preds = %228
  br label %259

259:                                              ; preds = %228, %258
  %260 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %261 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %260, i32 0, i32 2
  %262 = load i32*, i32** %261, align 8
  %263 = load i32, i32* @TEXT_DOMAIN, align 4
  %264 = call i32 @dgettext(i32 %263, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %265 = call i32 @zfs_error_aux(i32* %262, i32 %264)
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %7, align 8
  %267 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %266, i32 0, i32 2
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* @EZFS_BADPROP, align 4
  %270 = load i32, i32* @TEXT_DOMAIN, align 4
  %271 = call i32 @dgettext(i32 %270, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %272 = call i32 @zfs_error(i32* %268, i32 %269, i32 %271)
  store i32 %272, i32* %6, align 4
  br label %275

273:                                              ; preds = %257
  br label %274

274:                                              ; preds = %273, %222, %218, %168, %159, %158, %143, %107
  store i32 0, i32* %6, align 4
  br label %275

275:                                              ; preds = %274, %259, %255, %216, %201, %187, %79
  %276 = load i32, i32* %6, align 4
  ret i32 %276
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @zfs_is_recvd_props_mode(%struct.TYPE_12__*) #2

declare dso_local i64 @libzfs_mnttab_find(i32*, i8*, %struct.mnttab*) #2

declare dso_local i8* @zfs_strdup(i32*, i8*) #2

declare dso_local i8* @getprop_uint64(%struct.TYPE_12__*, i32, i8**) #2

declare dso_local i32 @hasmntopt(%struct.mnttab*, i8*) #2

declare dso_local i32 @zfs_prop_valid_for_type(i32, i32) #2

declare dso_local i32 @zcmd_alloc_dst_nvlist(i32*, %struct.TYPE_13__*, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @zfs_ioctl(i32*, i32, %struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_free_nvlists(%struct.TYPE_13__*) #2

declare dso_local i32 @zcmd_read_dst_nvlist(i32*, %struct.TYPE_13__*, i32**) #2

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i8**) #2

declare dso_local i32 @zfs_prop_to_name(i32) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32 @zfs_prop_get_type(i32) #2

declare dso_local i32 @zfs_prop_readonly(i32) #2

declare dso_local i32 @zfs_prop_setonce(i32) #2

declare dso_local i32 @zfs_error_aux(i32*, i32) #2

declare dso_local i32 @dgettext(i32, i8*) #2

declare dso_local i32 @zfs_error(i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
