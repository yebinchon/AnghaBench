; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_dataset.c_zfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ZFS_PROP_VOLBLOCKSIZE = common dso_local global i32 0, align 4
@TEXT_DOMAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"cannot create '%s'\00", align 1
@B_TRUE = common dso_local global i32 0, align 4
@EZFS_INVALIDNAME = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"maximum name nesting depth exceeded\00", align 1
@B_FALSE = common dso_local global i32 0, align 4
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"dataset already exists\00", align 1
@EZFS_EXISTS = common dso_local global i32 0, align 4
@ZFS_TYPE_VOLUME = common dso_local global i64 0, align 8
@LZC_DATSET_TYPE_ZVOL = common dso_local global i32 0, align 4
@LZC_DATSET_TYPE_ZFS = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_VOLSIZE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"missing volume size\00", align 1
@EZFS_BADPROP = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"missing volume block size\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"volume size cannot be zero\00", align 1
@.str.6 = private unnamed_addr constant [52 x i8] c"volume size must be a multiple of volume block size\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [20 x i8] c"no such parent '%s'\00", align 1
@EZFS_NOENT = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [32 x i8] c"parent '%s' is not a filesystem\00", align 1
@EZFS_BADTYPE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [52 x i8] c"pool must be upgraded to set this property or value\00", align 1
@EZFS_BADVERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [36 x i8] c"invalid property value(s) specified\00", align 1
@EZFS_VOLTOOBIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zfs_create(i32* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [1024 x i8], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %11, align 4
  %23 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %24 = call i32 @zfs_prop_default_numeric(i32 %23)
  store i32 %24, i32* %12, align 4
  %25 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %26 = load i32, i32* @TEXT_DOMAIN, align 4
  %27 = call i8* @dgettext(i32 %26, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @snprintf(i8* %25, i32 1024, i8* %27, i8* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = load i64, i64* %8, align 8
  %33 = load i32, i32* @B_TRUE, align 4
  %34 = call i32 @zfs_validate_name(i32* %30, i8* %31, i64 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %41, label %36

36:                                               ; preds = %4
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %39 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %40 = call i32 @zfs_error(i32* %37, i32 %38, i8* %39)
  store i32 %40, i32* %5, align 4
  br label %262

41:                                               ; preds = %4
  %42 = load i8*, i8** %7, align 8
  %43 = call i64 @dataset_nestcheck(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %54

45:                                               ; preds = %41
  %46 = load i32*, i32** %6, align 8
  %47 = load i32, i32* @TEXT_DOMAIN, align 4
  %48 = call i8* @dgettext(i32 %47, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %49 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %46, i8* %48)
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @EZFS_INVALIDNAME, align 4
  %52 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %53 = call i32 @zfs_error(i32* %50, i32 %51, i8* %52)
  store i32 %53, i32* %5, align 4
  br label %262

54:                                               ; preds = %41
  %55 = load i32*, i32** %6, align 8
  %56 = load i8*, i8** %7, align 8
  %57 = load i32, i32* @B_FALSE, align 4
  %58 = call i64 @check_parents(i32* %55, i8* %56, i32* %14, i32 %57, i32* null)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 -1, i32* %5, align 4
  br label %262

61:                                               ; preds = %54
  %62 = load i32*, i32** %6, align 8
  %63 = load i8*, i8** %7, align 8
  %64 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %65 = call i64 @zfs_dataset_exists(i32* %62, i8* %63, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %61
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @TEXT_DOMAIN, align 4
  %70 = call i8* @dgettext(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %71 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %68, i8* %70)
  %72 = load i32*, i32** %6, align 8
  %73 = load i32, i32* @EZFS_EXISTS, align 4
  %74 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %75 = call i32 @zfs_error(i32* %72, i32 %73, i8* %74)
  store i32 %75, i32* %5, align 4
  br label %262

76:                                               ; preds = %61
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* @LZC_DATSET_TYPE_ZVOL, align 4
  store i32 %81, i32* %15, align 4
  br label %84

82:                                               ; preds = %76
  %83 = load i32, i32* @LZC_DATSET_TYPE_ZFS, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %86 = zext i32 %85 to i64
  %87 = call i8* @llvm.stacksave()
  store i8* %87, i8** %17, align 8
  %88 = alloca i8, i64 %86, align 16
  store i64 %86, i64* %18, align 8
  %89 = load i8*, i8** %7, align 8
  %90 = trunc i64 %86 to i32
  %91 = call i32 @strlcpy(i8* %88, i8* %89, i32 %90)
  %92 = call i8* @strchr(i8* %88, i8 signext 47)
  store i8* %92, i8** %19, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = icmp ne i8* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i8*, i8** %19, align 8
  store i8 0, i8* %96, align 1
  br label %97

97:                                               ; preds = %95, %84
  %98 = load i32*, i32** %6, align 8
  %99 = call i32* @zpool_open(i32* %98, i8* %88)
  store i32* %99, i32** %16, align 8
  %100 = icmp eq i32* %99, null
  br i1 %100, label %101, label %102

101:                                              ; preds = %97
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

102:                                              ; preds = %97
  %103 = load i32*, i32** %9, align 8
  %104 = icmp ne i32* %103, null
  br i1 %104, label %105, label %117

105:                                              ; preds = %102
  %106 = load i32*, i32** %6, align 8
  %107 = load i64, i64* %8, align 8
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %14, align 4
  %110 = load i32*, i32** %16, align 8
  %111 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %112 = call i32* @zfs_valid_proplist(i32* %106, i64 %107, i32* %108, i32 %109, i32* null, i32* %110, i8* %111)
  store i32* %112, i32** %9, align 8
  %113 = icmp eq i32* %112, null
  br i1 %113, label %114, label %117

114:                                              ; preds = %105
  %115 = load i32*, i32** %16, align 8
  %116 = call i32 @zpool_close(i32* %115)
  store i32 -1, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

117:                                              ; preds = %105, %102
  %118 = load i32*, i32** %16, align 8
  %119 = call i32 @zpool_close(i32* %118)
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @ZFS_TYPE_VOLUME, align 8
  %122 = icmp eq i64 %120, %121
  br i1 %122, label %123, label %198

123:                                              ; preds = %117
  %124 = load i32*, i32** %9, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %132, label %126

126:                                              ; preds = %123
  %127 = load i32*, i32** %9, align 8
  %128 = load i32, i32* @ZFS_PROP_VOLSIZE, align 4
  %129 = call i32 @zfs_prop_to_name(i32 %128)
  %130 = call i32 @nvlist_lookup_uint64(i32* %127, i32 %129, i32* %11)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %143

132:                                              ; preds = %126, %123
  %133 = load i32*, i32** %9, align 8
  %134 = call i32 @nvlist_free(i32* %133)
  %135 = load i32*, i32** %6, align 8
  %136 = load i32, i32* @TEXT_DOMAIN, align 4
  %137 = call i8* @dgettext(i32 %136, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %138 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %135, i8* %137)
  %139 = load i32*, i32** %6, align 8
  %140 = load i32, i32* @EZFS_BADPROP, align 4
  %141 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %142 = call i32 @zfs_error(i32* %139, i32 %140, i8* %141)
  store i32 %142, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

143:                                              ; preds = %126
  %144 = load i32*, i32** %9, align 8
  %145 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %146 = call i32 @zfs_prop_to_name(i32 %145)
  %147 = call i32 @nvlist_lookup_uint64(i32* %144, i32 %146, i32* %12)
  store i32 %147, i32* %10, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %167

149:                                              ; preds = %143
  %150 = load i32, i32* %10, align 4
  %151 = icmp eq i32 %150, 131
  br i1 %151, label %152, label %155

152:                                              ; preds = %149
  %153 = load i32, i32* @ZFS_PROP_VOLBLOCKSIZE, align 4
  %154 = call i32 @zfs_prop_default_numeric(i32 %153)
  store i32 %154, i32* %12, align 4
  br label %166

155:                                              ; preds = %149
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @nvlist_free(i32* %156)
  %158 = load i32*, i32** %6, align 8
  %159 = load i32, i32* @TEXT_DOMAIN, align 4
  %160 = call i8* @dgettext(i32 %159, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  %161 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %158, i8* %160)
  %162 = load i32*, i32** %6, align 8
  %163 = load i32, i32* @EZFS_BADPROP, align 4
  %164 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %165 = call i32 @zfs_error(i32* %162, i32 %163, i8* %164)
  store i32 %165, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

166:                                              ; preds = %152
  br label %167

167:                                              ; preds = %166, %143
  %168 = load i32, i32* %11, align 4
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %170, label %181

170:                                              ; preds = %167
  %171 = load i32*, i32** %9, align 8
  %172 = call i32 @nvlist_free(i32* %171)
  %173 = load i32*, i32** %6, align 8
  %174 = load i32, i32* @TEXT_DOMAIN, align 4
  %175 = call i8* @dgettext(i32 %174, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0))
  %176 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %173, i8* %175)
  %177 = load i32*, i32** %6, align 8
  %178 = load i32, i32* @EZFS_BADPROP, align 4
  %179 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %180 = call i32 @zfs_error(i32* %177, i32 %178, i8* %179)
  store i32 %180, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

181:                                              ; preds = %167
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %12, align 4
  %184 = srem i32 %182, %183
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %186, label %197

186:                                              ; preds = %181
  %187 = load i32*, i32** %9, align 8
  %188 = call i32 @nvlist_free(i32* %187)
  %189 = load i32*, i32** %6, align 8
  %190 = load i32, i32* @TEXT_DOMAIN, align 4
  %191 = call i8* @dgettext(i32 %190, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.6, i64 0, i64 0))
  %192 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %189, i8* %191)
  %193 = load i32*, i32** %6, align 8
  %194 = load i32, i32* @EZFS_BADPROP, align 4
  %195 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %196 = call i32 @zfs_error(i32* %193, i32 %194, i8* %195)
  store i32 %196, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

197:                                              ; preds = %181
  br label %198

198:                                              ; preds = %197, %117
  %199 = load i8*, i8** %7, align 8
  %200 = load i32, i32* %15, align 4
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @lzc_create(i8* %199, i32 %200, i32* %201)
  store i32 %202, i32* %10, align 4
  %203 = load i32*, i32** %9, align 8
  %204 = call i32 @nvlist_free(i32* %203)
  %205 = load i32, i32* %10, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %259

207:                                              ; preds = %198
  %208 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %209 = zext i32 %208 to i64
  %210 = call i8* @llvm.stacksave()
  store i8* %210, i8** %21, align 8
  %211 = alloca i8, i64 %209, align 16
  store i64 %209, i64* %22, align 8
  %212 = load i8*, i8** %7, align 8
  %213 = trunc i64 %209 to i32
  %214 = call i32 @parent_name(i8* %212, i8* %211, i32 %213)
  %215 = load i32, i32* @errno, align 4
  switch i32 %215, label %252 [
    i32 131, label %216
    i32 132, label %225
    i32 130, label %234
    i32 128, label %243
  ]

216:                                              ; preds = %207
  %217 = load i32*, i32** %6, align 8
  %218 = load i32, i32* @TEXT_DOMAIN, align 4
  %219 = call i8* @dgettext(i32 %218, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i64 0, i64 0))
  %220 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %217, i8* %219, i8* %211)
  %221 = load i32*, i32** %6, align 8
  %222 = load i32, i32* @EZFS_NOENT, align 4
  %223 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %224 = call i32 @zfs_error(i32* %221, i32 %222, i8* %223)
  store i32 %224, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %257

225:                                              ; preds = %207
  %226 = load i32*, i32** %6, align 8
  %227 = load i32, i32* @TEXT_DOMAIN, align 4
  %228 = call i8* @dgettext(i32 %227, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  %229 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %226, i8* %228, i8* %211)
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* @EZFS_BADTYPE, align 4
  %232 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %233 = call i32 @zfs_error(i32* %230, i32 %231, i8* %232)
  store i32 %233, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %257

234:                                              ; preds = %207
  %235 = load i32*, i32** %6, align 8
  %236 = load i32, i32* @TEXT_DOMAIN, align 4
  %237 = call i8* @dgettext(i32 %236, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.9, i64 0, i64 0))
  %238 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %235, i8* %237)
  %239 = load i32*, i32** %6, align 8
  %240 = load i32, i32* @EZFS_BADVERSION, align 4
  %241 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %242 = call i32 @zfs_error(i32* %239, i32 %240, i8* %241)
  store i32 %242, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %257

243:                                              ; preds = %207
  %244 = load i32*, i32** %6, align 8
  %245 = load i32, i32* @TEXT_DOMAIN, align 4
  %246 = call i8* @dgettext(i32 %245, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.10, i64 0, i64 0))
  %247 = call i32 (i32*, i8*, ...) @zfs_error_aux(i32* %244, i8* %246)
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* @EZFS_BADPROP, align 4
  %250 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %251 = call i32 @zfs_error(i32* %248, i32 %249, i8* %250)
  store i32 %251, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %257

252:                                              ; preds = %207
  %253 = load i32*, i32** %6, align 8
  %254 = load i32, i32* @errno, align 4
  %255 = getelementptr inbounds [1024 x i8], [1024 x i8]* %13, i64 0, i64 0
  %256 = call i32 @zfs_standard_error(i32* %253, i32 %254, i8* %255)
  store i32 %256, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %257

257:                                              ; preds = %252, %243, %234, %225, %216
  %258 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %258)
  br label %260

259:                                              ; preds = %198
  store i32 0, i32* %5, align 4
  store i32 1, i32* %20, align 4
  br label %260

260:                                              ; preds = %259, %257, %186, %170, %155, %132, %114, %101
  %261 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %261)
  br label %262

262:                                              ; preds = %260, %67, %60, %45, %36
  %263 = load i32, i32* %5, align 4
  ret i32 %263
}

declare dso_local i32 @zfs_prop_default_numeric(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @dgettext(i32, i8*) #1

declare dso_local i32 @zfs_validate_name(i32*, i8*, i64, i32) #1

declare dso_local i32 @zfs_error(i32*, i32, i8*) #1

declare dso_local i64 @dataset_nestcheck(i8*) #1

declare dso_local i32 @zfs_error_aux(i32*, i8*, ...) #1

declare dso_local i64 @check_parents(i32*, i8*, i32*, i32, i32*) #1

declare dso_local i64 @zfs_dataset_exists(i32*, i8*, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32* @zpool_open(i32*, i8*) #1

declare dso_local i32* @zfs_valid_proplist(i32*, i64, i32*, i32, i32*, i32*, i8*) #1

declare dso_local i32 @zpool_close(i32*) #1

declare dso_local i32 @nvlist_lookup_uint64(i32*, i32, i32*) #1

declare dso_local i32 @zfs_prop_to_name(i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @lzc_create(i8*, i32, i32*) #1

declare dso_local i32 @parent_name(i8*, i8*, i32) #1

declare dso_local i32 @zfs_standard_error(i32*, i32, i8*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
