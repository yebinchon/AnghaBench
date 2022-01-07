; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_add_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_add_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_11__ = type { %struct.TYPE_11__*, i64, i32* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_8__*, %struct.TYPE_10__* }
%struct.TYPE_8__ = type { i64, %struct.TYPE_12__*, %struct.TYPE_8__* }
%struct.TYPE_12__ = type { i64, %struct.TYPE_12__*, i32 }

@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@POOL_STATE_SPARE = common dso_local global i64 0, align 8
@POOL_STATE_L2CACHE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_TOP_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_TXG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, i8*, i32*)* @add_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_config(i32* %0, %struct.TYPE_9__* %1, i8* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_8__*, align 8
  %17 = alloca %struct.TYPE_12__*, align 8
  %18 = alloca %struct.TYPE_11__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load i32*, i32** %9, align 8
  %20 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %21 = call i64 @nvlist_lookup_uint64(i32* %19, i32 %20, i64* %14)
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %65

23:                                               ; preds = %4
  %24 = load i64, i64* %14, align 8
  %25 = load i64, i64* @POOL_STATE_SPARE, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %23
  %28 = load i64, i64* %14, align 8
  %29 = load i64, i64* @POOL_STATE_L2CACHE, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %65

31:                                               ; preds = %27, %23
  %32 = load i32*, i32** %9, align 8
  %33 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %34 = call i64 @nvlist_lookup_uint64(i32* %32, i32 %33, i64* %11)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %65

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  %38 = call i8* @zfs_alloc(i32* %37, i32 24)
  %39 = bitcast i8* %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %18, align 8
  %40 = icmp eq %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 -1, i32* %5, align 4
  br label %242

42:                                               ; preds = %36
  %43 = load i32*, i32** %6, align 8
  %44 = load i8*, i8** %8, align 8
  %45 = call i8* @zfs_strdup(i32* %43, i8* %44)
  %46 = bitcast i8* %45 to i32*
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 2
  store i32* %46, i32** %48, align 8
  %49 = icmp eq i32* %46, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %42
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %52 = call i32 @free(%struct.TYPE_11__* %51)
  store i32 -1, i32* %5, align 4
  br label %242

53:                                               ; preds = %42
  %54 = load i64, i64* %11, align 8
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %58, align 8
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  store %struct.TYPE_11__* %59, %struct.TYPE_11__** %61, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  store %struct.TYPE_11__* %62, %struct.TYPE_11__** %64, align 8
  store i32 0, i32* %5, align 4
  br label %242

65:                                               ; preds = %31, %27, %4
  %66 = load i32*, i32** %9, align 8
  %67 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %68 = call i64 @nvlist_lookup_uint64(i32* %66, i32 %67, i64* %10)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %88, label %70

70:                                               ; preds = %65
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %73 = call i64 @nvlist_lookup_uint64(i32* %71, i32 %72, i64* %11)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %88, label %75

75:                                               ; preds = %70
  %76 = load i32*, i32** %9, align 8
  %77 = load i32, i32* @ZPOOL_CONFIG_TOP_GUID, align 4
  %78 = call i64 @nvlist_lookup_uint64(i32* %76, i32 %77, i64* %12)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %75
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* @ZPOOL_CONFIG_POOL_TXG, align 4
  %83 = call i64 @nvlist_lookup_uint64(i32* %81, i32 %82, i64* %13)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %88, label %85

85:                                               ; preds = %80
  %86 = load i64, i64* %13, align 8
  %87 = icmp eq i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %85, %80, %75, %70, %65
  store i32 0, i32* %5, align 4
  br label %242

89:                                               ; preds = %85
  %90 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %91, align 8
  store %struct.TYPE_10__* %92, %struct.TYPE_10__** %15, align 8
  br label %93

93:                                               ; preds = %104, %89
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %95 = icmp ne %struct.TYPE_10__* %94, null
  br i1 %95, label %96, label %108

96:                                               ; preds = %93
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %10, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %96
  br label %108

103:                                              ; preds = %96
  br label %104

104:                                              ; preds = %103
  %105 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %106 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %105, i32 0, i32 2
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %106, align 8
  store %struct.TYPE_10__* %107, %struct.TYPE_10__** %15, align 8
  br label %93

108:                                              ; preds = %102, %93
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %110 = icmp eq %struct.TYPE_10__* %109, null
  br i1 %110, label %111, label %129

111:                                              ; preds = %108
  %112 = load i32*, i32** %6, align 8
  %113 = call i8* @zfs_alloc(i32* %112, i32 24)
  %114 = bitcast i8* %113 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %114, %struct.TYPE_10__** %15, align 8
  %115 = icmp eq %struct.TYPE_10__* %114, null
  br i1 %115, label %116, label %117

116:                                              ; preds = %111
  store i32 -1, i32* %5, align 4
  br label %242

117:                                              ; preds = %111
  %118 = load i64, i64* %10, align 8
  %119 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %120 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %119, i32 0, i32 0
  store i64 %118, i64* %120, align 8
  %121 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %122, align 8
  %124 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %125 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %124, i32 0, i32 2
  store %struct.TYPE_10__* %123, %struct.TYPE_10__** %125, align 8
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %127, i32 0, i32 1
  store %struct.TYPE_10__* %126, %struct.TYPE_10__** %128, align 8
  br label %129

129:                                              ; preds = %117, %108
  %130 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %131, align 8
  store %struct.TYPE_8__* %132, %struct.TYPE_8__** %16, align 8
  br label %133

133:                                              ; preds = %144, %129
  %134 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %135 = icmp ne %struct.TYPE_8__* %134, null
  br i1 %135, label %136, label %148

136:                                              ; preds = %133
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* %12, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %136
  br label %148

143:                                              ; preds = %136
  br label %144

144:                                              ; preds = %143
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 2
  %147 = load %struct.TYPE_8__*, %struct.TYPE_8__** %146, align 8
  store %struct.TYPE_8__* %147, %struct.TYPE_8__** %16, align 8
  br label %133

148:                                              ; preds = %142, %133
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %150 = icmp eq %struct.TYPE_8__* %149, null
  br i1 %150, label %151, label %169

151:                                              ; preds = %148
  %152 = load i32*, i32** %6, align 8
  %153 = call i8* @zfs_alloc(i32* %152, i32 24)
  %154 = bitcast i8* %153 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %154, %struct.TYPE_8__** %16, align 8
  %155 = icmp eq %struct.TYPE_8__* %154, null
  br i1 %155, label %156, label %157

156:                                              ; preds = %151
  store i32 -1, i32* %5, align 4
  br label %242

157:                                              ; preds = %151
  %158 = load i64, i64* %12, align 8
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %162 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %161, i32 0, i32 1
  %163 = load %struct.TYPE_8__*, %struct.TYPE_8__** %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 2
  store %struct.TYPE_8__* %163, %struct.TYPE_8__** %165, align 8
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 1
  store %struct.TYPE_8__* %166, %struct.TYPE_8__** %168, align 8
  br label %169

169:                                              ; preds = %157, %148
  %170 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %171, align 8
  store %struct.TYPE_12__* %172, %struct.TYPE_12__** %17, align 8
  br label %173

173:                                              ; preds = %184, %169
  %174 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %175 = icmp ne %struct.TYPE_12__* %174, null
  br i1 %175, label %176, label %188

176:                                              ; preds = %173
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load i64, i64* %13, align 8
  %181 = icmp eq i64 %179, %180
  br i1 %181, label %182, label %183

182:                                              ; preds = %176
  br label %188

183:                                              ; preds = %176
  br label %184

184:                                              ; preds = %183
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_12__*, %struct.TYPE_12__** %186, align 8
  store %struct.TYPE_12__* %187, %struct.TYPE_12__** %17, align 8
  br label %173

188:                                              ; preds = %182, %173
  %189 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %190 = icmp eq %struct.TYPE_12__* %189, null
  br i1 %190, label %191, label %213

191:                                              ; preds = %188
  %192 = load i32*, i32** %6, align 8
  %193 = call i8* @zfs_alloc(i32* %192, i32 24)
  %194 = bitcast i8* %193 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %194, %struct.TYPE_12__** %17, align 8
  %195 = icmp eq %struct.TYPE_12__* %194, null
  br i1 %195, label %196, label %197

196:                                              ; preds = %191
  store i32 -1, i32* %5, align 4
  br label %242

197:                                              ; preds = %191
  %198 = load i64, i64* %13, align 8
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 0
  store i64 %198, i64* %200, align 8
  %201 = load i32*, i32** %9, align 8
  %202 = call i32 @fnvlist_dup(i32* %201)
  %203 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %204 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %203, i32 0, i32 2
  store i32 %202, i32* %204, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 1
  %207 = load %struct.TYPE_12__*, %struct.TYPE_12__** %206, align 8
  %208 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 1
  store %struct.TYPE_12__* %207, %struct.TYPE_12__** %209, align 8
  %210 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %211 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %212 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %211, i32 0, i32 1
  store %struct.TYPE_12__* %210, %struct.TYPE_12__** %212, align 8
  br label %213

213:                                              ; preds = %197, %188
  %214 = load i32*, i32** %6, align 8
  %215 = call i8* @zfs_alloc(i32* %214, i32 24)
  %216 = bitcast i8* %215 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %216, %struct.TYPE_11__** %18, align 8
  %217 = icmp eq %struct.TYPE_11__* %216, null
  br i1 %217, label %218, label %219

218:                                              ; preds = %213
  store i32 -1, i32* %5, align 4
  br label %242

219:                                              ; preds = %213
  %220 = load i32*, i32** %6, align 8
  %221 = load i8*, i8** %8, align 8
  %222 = call i8* @zfs_strdup(i32* %220, i8* %221)
  %223 = bitcast i8* %222 to i32*
  %224 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 2
  store i32* %223, i32** %225, align 8
  %226 = icmp eq i32* %223, null
  br i1 %226, label %227, label %230

227:                                              ; preds = %219
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %229 = call i32 @free(%struct.TYPE_11__* %228)
  store i32 -1, i32* %5, align 4
  br label %242

230:                                              ; preds = %219
  %231 = load i64, i64* %11, align 8
  %232 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %233 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %232, i32 0, i32 1
  store i64 %231, i64* %233, align 8
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 0
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %235, align 8
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  store %struct.TYPE_11__* %236, %struct.TYPE_11__** %238, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %240 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %240, i32 0, i32 0
  store %struct.TYPE_11__* %239, %struct.TYPE_11__** %241, align 8
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %230, %227, %218, %196, %156, %116, %88, %53, %50, %41
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i64*) #1

declare dso_local i8* @zfs_alloc(i32*, i32) #1

declare dso_local i8* @zfs_strdup(i32*, i8*) #1

declare dso_local i32 @free(%struct.TYPE_11__*) #1

declare dso_local i32 @fnvlist_dup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
