; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_filp_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/fs/extr_namei.c_do_filp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.filename = type { i8* }
%struct.nameidata = type { i64, i32, %struct.TYPE_10__, %struct.TYPE_14__, %struct.TYPE_14__, %struct.TYPE_12__ }
%struct.TYPE_10__ = type { i64, i64* }
%struct.TYPE_14__ = type { i64, %struct.file* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, %struct.file* }
%struct.path = type { i64, %struct.file* }
%struct.dentry = type { i32, %struct.TYPE_13__* }

@MAY_OPEN = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@O_APPEND = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@ENFILE = common dso_local global i32 0, align 4
@LOOKUP_OPEN = common dso_local global i32 0, align 4
@LOOKUP_PARENT = common dso_local global i32 0, align 4
@EISDIR = common dso_local global i32 0, align 4
@LAST_NORM = common dso_local global i64 0, align 8
@LOOKUP_CREATE = common dso_local global i32 0, align 4
@O_EXCL = common dso_local global i32 0, align 4
@LOOKUP_EXCL = common dso_local global i32 0, align 4
@EROFS = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@ELOOP = common dso_local global i32 0, align 4
@O_NOFOLLOW = common dso_local global i32 0, align 4
@LAST_BIND = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.file* @do_filp_open(i32 %0, %struct.filename* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.file*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.filename*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.nameidata, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.path, align 8
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.filename* %1, %struct.filename** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @open_to_namei_flags(i32 %22)
  store i32 %23, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %24 = load %struct.filename*, %struct.filename** %8, align 8
  %25 = getelementptr inbounds %struct.filename, %struct.filename* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %21, align 8
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %5
  %30 = load i32, i32* @MAY_OPEN, align 4
  %31 = load i32, i32* %19, align 4
  %32 = call i32 @ACC_MODE(i32 %31)
  %33 = or i32 %30, %32
  store i32 %33, i32* %11, align 4
  br label %34

34:                                               ; preds = %29, %5
  %35 = load i32, i32* %19, align 4
  %36 = load i32, i32* @O_TRUNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load i32, i32* @MAY_WRITE, align 4
  %41 = load i32, i32* %11, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %11, align 4
  br label %43

43:                                               ; preds = %39, %34
  %44 = load i32, i32* %19, align 4
  %45 = load i32, i32* @O_APPEND, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @MAY_APPEND, align 4
  %50 = load i32, i32* %11, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %43
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* @O_CREAT, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %118, label %57

57:                                               ; preds = %52
  %58 = call %struct.file* (...) @get_empty_filp()
  store %struct.file* %58, %struct.file** %12, align 8
  %59 = load %struct.file*, %struct.file** %12, align 8
  %60 = icmp eq %struct.file* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load i32, i32* @ENFILE, align 4
  %63 = sub nsw i32 0, %62
  %64 = call %struct.file* @ERR_PTR(i32 %63)
  store %struct.file* %64, %struct.file** %6, align 8
  br label %654

65:                                               ; preds = %57
  %66 = load %struct.file*, %struct.file** %12, align 8
  %67 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %68, i32 0, i32 2
  store %struct.file* %66, %struct.file** %69, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load %struct.file*, %struct.file** %12, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  %73 = load i32, i32* %19, align 4
  %74 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  store i32 %73, i32* %76, align 8
  %77 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i32 0, i32 1
  store i32 0, i32* %79, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.filename*, %struct.filename** %8, align 8
  %82 = load i32, i32* %19, align 4
  %83 = call i32 @lookup_flags(i32 %82)
  %84 = load i32, i32* @LOOKUP_OPEN, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @filename_lookup(i32 %80, %struct.filename* %81, i32 %85, %struct.nameidata* %13)
  store i32 %86, i32* %14, align 4
  %87 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 2
  %90 = load %struct.file*, %struct.file** %89, align 8
  %91 = call i64 @IS_ERR(%struct.file* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %105

93:                                               ; preds = %65
  %94 = load i32, i32* %14, align 4
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 2
  %100 = load %struct.file*, %struct.file** %99, align 8
  %101 = call i32 @PTR_ERR(%struct.file* %100)
  store i32 %101, i32* %14, align 4
  %102 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %103 = call i32 @path_put(%struct.TYPE_14__* %102)
  br label %104

104:                                              ; preds = %96, %93
  br label %111

105:                                              ; preds = %65
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %105
  %109 = call i32 @release_open_intent(%struct.nameidata* %13)
  br label %110

110:                                              ; preds = %108, %105
  br label %111

111:                                              ; preds = %110, %104
  %112 = load i32, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %117

114:                                              ; preds = %111
  %115 = load i32, i32* %14, align 4
  %116 = call %struct.file* @ERR_PTR(i32 %115)
  store %struct.file* %116, %struct.file** %6, align 8
  br label %654

117:                                              ; preds = %111
  br label %405

118:                                              ; preds = %52
  %119 = load i32, i32* %7, align 4
  %120 = load i8*, i8** %21, align 8
  %121 = load i32, i32* @LOOKUP_PARENT, align 4
  %122 = call i32 @path_init(i32 %119, i8* %120, i32 %121, %struct.nameidata* %13)
  store i32 %122, i32* %14, align 4
  %123 = load i32, i32* %14, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %128

125:                                              ; preds = %118
  %126 = load i32, i32* %14, align 4
  %127 = call %struct.file* @ERR_PTR(i32 %126)
  store %struct.file* %127, %struct.file** %6, align 8
  br label %654

128:                                              ; preds = %118
  %129 = load %struct.filename*, %struct.filename** %8, align 8
  %130 = call i32 @path_walk(%struct.filename* %129, %struct.nameidata* %13)
  store i32 %130, i32* %14, align 4
  %131 = load i32, i32* %14, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %128
  %134 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %133
  %139 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %140 = call i32 @path_put(%struct.TYPE_14__* %139)
  br label %141

141:                                              ; preds = %138, %133
  %142 = load i32, i32* %14, align 4
  %143 = call %struct.file* @ERR_PTR(i32 %142)
  store %struct.file* %143, %struct.file** %6, align 8
  br label %654

144:                                              ; preds = %128
  %145 = call i32 (...) @audit_dummy_context()
  %146 = icmp ne i32 %145, 0
  %147 = xor i1 %146, true
  %148 = zext i1 %147 to i32
  %149 = call i64 @unlikely(i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %158

151:                                              ; preds = %144
  %152 = load %struct.filename*, %struct.filename** %8, align 8
  %153 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  %155 = load %struct.file*, %struct.file** %154, align 8
  %156 = load i32, i32* @LOOKUP_PARENT, align 4
  %157 = call i32 @audit_inode(%struct.filename* %152, %struct.file* %155, i32 %156)
  br label %158

158:                                              ; preds = %151, %144
  %159 = load i32, i32* @EISDIR, align 4
  %160 = sub nsw i32 0, %159
  store i32 %160, i32* %14, align 4
  %161 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @LAST_NORM, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %175, label %165

165:                                              ; preds = %158
  %166 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i64*, i64** %167, align 8
  %169 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = getelementptr inbounds i64, i64* %168, i64 %171
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %176

175:                                              ; preds = %165, %158
  br label %532

176:                                              ; preds = %165
  %177 = load i32, i32* @ENFILE, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %14, align 4
  %179 = call %struct.file* (...) @get_empty_filp()
  store %struct.file* %179, %struct.file** %12, align 8
  %180 = load %struct.file*, %struct.file** %12, align 8
  %181 = icmp eq %struct.file* %180, null
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %532

183:                                              ; preds = %176
  %184 = load %struct.file*, %struct.file** %12, align 8
  %185 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 2
  store %struct.file* %184, %struct.file** %187, align 8
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.file*, %struct.file** %12, align 8
  %190 = getelementptr inbounds %struct.file, %struct.file* %189, i32 0, i32 0
  store i32 %188, i32* %190, align 8
  %191 = load i32, i32* %19, align 4
  %192 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  %194 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %193, i32 0, i32 0
  store i32 %191, i32* %194, align 8
  %195 = load i32, i32* %10, align 4
  %196 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %197, i32 0, i32 1
  store i32 %195, i32* %198, align 4
  %199 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %199, i32 0, i32 1
  %201 = load %struct.file*, %struct.file** %200, align 8
  %202 = bitcast %struct.file* %201 to %struct.dentry*
  store %struct.dentry* %202, %struct.dentry** %16, align 8
  %203 = load i32, i32* @LOOKUP_PARENT, align 4
  %204 = xor i32 %203, -1
  %205 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = and i32 %206, %204
  store i32 %207, i32* %205, align 8
  %208 = load i32, i32* @LOOKUP_CREATE, align 4
  %209 = load i32, i32* @LOOKUP_OPEN, align 4
  %210 = or i32 %208, %209
  %211 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %212 = load i32, i32* %211, align 8
  %213 = or i32 %212, %210
  store i32 %213, i32* %211, align 8
  %214 = load i32, i32* %19, align 4
  %215 = load i32, i32* @O_EXCL, align 4
  %216 = and i32 %214, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %218, label %223

218:                                              ; preds = %183
  %219 = load i32, i32* @LOOKUP_EXCL, align 4
  %220 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = or i32 %221, %219
  store i32 %222, i32* %220, align 8
  br label %223

223:                                              ; preds = %218, %183
  %224 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %224, i32 0, i32 0
  %226 = load i64, i64* %225, align 8
  %227 = call i32 @mnt_want_write(i64 %226)
  store i32 %227, i32* %14, align 4
  %228 = load i32, i32* %14, align 4
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %231, label %230

230:                                              ; preds = %223
  store i32 1, i32* %20, align 4
  br label %231

231:                                              ; preds = %230, %223
  %232 = load %struct.dentry*, %struct.dentry** %16, align 8
  %233 = getelementptr inbounds %struct.dentry, %struct.dentry* %232, i32 0, i32 1
  %234 = load %struct.TYPE_13__*, %struct.TYPE_13__** %233, align 8
  %235 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %234, i32 0, i32 0
  %236 = call i32 @mutex_lock(i32* %235)
  %237 = call i8* @lookup_hash(%struct.nameidata* %13)
  %238 = bitcast i8* %237 to %struct.file*
  %239 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  store %struct.file* %238, %struct.file** %239, align 8
  %240 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  %243 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  store i64 %242, i64* %243, align 8
  br label %244

244:                                              ; preds = %637, %231
  %245 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %246 = load %struct.file*, %struct.file** %245, align 8
  %247 = call i32 @PTR_ERR(%struct.file* %246)
  store i32 %247, i32* %14, align 4
  %248 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %249 = load %struct.file*, %struct.file** %248, align 8
  %250 = call i64 @IS_ERR(%struct.file* %249)
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %266

252:                                              ; preds = %244
  %253 = load %struct.dentry*, %struct.dentry** %16, align 8
  %254 = getelementptr inbounds %struct.dentry, %struct.dentry* %253, i32 0, i32 1
  %255 = load %struct.TYPE_13__*, %struct.TYPE_13__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 0
  %257 = call i32 @mutex_unlock(i32* %256)
  %258 = load i32, i32* %20, align 4
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %252
  %261 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 0
  %263 = load i64, i64* %262, align 8
  %264 = call i32 @mnt_drop_write(i64 %263)
  br label %265

265:                                              ; preds = %260, %252
  br label %522

266:                                              ; preds = %244
  %267 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %267, i32 0, i32 0
  %269 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %268, i32 0, i32 2
  %270 = load %struct.file*, %struct.file** %269, align 8
  %271 = call i64 @IS_ERR(%struct.file* %270)
  %272 = icmp ne i64 %271, 0
  br i1 %272, label %273, label %279

273:                                              ; preds = %266
  %274 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %275 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %274, i32 0, i32 0
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 2
  %277 = load %struct.file*, %struct.file** %276, align 8
  %278 = call i32 @PTR_ERR(%struct.file* %277)
  store i32 %278, i32* %14, align 4
  br label %506

279:                                              ; preds = %266
  %280 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %281 = load %struct.file*, %struct.file** %280, align 8
  %282 = getelementptr inbounds %struct.file, %struct.file* %281, i32 0, i32 1
  %283 = load %struct.TYPE_13__*, %struct.TYPE_13__** %282, align 8
  %284 = icmp ne %struct.TYPE_13__* %283, null
  br i1 %284, label %333, label %285

285:                                              ; preds = %279
  %286 = load i32, i32* %20, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %291, label %288

288:                                              ; preds = %285
  %289 = load i32, i32* @EROFS, align 4
  %290 = sub nsw i32 0, %289
  store i32 %290, i32* %14, align 4
  br label %506

291:                                              ; preds = %285
  %292 = load i32, i32* %9, align 4
  %293 = load i32, i32* %10, align 4
  %294 = call i32 @__open_namei_create(%struct.nameidata* %13, %struct.path* %15, i32 %292, i32 %293)
  store i32 %294, i32* %14, align 4
  %295 = load i32, i32* %14, align 4
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %297, label %302

297:                                              ; preds = %291
  %298 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %299 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %298, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = call i32 @mnt_drop_write(i64 %300)
  br label %522

302:                                              ; preds = %291
  %303 = call %struct.file* @nameidata_to_filp(%struct.nameidata* %13)
  store %struct.file* %303, %struct.file** %12, align 8
  %304 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %305 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %304, i32 0, i32 0
  %306 = load i64, i64* %305, align 8
  %307 = call i32 @mnt_drop_write(i64 %306)
  %308 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %308, i32 0, i32 0
  %310 = load i64, i64* %309, align 8
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %315

312:                                              ; preds = %302
  %313 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %314 = call i32 @path_put(%struct.TYPE_14__* %313)
  br label %315

315:                                              ; preds = %312, %302
  %316 = load %struct.file*, %struct.file** %12, align 8
  %317 = call i64 @IS_ERR(%struct.file* %316)
  %318 = icmp ne i64 %317, 0
  br i1 %318, label %331, label %319

319:                                              ; preds = %315
  %320 = load %struct.file*, %struct.file** %12, align 8
  %321 = load i32, i32* %11, align 4
  %322 = call i32 @ima_file_check(%struct.file* %320, i32 %321)
  store i32 %322, i32* %14, align 4
  %323 = load i32, i32* %14, align 4
  %324 = icmp ne i32 %323, 0
  br i1 %324, label %325, label %330

325:                                              ; preds = %319
  %326 = load %struct.file*, %struct.file** %12, align 8
  %327 = call i32 @fput(%struct.file* %326)
  %328 = load i32, i32* %14, align 4
  %329 = call %struct.file* @ERR_PTR(i32 %328)
  store %struct.file* %329, %struct.file** %12, align 8
  br label %330

330:                                              ; preds = %325, %319
  br label %331

331:                                              ; preds = %330, %315
  %332 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %332, %struct.file** %6, align 8
  br label %654

333:                                              ; preds = %279
  %334 = load %struct.dentry*, %struct.dentry** %16, align 8
  %335 = getelementptr inbounds %struct.dentry, %struct.dentry* %334, i32 0, i32 1
  %336 = load %struct.TYPE_13__*, %struct.TYPE_13__** %335, align 8
  %337 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %336, i32 0, i32 0
  %338 = call i32 @mutex_unlock(i32* %337)
  %339 = load i32, i32* %20, align 4
  %340 = icmp ne i32 %339, 0
  br i1 %340, label %341, label %346

341:                                              ; preds = %333
  %342 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %343 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %342, i32 0, i32 0
  %344 = load i64, i64* %343, align 8
  %345 = call i32 @mnt_drop_write(i64 %344)
  store i32 0, i32* %20, align 4
  br label %346

346:                                              ; preds = %341, %333
  %347 = load %struct.filename*, %struct.filename** %8, align 8
  %348 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %349 = load %struct.file*, %struct.file** %348, align 8
  %350 = call i32 @audit_inode(%struct.filename* %347, %struct.file* %349, i32 0)
  %351 = load i32, i32* @EEXIST, align 4
  %352 = sub nsw i32 0, %351
  store i32 %352, i32* %14, align 4
  %353 = load i32, i32* %19, align 4
  %354 = load i32, i32* @O_EXCL, align 4
  %355 = and i32 %353, %354
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %346
  br label %520

358:                                              ; preds = %346
  %359 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %360 = load i32, i32* %359, align 8
  %361 = call i32 @follow_managed(%struct.path* %15, i32 %360)
  store i32 %361, i32* %14, align 4
  %362 = load i32, i32* %14, align 4
  %363 = icmp slt i32 %362, 0
  br i1 %363, label %364, label %365

364:                                              ; preds = %358
  br label %520

365:                                              ; preds = %358
  %366 = load i32, i32* @ENOENT, align 4
  %367 = sub nsw i32 0, %366
  store i32 %367, i32* %14, align 4
  %368 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %369 = load %struct.file*, %struct.file** %368, align 8
  %370 = getelementptr inbounds %struct.file, %struct.file* %369, i32 0, i32 1
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %370, align 8
  %372 = icmp ne %struct.TYPE_13__* %371, null
  br i1 %372, label %374, label %373

373:                                              ; preds = %365
  br label %520

374:                                              ; preds = %365
  %375 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %376 = load %struct.file*, %struct.file** %375, align 8
  %377 = getelementptr inbounds %struct.file, %struct.file* %376, i32 0, i32 1
  %378 = load %struct.TYPE_13__*, %struct.TYPE_13__** %377, align 8
  %379 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %378, i32 0, i32 2
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %379, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 0
  %382 = load i64, i64* %381, align 8
  %383 = icmp ne i64 %382, 0
  br i1 %383, label %384, label %385

384:                                              ; preds = %374
  br label %545

385:                                              ; preds = %374
  %386 = call i32 @path_to_nameidata(%struct.path* %15, %struct.nameidata* %13)
  %387 = load i32, i32* @EISDIR, align 4
  %388 = sub nsw i32 0, %387
  store i32 %388, i32* %14, align 4
  %389 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %390 = load %struct.file*, %struct.file** %389, align 8
  %391 = getelementptr inbounds %struct.file, %struct.file* %390, i32 0, i32 1
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %391, align 8
  %393 = icmp ne %struct.TYPE_13__* %392, null
  br i1 %393, label %394, label %404

394:                                              ; preds = %385
  %395 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %396 = load %struct.file*, %struct.file** %395, align 8
  %397 = getelementptr inbounds %struct.file, %struct.file* %396, i32 0, i32 1
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %397, align 8
  %399 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = call i64 @S_ISDIR(i32 %400)
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %404

403:                                              ; preds = %394
  br label %522

404:                                              ; preds = %394, %385
  br label %405

405:                                              ; preds = %590, %404, %117
  %406 = load i32, i32* %19, align 4
  %407 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %408 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %407, i32 0, i32 1
  %409 = load %struct.file*, %struct.file** %408, align 8
  %410 = getelementptr inbounds %struct.file, %struct.file* %409, i32 0, i32 1
  %411 = load %struct.TYPE_13__*, %struct.TYPE_13__** %410, align 8
  %412 = call i32 @open_will_truncate(i32 %406, %struct.TYPE_13__* %411)
  store i32 %412, i32* %18, align 4
  %413 = load i32, i32* %18, align 4
  %414 = icmp ne i32 %413, 0
  br i1 %414, label %415, label %424

415:                                              ; preds = %405
  %416 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %417 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %416, i32 0, i32 0
  %418 = load i64, i64* %417, align 8
  %419 = call i32 @mnt_want_write(i64 %418)
  store i32 %419, i32* %14, align 4
  %420 = load i32, i32* %14, align 4
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %415
  br label %522

423:                                              ; preds = %415
  br label %424

424:                                              ; preds = %423, %405
  %425 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %426 = load i32, i32* %11, align 4
  %427 = load i32, i32* %9, align 4
  %428 = call i32 @may_open(%struct.TYPE_14__* %425, i32 %426, i32 %427)
  store i32 %428, i32* %14, align 4
  %429 = load i32, i32* %14, align 4
  %430 = icmp ne i32 %429, 0
  br i1 %430, label %431, label %440

431:                                              ; preds = %424
  %432 = load i32, i32* %18, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %439

434:                                              ; preds = %431
  %435 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %436 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %435, i32 0, i32 0
  %437 = load i64, i64* %436, align 8
  %438 = call i32 @mnt_drop_write(i64 %437)
  br label %439

439:                                              ; preds = %434, %431
  br label %522

440:                                              ; preds = %424
  %441 = call %struct.file* @nameidata_to_filp(%struct.nameidata* %13)
  store %struct.file* %441, %struct.file** %12, align 8
  %442 = load %struct.file*, %struct.file** %12, align 8
  %443 = call i64 @IS_ERR(%struct.file* %442)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %457, label %445

445:                                              ; preds = %440
  %446 = load %struct.file*, %struct.file** %12, align 8
  %447 = load i32, i32* %11, align 4
  %448 = call i32 @ima_file_check(%struct.file* %446, i32 %447)
  store i32 %448, i32* %14, align 4
  %449 = load i32, i32* %14, align 4
  %450 = icmp ne i32 %449, 0
  br i1 %450, label %451, label %456

451:                                              ; preds = %445
  %452 = load %struct.file*, %struct.file** %12, align 8
  %453 = call i32 @fput(%struct.file* %452)
  %454 = load i32, i32* %14, align 4
  %455 = call %struct.file* @ERR_PTR(i32 %454)
  store %struct.file* %455, %struct.file** %12, align 8
  br label %456

456:                                              ; preds = %451, %445
  br label %457

457:                                              ; preds = %456, %440
  %458 = load %struct.file*, %struct.file** %12, align 8
  %459 = call i64 @IS_ERR(%struct.file* %458)
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %488, label %461

461:                                              ; preds = %457
  %462 = load i32, i32* %11, align 4
  %463 = load i32, i32* @MAY_WRITE, align 4
  %464 = and i32 %462, %463
  %465 = icmp ne i32 %464, 0
  br i1 %465, label %466, label %473

466:                                              ; preds = %461
  %467 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %468 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %467, i32 0, i32 1
  %469 = load %struct.file*, %struct.file** %468, align 8
  %470 = getelementptr inbounds %struct.file, %struct.file* %469, i32 0, i32 1
  %471 = load %struct.TYPE_13__*, %struct.TYPE_13__** %470, align 8
  %472 = call i32 @vfs_dq_init(%struct.TYPE_13__* %471)
  br label %473

473:                                              ; preds = %466, %461
  %474 = load i32, i32* %18, align 4
  %475 = icmp ne i32 %474, 0
  br i1 %475, label %476, label %487

476:                                              ; preds = %473
  %477 = load %struct.file*, %struct.file** %12, align 8
  %478 = call i32 @handle_truncate(%struct.file* %477)
  store i32 %478, i32* %14, align 4
  %479 = load i32, i32* %14, align 4
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %481, label %486

481:                                              ; preds = %476
  %482 = load %struct.file*, %struct.file** %12, align 8
  %483 = call i32 @fput(%struct.file* %482)
  %484 = load i32, i32* %14, align 4
  %485 = call %struct.file* @ERR_PTR(i32 %484)
  store %struct.file* %485, %struct.file** %12, align 8
  br label %486

486:                                              ; preds = %481, %476
  br label %487

487:                                              ; preds = %486, %473
  br label %488

488:                                              ; preds = %487, %457
  %489 = load i32, i32* %18, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %488
  %492 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %493 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %492, i32 0, i32 0
  %494 = load i64, i64* %493, align 8
  %495 = call i32 @mnt_drop_write(i64 %494)
  br label %496

496:                                              ; preds = %491, %488
  %497 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %498 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %497, i32 0, i32 0
  %499 = load i64, i64* %498, align 8
  %500 = icmp ne i64 %499, 0
  br i1 %500, label %501, label %504

501:                                              ; preds = %496
  %502 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %503 = call i32 @path_put(%struct.TYPE_14__* %502)
  br label %504

504:                                              ; preds = %501, %496
  %505 = load %struct.file*, %struct.file** %12, align 8
  store %struct.file* %505, %struct.file** %6, align 8
  br label %654

506:                                              ; preds = %288, %273
  %507 = load %struct.dentry*, %struct.dentry** %16, align 8
  %508 = getelementptr inbounds %struct.dentry, %struct.dentry* %507, i32 0, i32 1
  %509 = load %struct.TYPE_13__*, %struct.TYPE_13__** %508, align 8
  %510 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %509, i32 0, i32 0
  %511 = call i32 @mutex_unlock(i32* %510)
  %512 = load i32, i32* %20, align 4
  %513 = icmp ne i32 %512, 0
  br i1 %513, label %514, label %519

514:                                              ; preds = %506
  %515 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %516 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %515, i32 0, i32 0
  %517 = load i64, i64* %516, align 8
  %518 = call i32 @mnt_drop_write(i64 %517)
  br label %519

519:                                              ; preds = %514, %506
  br label %520

520:                                              ; preds = %563, %552, %519, %373, %364, %357
  %521 = call i32 @path_put_conditional(%struct.path* %15, %struct.nameidata* %13)
  br label %522

522:                                              ; preds = %620, %609, %598, %520, %439, %422, %403, %297, %265
  %523 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 5
  %524 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %523, i32 0, i32 0
  %525 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %524, i32 0, i32 2
  %526 = load %struct.file*, %struct.file** %525, align 8
  %527 = call i64 @IS_ERR(%struct.file* %526)
  %528 = icmp ne i64 %527, 0
  br i1 %528, label %531, label %529

529:                                              ; preds = %522
  %530 = call i32 @release_open_intent(%struct.nameidata* %13)
  br label %531

531:                                              ; preds = %529, %522
  br label %532

532:                                              ; preds = %531, %182, %175
  %533 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %534 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %533, i32 0, i32 0
  %535 = load i64, i64* %534, align 8
  %536 = icmp ne i64 %535, 0
  br i1 %536, label %537, label %540

537:                                              ; preds = %532
  %538 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %539 = call i32 @path_put(%struct.TYPE_14__* %538)
  br label %540

540:                                              ; preds = %537, %532
  %541 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %542 = call i32 @path_put(%struct.TYPE_14__* %541)
  %543 = load i32, i32* %14, align 4
  %544 = call %struct.file* @ERR_PTR(i32 %543)
  store %struct.file* %544, %struct.file** %6, align 8
  br label %654

545:                                              ; preds = %384
  %546 = load i32, i32* @ELOOP, align 4
  %547 = sub nsw i32 0, %546
  store i32 %547, i32* %14, align 4
  %548 = load i32, i32* %19, align 4
  %549 = load i32, i32* @O_NOFOLLOW, align 4
  %550 = and i32 %548, %549
  %551 = icmp ne i32 %550, 0
  br i1 %551, label %552, label %553

552:                                              ; preds = %545
  br label %520

553:                                              ; preds = %545
  %554 = load i32, i32* @LOOKUP_PARENT, align 4
  %555 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %556 = load i32, i32* %555, align 8
  %557 = or i32 %556, %554
  store i32 %557, i32* %555, align 8
  %558 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  %559 = load %struct.file*, %struct.file** %558, align 8
  %560 = call i32 @security_inode_follow_link(%struct.file* %559, %struct.nameidata* %13)
  store i32 %560, i32* %14, align 4
  %561 = load i32, i32* %14, align 4
  %562 = icmp ne i32 %561, 0
  br i1 %562, label %563, label %564

563:                                              ; preds = %553
  br label %520

564:                                              ; preds = %553
  %565 = call i32 @__do_follow_link(%struct.path* %15, %struct.nameidata* %13)
  store i32 %565, i32* %14, align 4
  %566 = load i32, i32* %14, align 4
  %567 = icmp ne i32 %566, 0
  br i1 %567, label %568, label %580

568:                                              ; preds = %564
  %569 = call i32 @release_open_intent(%struct.nameidata* %13)
  %570 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %571 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %570, i32 0, i32 0
  %572 = load i64, i64* %571, align 8
  %573 = icmp ne i64 %572, 0
  br i1 %573, label %574, label %577

574:                                              ; preds = %568
  %575 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 4
  %576 = call i32 @path_put(%struct.TYPE_14__* %575)
  br label %577

577:                                              ; preds = %574, %568
  %578 = load i32, i32* %14, align 4
  %579 = call %struct.file* @ERR_PTR(i32 %578)
  store %struct.file* %579, %struct.file** %6, align 8
  br label %654

580:                                              ; preds = %564
  %581 = load i32, i32* @LOOKUP_PARENT, align 4
  %582 = xor i32 %581, -1
  %583 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 1
  %584 = load i32, i32* %583, align 8
  %585 = and i32 %584, %582
  store i32 %585, i32* %583, align 8
  %586 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %587 = load i64, i64* %586, align 8
  %588 = load i64, i64* @LAST_BIND, align 8
  %589 = icmp eq i64 %587, %588
  br i1 %589, label %590, label %591

590:                                              ; preds = %580
  br label %405

591:                                              ; preds = %580
  %592 = load i32, i32* @EISDIR, align 4
  %593 = sub nsw i32 0, %592
  store i32 %593, i32* %14, align 4
  %594 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 0
  %595 = load i64, i64* %594, align 8
  %596 = load i64, i64* @LAST_NORM, align 8
  %597 = icmp ne i64 %595, %596
  br i1 %597, label %598, label %599

598:                                              ; preds = %591
  br label %522

599:                                              ; preds = %591
  %600 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %601 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %600, i32 0, i32 1
  %602 = load i64*, i64** %601, align 8
  %603 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %604 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %603, i32 0, i32 0
  %605 = load i64, i64* %604, align 8
  %606 = getelementptr inbounds i64, i64* %602, i64 %605
  %607 = load i64, i64* %606, align 8
  %608 = icmp ne i64 %607, 0
  br i1 %608, label %609, label %614

609:                                              ; preds = %599
  %610 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %611 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %610, i32 0, i32 1
  %612 = load i64*, i64** %611, align 8
  %613 = call i32 @__putname(i64* %612)
  br label %522

614:                                              ; preds = %599
  %615 = load i32, i32* @ELOOP, align 4
  %616 = sub nsw i32 0, %615
  store i32 %616, i32* %14, align 4
  %617 = load i32, i32* %17, align 4
  %618 = add nsw i32 %617, 1
  store i32 %618, i32* %17, align 4
  %619 = icmp eq i32 %617, 32
  br i1 %619, label %620, label %625

620:                                              ; preds = %614
  %621 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %622 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %621, i32 0, i32 1
  %623 = load i64*, i64** %622, align 8
  %624 = call i32 @__putname(i64* %623)
  br label %522

625:                                              ; preds = %614
  %626 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %627 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %626, i32 0, i32 1
  %628 = load %struct.file*, %struct.file** %627, align 8
  %629 = bitcast %struct.file* %628 to %struct.dentry*
  store %struct.dentry* %629, %struct.dentry** %16, align 8
  %630 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %631 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %630, i32 0, i32 0
  %632 = load i64, i64* %631, align 8
  %633 = call i32 @mnt_want_write(i64 %632)
  store i32 %633, i32* %14, align 4
  %634 = load i32, i32* %14, align 4
  %635 = icmp ne i32 %634, 0
  br i1 %635, label %637, label %636

636:                                              ; preds = %625
  store i32 1, i32* %20, align 4
  br label %637

637:                                              ; preds = %636, %625
  %638 = load %struct.dentry*, %struct.dentry** %16, align 8
  %639 = getelementptr inbounds %struct.dentry, %struct.dentry* %638, i32 0, i32 1
  %640 = load %struct.TYPE_13__*, %struct.TYPE_13__** %639, align 8
  %641 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %640, i32 0, i32 0
  %642 = call i32 @mutex_lock(i32* %641)
  %643 = call i8* @lookup_hash(%struct.nameidata* %13)
  %644 = bitcast i8* %643 to %struct.file*
  %645 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 1
  store %struct.file* %644, %struct.file** %645, align 8
  %646 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 3
  %647 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %646, i32 0, i32 0
  %648 = load i64, i64* %647, align 8
  %649 = getelementptr inbounds %struct.path, %struct.path* %15, i32 0, i32 0
  store i64 %648, i64* %649, align 8
  %650 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %13, i32 0, i32 2
  %651 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %650, i32 0, i32 1
  %652 = load i64*, i64** %651, align 8
  %653 = call i32 @__putname(i64* %652)
  br label %244

654:                                              ; preds = %577, %540, %504, %331, %141, %125, %114, %61
  %655 = load %struct.file*, %struct.file** %6, align 8
  ret %struct.file* %655
}

declare dso_local i32 @open_to_namei_flags(i32) #1

declare dso_local i32 @ACC_MODE(i32) #1

declare dso_local %struct.file* @get_empty_filp(...) #1

declare dso_local %struct.file* @ERR_PTR(i32) #1

declare dso_local i32 @filename_lookup(i32, %struct.filename*, i32, %struct.nameidata*) #1

declare dso_local i32 @lookup_flags(i32) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local i32 @PTR_ERR(%struct.file*) #1

declare dso_local i32 @path_put(%struct.TYPE_14__*) #1

declare dso_local i32 @release_open_intent(%struct.nameidata*) #1

declare dso_local i32 @path_init(i32, i8*, i32, %struct.nameidata*) #1

declare dso_local i32 @path_walk(%struct.filename*, %struct.nameidata*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @audit_dummy_context(...) #1

declare dso_local i32 @audit_inode(%struct.filename*, %struct.file*, i32) #1

declare dso_local i32 @mnt_want_write(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @lookup_hash(%struct.nameidata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mnt_drop_write(i64) #1

declare dso_local i32 @__open_namei_create(%struct.nameidata*, %struct.path*, i32, i32) #1

declare dso_local %struct.file* @nameidata_to_filp(%struct.nameidata*) #1

declare dso_local i32 @ima_file_check(%struct.file*, i32) #1

declare dso_local i32 @fput(%struct.file*) #1

declare dso_local i32 @follow_managed(%struct.path*, i32) #1

declare dso_local i32 @path_to_nameidata(%struct.path*, %struct.nameidata*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @open_will_truncate(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @may_open(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @vfs_dq_init(%struct.TYPE_13__*) #1

declare dso_local i32 @handle_truncate(%struct.file*) #1

declare dso_local i32 @path_put_conditional(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @security_inode_follow_link(%struct.file*, %struct.nameidata*) #1

declare dso_local i32 @__do_follow_link(%struct.path*, %struct.nameidata*) #1

declare dso_local i32 @__putname(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
