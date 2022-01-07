; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_userspace_cb.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/cmd/zfs/extr_zfs_main.c_userspace_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i64, i64*, i64, i64, i64, i32*, i32*, i32* }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i64, i32* }
%struct.group = type { i8* }
%struct.passwd = type { i8* }

@B_FALSE = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@MAXNAMELEN = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s-%u\00", align 1
@ZFS_PROP_GROUPUSED = common dso_local global i64 0, align 8
@ZFS_PROP_GROUPQUOTA = common dso_local global i64 0, align 8
@USTYPE_SMB_GRP = common dso_local global i32 0, align 4
@USTYPE_SMB_USR = common dso_local global i32 0, align 4
@USTYPE_PSX_GRP = common dso_local global i32 0, align 4
@USTYPE_PSX_USR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"smbentity\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"%u\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"%llu\00", align 1
@ZFS_PROP_USERUSED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [5 x i8] c"used\00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"quota\00", align 1
@IDMAP_REQ_FLG_USE_CACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i32, i32)* @userspace_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @userspace_cb(i8* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca [32 x i8], align 16
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_12__*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca %struct.TYPE_11__, align 8
  %30 = alloca i32, align 4
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca %struct.group*, align 8
  %35 = alloca %struct.passwd*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = bitcast i8* %36 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %37, %struct.TYPE_13__** %9, align 8
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %10, align 8
  store i8* null, i8** %11, align 8
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 7
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %15, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 6
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %16, align 8
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 5
  %49 = load i32*, i32** %48, align 8
  store i32* %49, i32** %20, align 8
  store i32 0, i32* %21, align 4
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %51 = load i32*, i32** %20, align 8
  %52 = ptrtoint i32* %51 to i64
  store i64 %52, i64* %50, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 1
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 4
  %56 = load i64, i64* %55, align 8
  %57 = inttoptr i64 %56 to i32*
  store i32* %57, i32** %53, align 8
  %58 = load i32, i32* @B_FALSE, align 4
  store i32 %58, i32* %30, align 4
  %59 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %60 = call i64 @nvlist_alloc(i32** %18, i32 %59, i32 0)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %4
  %63 = call i32 (...) @nomem()
  br label %64

64:                                               ; preds = %62, %4
  %65 = call %struct.TYPE_12__* @safe_malloc(i32 16)
  store %struct.TYPE_12__* %65, %struct.TYPE_12__** %14, align 8
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 1
  %69 = load i32*, i32** %15, align 8
  %70 = call i32 @uu_avl_node_init(%struct.TYPE_12__* %66, i32* %68, i32* %69)
  %71 = load i32*, i32** %18, align 8
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32* %71, i32** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %76, label %106

76:                                               ; preds = %64
  %77 = load i8*, i8** %6, align 8
  %78 = getelementptr inbounds i8, i8* %77, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = sext i8 %79 to i32
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %106

82:                                               ; preds = %76
  %83 = load i32, i32* @MAXNAMELEN, align 4
  %84 = add nsw i32 %83, 32
  %85 = zext i32 %84 to i64
  %86 = call i8* @llvm.stacksave()
  store i8* %86, i8** %31, align 8
  %87 = alloca i8, i64 %85, align 16
  store i64 %85, i64* %32, align 8
  %88 = load i32, i32* @B_TRUE, align 4
  store i32 %88, i32* %30, align 4
  %89 = trunc i64 %85 to i32
  %90 = load i8*, i8** %6, align 8
  %91 = load i32, i32* %7, align 4
  %92 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %87, i32 %89, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %90, i32 %91)
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %100, label %96

96:                                               ; preds = %82
  %97 = load i64, i64* %10, align 8
  %98 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %96, %82
  %101 = load i32, i32* @USTYPE_SMB_GRP, align 4
  store i32 %101, i32* %21, align 4
  br label %104

102:                                              ; preds = %96
  %103 = load i32, i32* @USTYPE_SMB_USR, align 4
  store i32 %103, i32* %21, align 4
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i8*, i8** %31, align 8
  call void @llvm.stackrestore(i8* %105)
  br label %106

106:                                              ; preds = %104, %76, %64
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %106
  %112 = load i8*, i8** %6, align 8
  %113 = icmp eq i8* %112, null
  br i1 %113, label %120, label %114

114:                                              ; preds = %111
  %115 = load i8*, i8** %6, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 0
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %161

120:                                              ; preds = %114, %111, %106
  %121 = load i64, i64* %10, align 8
  %122 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %128, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* @ZFS_PROP_GROUPQUOTA, align 8
  %127 = icmp eq i64 %125, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %124, %120
  %129 = load i32, i32* @USTYPE_PSX_GRP, align 4
  store i32 %129, i32* %21, align 4
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 4
  %132 = load i64, i64* %131, align 8
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %143, label %134

134:                                              ; preds = %128
  %135 = load i32, i32* %7, align 4
  %136 = call %struct.group* @getgrgid(i32 %135)
  store %struct.group* %136, %struct.group** %34, align 8
  %137 = icmp ne %struct.group* %136, null
  br i1 %137, label %138, label %142

138:                                              ; preds = %134
  %139 = load %struct.group*, %struct.group** %34, align 8
  %140 = getelementptr inbounds %struct.group, %struct.group* %139, i32 0, i32 0
  %141 = load i8*, i8** %140, align 8
  store i8* %141, i8** %11, align 8
  br label %142

142:                                              ; preds = %138, %134
  br label %143

143:                                              ; preds = %142, %128
  br label %160

144:                                              ; preds = %124
  %145 = load i32, i32* @USTYPE_PSX_USR, align 4
  store i32 %145, i32* %21, align 4
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %159, label %150

150:                                              ; preds = %144
  %151 = load i32, i32* %7, align 4
  %152 = call %struct.passwd* @getpwuid(i32 %151)
  store %struct.passwd* %152, %struct.passwd** %35, align 8
  %153 = icmp ne %struct.passwd* %152, null
  br i1 %153, label %154, label %158

154:                                              ; preds = %150
  %155 = load %struct.passwd*, %struct.passwd** %35, align 8
  %156 = getelementptr inbounds %struct.passwd, %struct.passwd* %155, i32 0, i32 0
  %157 = load i8*, i8** %156, align 8
  store i8* %157, i8** %11, align 8
  br label %158

158:                                              ; preds = %154, %150
  br label %159

159:                                              ; preds = %158, %144
  br label %160

160:                                              ; preds = %159, %143
  br label %161

161:                                              ; preds = %160, %114
  %162 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %163 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %162, i32 0, i32 3
  %164 = load i64, i64* %163, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %173

166:                                              ; preds = %161
  %167 = load i32*, i32** %18, align 8
  %168 = load i32, i32* %30, align 4
  %169 = call i64 @nvlist_add_boolean_value(i32* %167, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = call i32 (...) @nomem()
  br label %173

173:                                              ; preds = %171, %166, %161
  %174 = load i32, i32* %21, align 4
  %175 = call i8* @us_type2str(i32 %174)
  store i8* %175, i8** %22, align 8
  %176 = load i8*, i8** %22, align 8
  %177 = call i8* @gettext(i8* %176)
  %178 = call i64 @strlen(i8* %177)
  store i64 %178, i64* %24, align 8
  %179 = call i32 @us_field_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  store i32 %179, i32* %26, align 4
  %180 = load i64, i64* %24, align 8
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %182 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %181, i32 0, i32 1
  %183 = load i64*, i64** %182, align 8
  %184 = load i32, i32* %26, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i64, i64* %183, i64 %185
  %187 = load i64, i64* %186, align 8
  %188 = icmp ugt i64 %180, %187
  br i1 %188, label %189, label %197

189:                                              ; preds = %173
  %190 = load i64, i64* %24, align 8
  %191 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %191, i32 0, i32 1
  %193 = load i64*, i64** %192, align 8
  %194 = load i32, i32* %26, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i64, i64* %193, i64 %195
  store i64 %190, i64* %196, align 8
  br label %197

197:                                              ; preds = %189, %173
  %198 = load i32*, i32** %18, align 8
  %199 = load i32, i32* %21, align 4
  %200 = call i64 @nvlist_add_uint32(i32* %198, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  %203 = call i32 (...) @nomem()
  br label %204

204:                                              ; preds = %202, %197
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 4
  %207 = load i64, i64* %206, align 8
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %204
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 3
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %217, label %214

214:                                              ; preds = %209, %204
  %215 = load i8*, i8** %11, align 8
  %216 = icmp eq i8* %215, null
  br i1 %216, label %217, label %227

217:                                              ; preds = %214, %209
  %218 = load i32*, i32** %18, align 8
  %219 = load i32, i32* %7, align 4
  %220 = call i64 @nvlist_add_uint64(i32* %218, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %219)
  %221 = icmp ne i64 %220, 0
  br i1 %221, label %222, label %224

222:                                              ; preds = %217
  %223 = call i32 (...) @nomem()
  br label %224

224:                                              ; preds = %222, %217
  %225 = load i32, i32* %7, align 4
  %226 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* null, i32 0, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %225)
  store i64 %226, i64* %23, align 8
  br label %237

227:                                              ; preds = %214
  %228 = load i32*, i32** %18, align 8
  %229 = load i8*, i8** %11, align 8
  %230 = call i64 @nvlist_add_string(i32* %228, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* %229)
  %231 = icmp ne i64 %230, 0
  br i1 %231, label %232, label %234

232:                                              ; preds = %227
  %233 = call i32 (...) @nomem()
  br label %234

234:                                              ; preds = %232, %227
  %235 = load i8*, i8** %11, align 8
  %236 = call i64 @strlen(i8* %235)
  store i64 %236, i64* %23, align 8
  br label %237

237:                                              ; preds = %234, %224
  %238 = call i32 @us_field_index(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  store i32 %238, i32* %27, align 4
  %239 = load i64, i64* %23, align 8
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %240, i32 0, i32 1
  %242 = load i64*, i64** %241, align 8
  %243 = load i32, i32* %27, align 4
  %244 = sext i32 %243 to i64
  %245 = getelementptr inbounds i64, i64* %242, i64 %244
  %246 = load i64, i64* %245, align 8
  %247 = icmp ugt i64 %239, %246
  br i1 %247, label %248, label %256

248:                                              ; preds = %237
  %249 = load i64, i64* %23, align 8
  %250 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %251 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %250, i32 0, i32 1
  %252 = load i64*, i64** %251, align 8
  %253 = load i32, i32* %27, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i64, i64* %252, i64 %254
  store i64 %249, i64* %255, align 8
  br label %256

256:                                              ; preds = %248, %237
  %257 = load i32*, i32** %16, align 8
  %258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %259 = call %struct.TYPE_12__* @uu_avl_find(i32* %257, %struct.TYPE_12__* %258, %struct.TYPE_11__* %29, i32* %17)
  store %struct.TYPE_12__* %259, %struct.TYPE_12__** %19, align 8
  %260 = icmp eq %struct.TYPE_12__* %259, null
  br i1 %260, label %261, label %266

261:                                              ; preds = %256
  %262 = load i32*, i32** %16, align 8
  %263 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %264 = load i32, i32* %17, align 4
  %265 = call i32 @uu_avl_insert(i32* %262, %struct.TYPE_12__* %263, i32 %264)
  br label %275

266:                                              ; preds = %256
  %267 = load i32*, i32** %18, align 8
  %268 = call i32 @nvlist_free(i32* %267)
  %269 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %270 = call i32 @free(%struct.TYPE_12__* %269)
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %19, align 8
  store %struct.TYPE_12__* %271, %struct.TYPE_12__** %14, align 8
  %272 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 0
  %274 = load i32*, i32** %273, align 8
  store i32* %274, i32** %18, align 8
  br label %275

275:                                              ; preds = %266, %261
  %276 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %276, i32 0, i32 2
  %278 = load i64, i64* %277, align 8
  %279 = icmp ne i64 %278, 0
  br i1 %279, label %280, label %284

280:                                              ; preds = %275
  %281 = load i32, i32* %8, align 4
  %282 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %283 = call i32 @zfs_nicenum(i32 %281, i8* %282, i32 32)
  br label %288

284:                                              ; preds = %275
  %285 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %286 = load i32, i32* %8, align 4
  %287 = call i64 (i8*, i32, i8*, ...) @snprintf(i8* %285, i32 32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %286)
  br label %288

288:                                              ; preds = %284, %280
  %289 = getelementptr inbounds [32 x i8], [32 x i8]* %13, i64 0, i64 0
  %290 = call i64 @strlen(i8* %289)
  store i64 %290, i64* %25, align 8
  %291 = load i64, i64* %10, align 8
  %292 = load i64, i64* @ZFS_PROP_USERUSED, align 8
  %293 = icmp eq i64 %291, %292
  br i1 %293, label %298, label %294

294:                                              ; preds = %288
  %295 = load i64, i64* %10, align 8
  %296 = load i64, i64* @ZFS_PROP_GROUPUSED, align 8
  %297 = icmp eq i64 %295, %296
  br i1 %297, label %298, label %306

298:                                              ; preds = %294, %288
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i8** %12, align 8
  %299 = load i32*, i32** %18, align 8
  %300 = call i32 @nvlist_exists(i32* %299, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0))
  %301 = icmp ne i32 %300, 0
  br i1 %301, label %305, label %302

302:                                              ; preds = %298
  %303 = load i32*, i32** %18, align 8
  %304 = call i64 @nvlist_add_uint64(i32* %303, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i32 0)
  br label %305

305:                                              ; preds = %302, %298
  br label %314

306:                                              ; preds = %294
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.7, i64 0, i64 0), i8** %12, align 8
  %307 = load i32*, i32** %18, align 8
  %308 = call i32 @nvlist_exists(i32* %307, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0))
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %313, label %310

310:                                              ; preds = %306
  %311 = load i32*, i32** %18, align 8
  %312 = call i64 @nvlist_add_uint64(i32* %311, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 0)
  br label %313

313:                                              ; preds = %310, %306
  br label %314

314:                                              ; preds = %313, %305
  %315 = load i8*, i8** %12, align 8
  %316 = call i32 @us_field_index(i8* %315)
  store i32 %316, i32* %28, align 4
  %317 = load i64, i64* %25, align 8
  %318 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %319 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %318, i32 0, i32 1
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %28, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = icmp ugt i64 %317, %324
  br i1 %325, label %326, label %334

326:                                              ; preds = %314
  %327 = load i64, i64* %25, align 8
  %328 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %329 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %328, i32 0, i32 1
  %330 = load i64*, i64** %329, align 8
  %331 = load i32, i32* %28, align 4
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i64, i64* %330, i64 %332
  store i64 %327, i64* %333, align 8
  br label %334

334:                                              ; preds = %326, %314
  %335 = load i32*, i32** %18, align 8
  %336 = load i8*, i8** %12, align 8
  %337 = load i32, i32* %8, align 4
  %338 = call i64 @nvlist_add_uint64(i32* %335, i8* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %342

340:                                              ; preds = %334
  %341 = call i32 (...) @nomem()
  br label %342

342:                                              ; preds = %340, %334
  ret i32 0
}

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #1

declare dso_local i32 @nomem(...) #1

declare dso_local %struct.TYPE_12__* @safe_malloc(i32) #1

declare dso_local i32 @uu_avl_node_init(%struct.TYPE_12__*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @snprintf(i8*, i32, i8*, ...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local %struct.group* @getgrgid(i32) #1

declare dso_local %struct.passwd* @getpwuid(i32) #1

declare dso_local i64 @nvlist_add_boolean_value(i32*, i8*, i32) #1

declare dso_local i8* @us_type2str(i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i8* @gettext(i8*) #1

declare dso_local i32 @us_field_index(i8*) #1

declare dso_local i64 @nvlist_add_uint32(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_add_uint64(i32*, i8*, i32) #1

declare dso_local i64 @nvlist_add_string(i32*, i8*, i8*) #1

declare dso_local %struct.TYPE_12__* @uu_avl_find(i32*, %struct.TYPE_12__*, %struct.TYPE_11__*, i32*) #1

declare dso_local i32 @uu_avl_insert(i32*, %struct.TYPE_12__*, i32) #1

declare dso_local i32 @nvlist_free(i32*) #1

declare dso_local i32 @free(%struct.TYPE_12__*) #1

declare dso_local i32 @zfs_nicenum(i32, i8*, i32) #1

declare dso_local i32 @nvlist_exists(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
