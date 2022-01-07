; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_get_callback.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_get_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i8*, i64, %struct.TYPE_5__* }

@ZFS_MAXPROPLEN = common dso_local global i32 0, align 4
@ZFS_MAX_DATASET_NAME_LEN = common dso_local global i32 0, align 4
@ZFS_PROP_NAME = common dso_local global i64 0, align 8
@ZPROP_INVAL = common dso_local global i64 0, align 8
@ZFS_TYPE_DATASET = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"No such property '%s'\0A\00", align 1
@ZPROP_SRC_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@ZPROP_SRC_LOCAL = common dso_local global i32 0, align 4
@ZPROP_VALUE = common dso_local global i32 0, align 4
@ZPROP_SOURCE = common dso_local global i32 0, align 4
@ZPROP_SOURCE_VAL_RECVD = common dso_local global i32 0, align 4
@ZPROP_SRC_RECEIVED = common dso_local global i32 0, align 4
@ZPROP_SRC_INHERITED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*)* @get_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_callback(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_5__*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %18 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %5, align 8
  %21 = alloca i8, i64 %19, align 16
  store i64 %19, i64* %6, align 8
  %22 = load i32, i32* @ZFS_MAXPROPLEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i8, i64 %23, align 16
  store i64 %23, i64* %7, align 8
  %25 = load i32, i32* @ZFS_MAX_DATASET_NAME_LEN, align 4
  %26 = zext i32 %25 to i64
  %27 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %9, align 8
  %28 = load i8*, i8** %4, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %10, align 8
  %30 = load i32*, i32** %3, align 8
  %31 = call i32* @zfs_get_user_props(i32* %30)
  store i32* %31, i32** %11, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  store %struct.TYPE_5__* %34, %struct.TYPE_5__** %12, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %36 = call i64 @is_recvd_column(%struct.TYPE_6__* %35)
  store i64 %36, i64* %16, align 8
  br label %37

37:                                               ; preds = %263, %2
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %39 = icmp ne %struct.TYPE_5__* %38, null
  br i1 %39, label %40, label %267

40:                                               ; preds = %37
  store i8* null, i8** %17, align 8
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @ZFS_PROP_NAME, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %40
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = icmp eq %struct.TYPE_5__* %47, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %263

53:                                               ; preds = %46, %40
  %54 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ZPROP_INVAL, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %123

59:                                               ; preds = %53
  %60 = load i32*, i32** %3, align 8
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = trunc i64 %19 to i32
  %65 = trunc i64 %26 to i32
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i64 @zfs_prop_get(i32* %60, i64 %63, i8* %21, i32 %64, i32* %8, i8* %27, i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %96

71:                                               ; preds = %59
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 2
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  br label %263

77:                                               ; preds = %71
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i32, i32* @ZFS_TYPE_DATASET, align 4
  %82 = call i32 @zfs_prop_valid_for_type(i64 %80, i32 %81)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %92, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @stderr, align 4
  %86 = call i8* @gettext(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i8* @zfs_prop_to_name(i64 %89)
  %91 = call i32 @fprintf(i32 %85, i8* %86, i8* %90)
  br label %263

92:                                               ; preds = %77
  %93 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %93, i32* %8, align 4
  %94 = trunc i64 %19 to i32
  %95 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %92, %59
  %97 = load i64, i64* %16, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %112

99:                                               ; preds = %96
  %100 = load i32*, i32** %3, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = call i8* @zfs_prop_to_name(i64 %103)
  %105 = trunc i64 %23 to i32
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i64 @zfs_prop_get_recvd(i32* %100, i8* %104, i8* %24, i32 %105, i32 %108)
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %99
  store i8* %24, i8** %17, align 8
  br label %112

112:                                              ; preds = %111, %99, %96
  %113 = load i32*, i32** %3, align 8
  %114 = call i32 @zfs_get_name(i32* %113)
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = call i8* @zfs_prop_to_name(i64 %118)
  %120 = load i32, i32* %8, align 4
  %121 = load i8*, i8** %17, align 8
  %122 = call i32 @zprop_print_one_property(i32 %114, %struct.TYPE_6__* %115, i8* %119, i8* %21, i32 %120, i8* %27, i8* %121)
  br label %262

123:                                              ; preds = %53
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = call i64 @zfs_prop_userquota(i8* %126)
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %154

129:                                              ; preds = %123
  %130 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %130, i32* %8, align 4
  %131 = load i32*, i32** %3, align 8
  %132 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i8*, i8** %133, align 8
  %135 = trunc i64 %19 to i32
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i64 @zfs_prop_get_userquota(i32* %131, i8* %134, i8* %21, i32 %135, i32 %138)
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %145

141:                                              ; preds = %129
  %142 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %142, i32* %8, align 4
  %143 = trunc i64 %19 to i32
  %144 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %143)
  br label %145

145:                                              ; preds = %141, %129
  %146 = load i32*, i32** %3, align 8
  %147 = call i32 @zfs_get_name(i32* %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i8*, i8** %150, align 8
  %152 = load i32, i32* %8, align 4
  %153 = call i32 @zprop_print_one_property(i32 %147, %struct.TYPE_6__* %148, i8* %151, i8* %21, i32 %152, i8* %27, i8* null)
  br label %261

154:                                              ; preds = %123
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i8*, i8** %156, align 8
  %158 = call i64 @zfs_prop_written(i8* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %185

160:                                              ; preds = %154
  %161 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %161, i32* %8, align 4
  %162 = load i32*, i32** %3, align 8
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i8*, i8** %164, align 8
  %166 = trunc i64 %19 to i32
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = call i64 @zfs_prop_get_written(i32* %162, i8* %165, i8* %21, i32 %166, i32 %169)
  %171 = icmp ne i64 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %160
  %173 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %173, i32* %8, align 4
  %174 = trunc i64 %19 to i32
  %175 = call i32 @strlcpy(i8* %21, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  br label %176

176:                                              ; preds = %172, %160
  %177 = load i32*, i32** %3, align 8
  %178 = call i32 @zfs_get_name(i32* %177)
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %180 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load i32, i32* %8, align 4
  %184 = call i32 @zprop_print_one_property(i32 %178, %struct.TYPE_6__* %179, i8* %182, i8* %21, i32 %183, i8* %27, i8* null)
  br label %260

185:                                              ; preds = %154
  %186 = load i32*, i32** %11, align 8
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 1
  %189 = load i8*, i8** %188, align 8
  %190 = call i64 @nvlist_lookup_nvlist(i32* %186, i8* %189, i32** %13)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %200

192:                                              ; preds = %185
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %197, label %198

197:                                              ; preds = %192
  br label %263

198:                                              ; preds = %192
  %199 = load i32, i32* @ZPROP_SRC_NONE, align 4
  store i32 %199, i32* %8, align 4
  store i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8** %14, align 8
  br label %234

200:                                              ; preds = %185
  %201 = load i32*, i32** %13, align 8
  %202 = load i32, i32* @ZPROP_VALUE, align 4
  %203 = call i64 @nvlist_lookup_string(i32* %201, i32 %202, i8** %14)
  %204 = icmp eq i64 %203, 0
  %205 = zext i1 %204 to i32
  %206 = call i32 @verify(i32 %205)
  %207 = load i32*, i32** %13, align 8
  %208 = load i32, i32* @ZPROP_SOURCE, align 4
  %209 = call i64 @nvlist_lookup_string(i32* %207, i32 %208, i8** %15)
  %210 = icmp eq i64 %209, 0
  %211 = zext i1 %210 to i32
  %212 = call i32 @verify(i32 %211)
  %213 = load i8*, i8** %15, align 8
  %214 = load i32*, i32** %3, align 8
  %215 = call i32 @zfs_get_name(i32* %214)
  %216 = call i64 @strcmp(i8* %213, i32 %215)
  %217 = icmp eq i64 %216, 0
  br i1 %217, label %218, label %220

218:                                              ; preds = %200
  %219 = load i32, i32* @ZPROP_SRC_LOCAL, align 4
  store i32 %219, i32* %8, align 4
  br label %233

220:                                              ; preds = %200
  %221 = load i8*, i8** %15, align 8
  %222 = load i32, i32* @ZPROP_SOURCE_VAL_RECVD, align 4
  %223 = call i64 @strcmp(i8* %221, i32 %222)
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @ZPROP_SRC_RECEIVED, align 4
  store i32 %226, i32* %8, align 4
  br label %232

227:                                              ; preds = %220
  %228 = load i32, i32* @ZPROP_SRC_INHERITED, align 4
  store i32 %228, i32* %8, align 4
  %229 = load i8*, i8** %15, align 8
  %230 = trunc i64 %26 to i32
  %231 = call i32 @strlcpy(i8* %27, i8* %229, i32 %230)
  br label %232

232:                                              ; preds = %227, %225
  br label %233

233:                                              ; preds = %232, %218
  br label %234

234:                                              ; preds = %233, %198
  %235 = load i64, i64* %16, align 8
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %237, label %249

237:                                              ; preds = %234
  %238 = load i32*, i32** %3, align 8
  %239 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %240 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %239, i32 0, i32 1
  %241 = load i8*, i8** %240, align 8
  %242 = trunc i64 %23 to i32
  %243 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %244 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %243, i32 0, i32 0
  %245 = load i32, i32* %244, align 8
  %246 = call i64 @zfs_prop_get_recvd(i32* %238, i8* %241, i8* %24, i32 %242, i32 %245)
  %247 = icmp eq i64 %246, 0
  br i1 %247, label %248, label %249

248:                                              ; preds = %237
  store i8* %24, i8** %17, align 8
  br label %249

249:                                              ; preds = %248, %237, %234
  %250 = load i32*, i32** %3, align 8
  %251 = call i32 @zfs_get_name(i32* %250)
  %252 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 1
  %255 = load i8*, i8** %254, align 8
  %256 = load i8*, i8** %14, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i8*, i8** %17, align 8
  %259 = call i32 @zprop_print_one_property(i32 %251, %struct.TYPE_6__* %252, i8* %255, i8* %256, i32 %257, i8* %27, i8* %258)
  br label %260

260:                                              ; preds = %249, %176
  br label %261

261:                                              ; preds = %260, %145
  br label %262

262:                                              ; preds = %261, %112
  br label %263

263:                                              ; preds = %262, %197, %84, %76, %52
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %265 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i32 0, i32 3
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %265, align 8
  store %struct.TYPE_5__* %266, %struct.TYPE_5__** %12, align 8
  br label %37

267:                                              ; preds = %37
  %268 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %268)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32* @zfs_get_user_props(i32*) #2

declare dso_local i64 @is_recvd_column(%struct.TYPE_6__*) #2

declare dso_local i64 @zfs_prop_get(i32*, i64, i8*, i32, i32*, i8*, i32, i32) #2

declare dso_local i32 @zfs_prop_valid_for_type(i64, i32) #2

declare dso_local i32 @fprintf(i32, i8*, i8*) #2

declare dso_local i8* @gettext(i8*) #2

declare dso_local i8* @zfs_prop_to_name(i64) #2

declare dso_local i32 @strlcpy(i8*, i8*, i32) #2

declare dso_local i64 @zfs_prop_get_recvd(i32*, i8*, i8*, i32, i32) #2

declare dso_local i32 @zprop_print_one_property(i32, %struct.TYPE_6__*, i8*, i8*, i32, i8*, i8*) #2

declare dso_local i32 @zfs_get_name(i32*) #2

declare dso_local i64 @zfs_prop_userquota(i8*) #2

declare dso_local i64 @zfs_prop_get_userquota(i32*, i8*, i8*, i32, i32) #2

declare dso_local i64 @zfs_prop_written(i8*) #2

declare dso_local i64 @zfs_prop_get_written(i32*, i8*, i8*, i32, i32) #2

declare dso_local i64 @nvlist_lookup_nvlist(i32*, i8*, i32**) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i64 @strcmp(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
