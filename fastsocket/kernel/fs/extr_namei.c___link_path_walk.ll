; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___link_path_walk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c___link_path_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.filename = type { i8* }
%struct.nameidata = type { i32, %struct.TYPE_12__, i32, %struct.qstr, i64 }
%struct.TYPE_12__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { %struct.inode*, %struct.TYPE_16__*, %struct.TYPE_14__* }
%struct.inode = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, i64 }
%struct.TYPE_16__ = type { i32 (%struct.TYPE_18__*, %struct.qstr*)*, i32 (%struct.TYPE_18__*, %struct.nameidata*)*, i32 (%struct.TYPE_18__*, %struct.nameidata*)* }
%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.qstr = type { i8*, i32, i32 }
%struct.path = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.inode* }

@LOOKUP_FOLLOW = common dso_local global i32 0, align 4
@LOOKUP_CONTINUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ENOTDIR = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i32 0, align 4
@LAST_DOT = common dso_local global i32 0, align 4
@LAST_DOTDOT = common dso_local global i32 0, align 4
@FS_REVAL_DOT = common dso_local global i32 0, align 4
@ESTALE = common dso_local global i32 0, align 4
@FS_WEAK_REVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.filename*, %struct.nameidata*)* @__link_path_walk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__link_path_walk(%struct.filename* %0, %struct.nameidata* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.filename*, align 8
  %5 = alloca %struct.nameidata*, align 8
  %6 = alloca %struct.path, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qstr, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.filename* %0, %struct.filename** %4, align 8
  store %struct.nameidata* %1, %struct.nameidata** %5, align 8
  %15 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %16 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %9, align 4
  %18 = load %struct.filename*, %struct.filename** %4, align 8
  %19 = getelementptr inbounds %struct.filename, %struct.filename* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  store i8* %20, i8** %10, align 8
  br label %21

21:                                               ; preds = %26, %2
  %22 = load i8*, i8** %10, align 8
  %23 = load i8, i8* %22, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %24, 47
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i8*, i8** %10, align 8
  %28 = getelementptr inbounds i8, i8* %27, i32 1
  store i8* %28, i8** %10, align 8
  br label %21

29:                                               ; preds = %21
  %30 = load i8*, i8** %10, align 8
  %31 = load i8, i8* %30, align 1
  %32 = icmp ne i8 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29
  br label %420

34:                                               ; preds = %29
  %35 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %36 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load %struct.inode*, %struct.inode** %39, align 8
  store %struct.inode* %40, %struct.inode** %7, align 8
  %41 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %42 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %41, i32 0, i32 4
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %53

45:                                               ; preds = %34
  %46 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %47 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %48 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %51 = and i32 %49, %50
  %52 = or i32 %46, %51
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %45, %34
  br label %54

54:                                               ; preds = %238, %145, %53
  %55 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %56 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %57 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = call i32 @exec_permission_lite(%struct.inode* %60)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  br label %499

65:                                               ; preds = %54
  %66 = load i8*, i8** %10, align 8
  %67 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  store i8* %66, i8** %67, align 8
  %68 = load i8*, i8** %10, align 8
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* %13, align 4
  %71 = call i64 (...) @init_name_hash()
  store i64 %71, i64* %11, align 8
  br label %72

72:                                               ; preds = %87, %65
  %73 = load i8*, i8** %10, align 8
  %74 = getelementptr inbounds i8, i8* %73, i32 1
  store i8* %74, i8** %10, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i64, i64* %11, align 8
  %77 = call i64 @partial_name_hash(i32 %75, i64 %76)
  store i64 %77, i64* %11, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  store i32 %80, i32* %13, align 4
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 47
  br label %87

87:                                               ; preds = %84, %81
  %88 = phi i1 [ false, %81 ], [ %86, %84 ]
  br i1 %88, label %72, label %89

89:                                               ; preds = %87
  %90 = load i8*, i8** %10, align 8
  %91 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %92 = load i8*, i8** %91, align 8
  %93 = ptrtoint i8* %90 to i64
  %94 = ptrtoint i8* %92 to i64
  %95 = sub i64 %93, %94
  %96 = trunc i64 %95 to i32
  %97 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  store i32 %96, i32* %97, align 8
  %98 = load i64, i64* %11, align 8
  %99 = call i32 @end_name_hash(i64 %98)
  %100 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 2
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* %13, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %89
  br label %245

104:                                              ; preds = %89
  br label %105

105:                                              ; preds = %111, %104
  %106 = load i8*, i8** %10, align 8
  %107 = getelementptr inbounds i8, i8* %106, i32 1
  store i8* %107, i8** %10, align 8
  %108 = load i8, i8* %107, align 1
  %109 = sext i8 %108 to i32
  %110 = icmp eq i32 %109, 47
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  br label %105

112:                                              ; preds = %105
  %113 = load i8*, i8** %10, align 8
  %114 = load i8, i8* %113, align 1
  %115 = icmp ne i8 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %112
  br label %239

117:                                              ; preds = %112
  %118 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = getelementptr inbounds i8, i8* %119, i64 0
  %121 = load i8, i8* %120, align 1
  %122 = sext i8 %121 to i32
  %123 = icmp eq i32 %122, 46
  br i1 %123, label %124, label %147

124:                                              ; preds = %117
  %125 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  switch i32 %126, label %127 [
    i32 2, label %128
    i32 1, label %145
  ]

127:                                              ; preds = %124
  br label %146

128:                                              ; preds = %124
  %129 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %130 = load i8*, i8** %129, align 8
  %131 = getelementptr inbounds i8, i8* %130, i64 1
  %132 = load i8, i8* %131, align 1
  %133 = sext i8 %132 to i32
  %134 = icmp ne i32 %133, 46
  br i1 %134, label %135, label %136

135:                                              ; preds = %128
  br label %146

136:                                              ; preds = %128
  %137 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %138 = call i32 @follow_dotdot(%struct.nameidata* %137)
  %139 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %140 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %139, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %142, i32 0, i32 0
  %144 = load %struct.inode*, %struct.inode** %143, align 8
  store %struct.inode* %144, %struct.inode** %7, align 8
  br label %145

145:                                              ; preds = %124, %136
  br label %54

146:                                              ; preds = %135, %127
  br label %147

147:                                              ; preds = %146, %117
  %148 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %149 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %148, i32 0, i32 1
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 0
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 1
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %152, align 8
  %154 = icmp ne %struct.TYPE_16__* %153, null
  br i1 %154, label %155, label %183

155:                                              ; preds = %147
  %156 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %157 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 1
  %161 = load %struct.TYPE_16__*, %struct.TYPE_16__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %161, i32 0, i32 0
  %163 = load i32 (%struct.TYPE_18__*, %struct.qstr*)*, i32 (%struct.TYPE_18__*, %struct.qstr*)** %162, align 8
  %164 = icmp ne i32 (%struct.TYPE_18__*, %struct.qstr*)* %163, null
  br i1 %164, label %165, label %183

165:                                              ; preds = %155
  %166 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %167 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = load %struct.TYPE_18__*, %struct.TYPE_18__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %169, i32 0, i32 1
  %171 = load %struct.TYPE_16__*, %struct.TYPE_16__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %171, i32 0, i32 0
  %173 = load i32 (%struct.TYPE_18__*, %struct.qstr*)*, i32 (%struct.TYPE_18__*, %struct.qstr*)** %172, align 8
  %174 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %175 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %175, i32 0, i32 0
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = call i32 %173(%struct.TYPE_18__* %177, %struct.qstr* %12)
  store i32 %178, i32* %8, align 4
  %179 = load i32, i32* %8, align 4
  %180 = icmp slt i32 %179, 0
  br i1 %180, label %181, label %182

181:                                              ; preds = %165
  br label %499

182:                                              ; preds = %165
  br label %183

183:                                              ; preds = %182, %155, %147
  %184 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %185 = call i32 @do_lookup(%struct.nameidata* %184, %struct.qstr* %12, %struct.path* %6)
  store i32 %185, i32* %8, align 4
  %186 = load i32, i32* %8, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %499

189:                                              ; preds = %183
  %190 = load i32, i32* @ENOENT, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %8, align 4
  %192 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 0
  %195 = load %struct.inode*, %struct.inode** %194, align 8
  store %struct.inode* %195, %struct.inode** %7, align 8
  %196 = load %struct.inode*, %struct.inode** %7, align 8
  %197 = icmp ne %struct.inode* %196, null
  br i1 %197, label %199, label %198

198:                                              ; preds = %189
  br label %496

199:                                              ; preds = %189
  %200 = load %struct.inode*, %struct.inode** %7, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 0
  %202 = load %struct.TYPE_15__*, %struct.TYPE_15__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %225

206:                                              ; preds = %199
  %207 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %208 = call i32 @do_follow_link(%struct.path* %6, %struct.nameidata* %207)
  store i32 %208, i32* %8, align 4
  %209 = load i32, i32* %8, align 4
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %206
  br label %530

212:                                              ; preds = %206
  %213 = load i32, i32* @ENOENT, align 4
  %214 = sub nsw i32 0, %213
  store i32 %214, i32* %8, align 4
  %215 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %216 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_18__*, %struct.TYPE_18__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %218, i32 0, i32 0
  %220 = load %struct.inode*, %struct.inode** %219, align 8
  store %struct.inode* %220, %struct.inode** %7, align 8
  %221 = load %struct.inode*, %struct.inode** %7, align 8
  %222 = icmp ne %struct.inode* %221, null
  br i1 %222, label %224, label %223

223:                                              ; preds = %212
  br label %499

224:                                              ; preds = %212
  br label %228

225:                                              ; preds = %199
  %226 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %227 = call i32 @path_to_nameidata(%struct.path* %6, %struct.nameidata* %226)
  br label %228

228:                                              ; preds = %225, %224
  %229 = load i32, i32* @ENOTDIR, align 4
  %230 = sub nsw i32 0, %229
  store i32 %230, i32* %8, align 4
  %231 = load %struct.inode*, %struct.inode** %7, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load %struct.TYPE_15__*, %struct.TYPE_15__** %232, align 8
  %234 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %238, label %237

237:                                              ; preds = %228
  br label %499

238:                                              ; preds = %228
  br label %54

239:                                              ; preds = %116
  %240 = load i32, i32* @LOOKUP_FOLLOW, align 4
  %241 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* %9, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %9, align 4
  br label %245

245:                                              ; preds = %239, %103
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @LOOKUP_CONTINUE, align 4
  %248 = xor i32 %247, -1
  %249 = or i32 %246, %248
  %250 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %251 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 8
  %253 = and i32 %252, %249
  store i32 %253, i32* %251, align 8
  %254 = load i32, i32* %9, align 4
  %255 = load i32, i32* @LOOKUP_PARENT, align 4
  %256 = and i32 %254, %255
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %258, label %259

258:                                              ; preds = %245
  br label %379

259:                                              ; preds = %245
  %260 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %261 = load i8*, i8** %260, align 8
  %262 = getelementptr inbounds i8, i8* %261, i64 0
  %263 = load i8, i8* %262, align 1
  %264 = sext i8 %263 to i32
  %265 = icmp eq i32 %264, 46
  br i1 %265, label %266, label %289

266:                                              ; preds = %259
  %267 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  switch i32 %268, label %269 [
    i32 2, label %270
    i32 1, label %287
  ]

269:                                              ; preds = %266
  br label %288

270:                                              ; preds = %266
  %271 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %272 = load i8*, i8** %271, align 8
  %273 = getelementptr inbounds i8, i8* %272, i64 1
  %274 = load i8, i8* %273, align 1
  %275 = sext i8 %274 to i32
  %276 = icmp ne i32 %275, 46
  br i1 %276, label %277, label %278

277:                                              ; preds = %270
  br label %288

278:                                              ; preds = %270
  %279 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %280 = call i32 @follow_dotdot(%struct.nameidata* %279)
  %281 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %282 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %281, i32 0, i32 1
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 0
  %284 = load %struct.TYPE_18__*, %struct.TYPE_18__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %284, i32 0, i32 0
  %286 = load %struct.inode*, %struct.inode** %285, align 8
  store %struct.inode* %286, %struct.inode** %7, align 8
  br label %287

287:                                              ; preds = %266, %278
  br label %420

288:                                              ; preds = %277, %269
  br label %289

289:                                              ; preds = %288, %259
  %290 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %291 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %290, i32 0, i32 1
  %292 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %291, i32 0, i32 0
  %293 = load %struct.TYPE_18__*, %struct.TYPE_18__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %293, i32 0, i32 1
  %295 = load %struct.TYPE_16__*, %struct.TYPE_16__** %294, align 8
  %296 = icmp ne %struct.TYPE_16__* %295, null
  br i1 %296, label %297, label %325

297:                                              ; preds = %289
  %298 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %299 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %298, i32 0, i32 1
  %300 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %299, i32 0, i32 0
  %301 = load %struct.TYPE_18__*, %struct.TYPE_18__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %301, i32 0, i32 1
  %303 = load %struct.TYPE_16__*, %struct.TYPE_16__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %303, i32 0, i32 0
  %305 = load i32 (%struct.TYPE_18__*, %struct.qstr*)*, i32 (%struct.TYPE_18__*, %struct.qstr*)** %304, align 8
  %306 = icmp ne i32 (%struct.TYPE_18__*, %struct.qstr*)* %305, null
  br i1 %306, label %307, label %325

307:                                              ; preds = %297
  %308 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %309 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %308, i32 0, i32 1
  %310 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %309, i32 0, i32 0
  %311 = load %struct.TYPE_18__*, %struct.TYPE_18__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %311, i32 0, i32 1
  %313 = load %struct.TYPE_16__*, %struct.TYPE_16__** %312, align 8
  %314 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %313, i32 0, i32 0
  %315 = load i32 (%struct.TYPE_18__*, %struct.qstr*)*, i32 (%struct.TYPE_18__*, %struct.qstr*)** %314, align 8
  %316 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %317 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %316, i32 0, i32 1
  %318 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %317, i32 0, i32 0
  %319 = load %struct.TYPE_18__*, %struct.TYPE_18__** %318, align 8
  %320 = call i32 %315(%struct.TYPE_18__* %319, %struct.qstr* %12)
  store i32 %320, i32* %8, align 4
  %321 = load i32, i32* %8, align 4
  %322 = icmp slt i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %307
  br label %499

324:                                              ; preds = %307
  br label %325

325:                                              ; preds = %324, %297, %289
  %326 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %327 = call i32 @do_lookup(%struct.nameidata* %326, %struct.qstr* %12, %struct.path* %6)
  store i32 %327, i32* %8, align 4
  %328 = load i32, i32* %8, align 4
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %330, label %331

330:                                              ; preds = %325
  br label %499

331:                                              ; preds = %325
  %332 = getelementptr inbounds %struct.path, %struct.path* %6, i32 0, i32 0
  %333 = load %struct.TYPE_17__*, %struct.TYPE_17__** %332, align 8
  %334 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %333, i32 0, i32 0
  %335 = load %struct.inode*, %struct.inode** %334, align 8
  store %struct.inode* %335, %struct.inode** %7, align 8
  %336 = load %struct.inode*, %struct.inode** %7, align 8
  %337 = load i32, i32* %9, align 4
  %338 = call i64 @follow_on_final(%struct.inode* %336, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %353

340:                                              ; preds = %331
  %341 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %342 = call i32 @do_follow_link(%struct.path* %6, %struct.nameidata* %341)
  store i32 %342, i32* %8, align 4
  %343 = load i32, i32* %8, align 4
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %346

345:                                              ; preds = %340
  br label %530

346:                                              ; preds = %340
  %347 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %348 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %347, i32 0, i32 1
  %349 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %348, i32 0, i32 0
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %349, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 0
  %352 = load %struct.inode*, %struct.inode** %351, align 8
  store %struct.inode* %352, %struct.inode** %7, align 8
  br label %356

353:                                              ; preds = %331
  %354 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %355 = call i32 @path_to_nameidata(%struct.path* %6, %struct.nameidata* %354)
  br label %356

356:                                              ; preds = %353, %346
  %357 = load i32, i32* @ENOENT, align 4
  %358 = sub nsw i32 0, %357
  store i32 %358, i32* %8, align 4
  %359 = load %struct.inode*, %struct.inode** %7, align 8
  %360 = icmp ne %struct.inode* %359, null
  br i1 %360, label %362, label %361

361:                                              ; preds = %356
  br label %499

362:                                              ; preds = %356
  %363 = load i32, i32* %9, align 4
  %364 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %365 = and i32 %363, %364
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %378

367:                                              ; preds = %362
  %368 = load i32, i32* @ENOTDIR, align 4
  %369 = sub nsw i32 0, %368
  store i32 %369, i32* %8, align 4
  %370 = load %struct.inode*, %struct.inode** %7, align 8
  %371 = getelementptr inbounds %struct.inode, %struct.inode* %370, i32 0, i32 0
  %372 = load %struct.TYPE_15__*, %struct.TYPE_15__** %371, align 8
  %373 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %372, i32 0, i32 0
  %374 = load i32, i32* %373, align 8
  %375 = icmp ne i32 %374, 0
  br i1 %375, label %377, label %376

376:                                              ; preds = %367
  br label %499

377:                                              ; preds = %367
  br label %378

378:                                              ; preds = %377, %362
  br label %495

379:                                              ; preds = %258
  %380 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %381 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %380, i32 0, i32 3
  %382 = bitcast %struct.qstr* %381 to i8*
  %383 = bitcast %struct.qstr* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %382, i8* align 8 %383, i64 16, i1 false)
  %384 = load i32, i32* @LAST_NORM, align 4
  %385 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %386 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %385, i32 0, i32 2
  store i32 %384, i32* %386, align 8
  %387 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %388 = load i8*, i8** %387, align 8
  %389 = getelementptr inbounds i8, i8* %388, i64 0
  %390 = load i8, i8* %389, align 1
  %391 = sext i8 %390 to i32
  %392 = icmp ne i32 %391, 46
  br i1 %392, label %393, label %394

393:                                              ; preds = %379
  br label %495

394:                                              ; preds = %379
  %395 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %396 = load i32, i32* %395, align 8
  %397 = icmp eq i32 %396, 1
  br i1 %397, label %398, label %402

398:                                              ; preds = %394
  %399 = load i32, i32* @LAST_DOT, align 4
  %400 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %401 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %400, i32 0, i32 2
  store i32 %399, i32* %401, align 8
  br label %419

402:                                              ; preds = %394
  %403 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 1
  %404 = load i32, i32* %403, align 8
  %405 = icmp eq i32 %404, 2
  br i1 %405, label %406, label %417

406:                                              ; preds = %402
  %407 = getelementptr inbounds %struct.qstr, %struct.qstr* %12, i32 0, i32 0
  %408 = load i8*, i8** %407, align 8
  %409 = getelementptr inbounds i8, i8* %408, i64 1
  %410 = load i8, i8* %409, align 1
  %411 = sext i8 %410 to i32
  %412 = icmp eq i32 %411, 46
  br i1 %412, label %413, label %417

413:                                              ; preds = %406
  %414 = load i32, i32* @LAST_DOTDOT, align 4
  %415 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %416 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %415, i32 0, i32 2
  store i32 %414, i32* %416, align 8
  br label %418

417:                                              ; preds = %406, %402
  br label %495

418:                                              ; preds = %413
  br label %419

419:                                              ; preds = %418, %398
  br label %420

420:                                              ; preds = %419, %287, %33
  %421 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %422 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %421, i32 0, i32 1
  %423 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %422, i32 0, i32 0
  %424 = load %struct.TYPE_18__*, %struct.TYPE_18__** %423, align 8
  %425 = icmp ne %struct.TYPE_18__* %424, null
  br i1 %425, label %426, label %494

426:                                              ; preds = %420
  %427 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %428 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %427, i32 0, i32 1
  %429 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %428, i32 0, i32 0
  %430 = load %struct.TYPE_18__*, %struct.TYPE_18__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %430, i32 0, i32 2
  %432 = load %struct.TYPE_14__*, %struct.TYPE_14__** %431, align 8
  %433 = icmp ne %struct.TYPE_14__* %432, null
  br i1 %433, label %434, label %494

434:                                              ; preds = %426
  %435 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %436 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %435, i32 0, i32 1
  %437 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %436, i32 0, i32 0
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %437, align 8
  %439 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %438, i32 0, i32 2
  %440 = load %struct.TYPE_14__*, %struct.TYPE_14__** %439, align 8
  %441 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %440, i32 0, i32 0
  %442 = load %struct.TYPE_13__*, %struct.TYPE_13__** %441, align 8
  %443 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %442, i32 0, i32 0
  %444 = load i32, i32* %443, align 4
  store i32 %444, i32* %14, align 4
  %445 = load i32, i32* %14, align 4
  %446 = load i32, i32* @FS_REVAL_DOT, align 4
  %447 = and i32 %445, %446
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %493

449:                                              ; preds = %434
  %450 = load i32, i32* @ESTALE, align 4
  %451 = sub nsw i32 0, %450
  store i32 %451, i32* %8, align 4
  %452 = load i32, i32* %14, align 4
  %453 = load i32, i32* @FS_WEAK_REVALIDATE, align 4
  %454 = and i32 %452, %453
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %456, label %474

456:                                              ; preds = %449
  %457 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %458 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %457, i32 0, i32 1
  %459 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %458, i32 0, i32 0
  %460 = load %struct.TYPE_18__*, %struct.TYPE_18__** %459, align 8
  %461 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %460, i32 0, i32 1
  %462 = load %struct.TYPE_16__*, %struct.TYPE_16__** %461, align 8
  %463 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %462, i32 0, i32 2
  %464 = load i32 (%struct.TYPE_18__*, %struct.nameidata*)*, i32 (%struct.TYPE_18__*, %struct.nameidata*)** %463, align 8
  %465 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %466 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %465, i32 0, i32 1
  %467 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %466, i32 0, i32 0
  %468 = load %struct.TYPE_18__*, %struct.TYPE_18__** %467, align 8
  %469 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %470 = call i32 %464(%struct.TYPE_18__* %468, %struct.nameidata* %469)
  %471 = icmp ne i32 %470, 0
  br i1 %471, label %473, label %472

472:                                              ; preds = %456
  br label %499

473:                                              ; preds = %456
  br label %492

474:                                              ; preds = %449
  %475 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %476 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %475, i32 0, i32 1
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 0
  %478 = load %struct.TYPE_18__*, %struct.TYPE_18__** %477, align 8
  %479 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %478, i32 0, i32 1
  %480 = load %struct.TYPE_16__*, %struct.TYPE_16__** %479, align 8
  %481 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %480, i32 0, i32 1
  %482 = load i32 (%struct.TYPE_18__*, %struct.nameidata*)*, i32 (%struct.TYPE_18__*, %struct.nameidata*)** %481, align 8
  %483 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %484 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %483, i32 0, i32 1
  %485 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %484, i32 0, i32 0
  %486 = load %struct.TYPE_18__*, %struct.TYPE_18__** %485, align 8
  %487 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %488 = call i32 %482(%struct.TYPE_18__* %486, %struct.nameidata* %487)
  %489 = icmp ne i32 %488, 0
  br i1 %489, label %491, label %490

490:                                              ; preds = %474
  br label %499

491:                                              ; preds = %474
  br label %492

492:                                              ; preds = %491, %473
  br label %493

493:                                              ; preds = %492, %434
  br label %494

494:                                              ; preds = %493, %426, %420
  br label %495

495:                                              ; preds = %494, %417, %393, %378
  store i32 0, i32* %3, align 4
  br label %532

496:                                              ; preds = %198
  %497 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %498 = call i32 @path_put_conditional(%struct.path* %6, %struct.nameidata* %497)
  br label %499

499:                                              ; preds = %496, %490, %472, %376, %361, %330, %323, %237, %223, %188, %181, %64
  %500 = call i32 (...) @audit_dummy_context()
  %501 = icmp ne i32 %500, 0
  %502 = xor i1 %501, true
  %503 = zext i1 %502 to i32
  %504 = call i64 @unlikely(i32 %503)
  %505 = icmp ne i64 %504, 0
  br i1 %505, label %506, label %526

506:                                              ; preds = %499
  %507 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %508 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %507, i32 0, i32 1
  %509 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %508, i32 0, i32 0
  %510 = load %struct.TYPE_18__*, %struct.TYPE_18__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %510, i32 0, i32 0
  %512 = load %struct.inode*, %struct.inode** %511, align 8
  %513 = icmp ne %struct.inode* %512, null
  br i1 %513, label %514, label %526

514:                                              ; preds = %506
  %515 = load %struct.filename*, %struct.filename** %4, align 8
  %516 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %517 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %516, i32 0, i32 1
  %518 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %517, i32 0, i32 0
  %519 = load %struct.TYPE_18__*, %struct.TYPE_18__** %518, align 8
  %520 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %521 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 8
  %523 = load i32, i32* @LOOKUP_PARENT, align 4
  %524 = and i32 %522, %523
  %525 = call i32 @audit_inode(%struct.filename* %515, %struct.TYPE_18__* %519, i32 %524)
  br label %526

526:                                              ; preds = %514, %506, %499
  %527 = load %struct.nameidata*, %struct.nameidata** %5, align 8
  %528 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %527, i32 0, i32 1
  %529 = call i32 @path_put(%struct.TYPE_12__* %528)
  br label %530

530:                                              ; preds = %526, %345, %211
  %531 = load i32, i32* %8, align 4
  store i32 %531, i32* %3, align 4
  br label %532

532:                                              ; preds = %530, %495
  %533 = load i32, i32* %3, align 4
  ret i32 %533
}

declare dso_local i32 @exec_permission_lite(%struct.inode*) #1

declare dso_local i64 @init_name_hash(...) #1

declare dso_local i64 @partial_name_hash(i32, i64) #1

declare dso_local i32 @end_name_hash(i64) #1

declare dso_local i32 @follow_dotdot(%struct.nameidata*) #1

declare dso_local i32 @do_lookup(%struct.nameidata*, %struct.qstr*, %struct.path*) #1

declare dso_local i32 @do_follow_link(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local i64 @follow_on_final(%struct.inode*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @path_put_conditional(%struct.path*, %struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_dummy_context(...) #1

declare dso_local i32 @audit_inode(%struct.filename*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @path_put(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
