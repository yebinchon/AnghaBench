; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_zpool_in_use.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_import.c_zpool_in_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32*, i32, i32 }

@B_FALSE = common dso_local global i64 0, align 8
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_POOL_STATE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_GUID = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_NAME = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_POOL_GUID = common dso_local global i32 0, align 4
@ZPOOL_PROP_READONLY = common dso_local global i32 0, align 4
@B_TRUE = common dso_local global i64 0, align 8
@ZPOOL_CONFIG_VDEV_TREE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_IS_SPARE = common dso_local global i32 0, align 4
@POOL_STATE_POTENTIALLY_ACTIVE = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_SPARES = common dso_local global i32 0, align 4
@find_aux = common dso_local global i32 0, align 4
@ZPOOL_CONFIG_L2CACHE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_in_use(i32* %0, i32 %1, i64* %2, i8** %3, i64* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i8**, align 8
  %11 = alloca i64*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_3__, align 8
  %22 = alloca i64, align 8
  %23 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i64* %2, i64** %9, align 8
  store i8** %3, i8*** %10, align 8
  store i64* %4, i64** %11, align 8
  %24 = bitcast %struct.TYPE_3__* %21 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %24, i8 0, i64 24, i1 false)
  %25 = load i64, i64* @B_FALSE, align 8
  %26 = load i64*, i64** %11, align 8
  store i64 %25, i64* %26, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i64 @zpool_read_label(i32 %27, i32** %12)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %5
  %31 = load i64, i64* @errno, align 8
  %32 = load i64, i64* @ENOMEM, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32*, i32** %7, align 8
  %36 = call i32 @no_memory(i32* %35)
  store i32 -1, i32* %6, align 4
  br label %232

37:                                               ; preds = %30, %5
  %38 = load i32*, i32** %12, align 8
  %39 = icmp eq i32* %38, null
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 0, i32* %6, align 4
  br label %232

41:                                               ; preds = %37
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* @ZPOOL_CONFIG_POOL_STATE, align 4
  %44 = call i64 @nvlist_lookup_uint64(i32* %42, i32 %43, i32* %19)
  %45 = icmp eq i64 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @verify(i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* @ZPOOL_CONFIG_GUID, align 4
  %50 = call i64 @nvlist_lookup_uint64(i32* %48, i32 %49, i32* %16)
  %51 = icmp eq i64 %50, 0
  %52 = zext i1 %51 to i32
  %53 = call i32 @verify(i32 %52)
  %54 = load i32, i32* %19, align 4
  %55 = icmp ne i32 %54, 128
  br i1 %55, label %56, label %72

56:                                               ; preds = %41
  %57 = load i32, i32* %19, align 4
  %58 = icmp ne i32 %57, 129
  br i1 %58, label %59, label %72

59:                                               ; preds = %56
  %60 = load i32*, i32** %12, align 8
  %61 = load i32, i32* @ZPOOL_CONFIG_POOL_NAME, align 4
  %62 = call i64 @nvlist_lookup_string(i32* %60, i32 %61, i8** %13)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @verify(i32 %64)
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* @ZPOOL_CONFIG_POOL_GUID, align 4
  %68 = call i64 @nvlist_lookup_uint64(i32* %66, i32 %67, i32* %15)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @verify(i32 %70)
  br label %72

72:                                               ; preds = %59, %56, %41
  %73 = load i32, i32* %19, align 4
  switch i32 %73, label %193 [
    i32 130, label %74
    i32 131, label %99
    i32 128, label %155
    i32 129, label %174
  ]

74:                                               ; preds = %72
  %75 = load i32*, i32** %7, align 8
  %76 = load i8*, i8** %13, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @pool_active(i32* %75, i8* %76, i32 %77, i64* %22)
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load i64, i64* %22, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %97

83:                                               ; preds = %80
  %84 = load i32*, i32** %7, align 8
  %85 = load i8*, i8** %13, align 8
  %86 = call i32* @zpool_open_canfail(i32* %84, i8* %85)
  store i32* %86, i32** %17, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %97

88:                                               ; preds = %83
  %89 = load i32*, i32** %17, align 8
  %90 = load i32, i32* @ZPOOL_PROP_READONLY, align 4
  %91 = call i32 @zpool_get_prop_int(i32* %89, i32 %90, i32* null)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 131, i32* %19, align 4
  br label %94

94:                                               ; preds = %93, %88
  %95 = load i32*, i32** %17, align 8
  %96 = call i32 @zpool_close(i32* %95)
  br label %97

97:                                               ; preds = %94, %83, %80, %74
  %98 = load i64, i64* @B_TRUE, align 8
  store i64 %98, i64* %14, align 8
  br label %195

99:                                               ; preds = %72
  %100 = load i32*, i32** %7, align 8
  %101 = load i8*, i8** %13, align 8
  %102 = load i32, i32* %15, align 4
  %103 = call i32 @pool_active(i32* %100, i8* %101, i32 %102, i64* %22)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %108

105:                                              ; preds = %99
  %106 = load i32*, i32** %12, align 8
  %107 = call i32 @nvlist_free(i32* %106)
  store i32 -1, i32* %6, align 4
  br label %232

108:                                              ; preds = %99
  %109 = load i64, i64* %22, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %151

111:                                              ; preds = %108
  %112 = load i32*, i32** %7, align 8
  %113 = load i8*, i8** %13, align 8
  %114 = call i32* @zpool_open_canfail(i32* %112, i8* %113)
  store i32* %114, i32** %17, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %130

116:                                              ; preds = %111
  %117 = load i32*, i32** %17, align 8
  %118 = call i32* @zpool_get_config(i32* %117, i32* null)
  store i32* %118, i32** %18, align 8
  %119 = icmp ne i32* %118, null
  br i1 %119, label %120, label %130

120:                                              ; preds = %116
  %121 = load i32*, i32** %18, align 8
  %122 = load i32, i32* @ZPOOL_CONFIG_VDEV_TREE, align 4
  %123 = call i32 @nvlist_lookup_nvlist(i32* %121, i32 %122, i32** %23)
  %124 = icmp eq i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @verify(i32 %125)
  %127 = load i32*, i32** %23, align 8
  %128 = load i32, i32* %16, align 4
  %129 = call i64 @find_guid(i32* %127, i32 %128)
  store i64 %129, i64* %14, align 8
  br label %132

130:                                              ; preds = %116, %111
  %131 = load i64, i64* @B_FALSE, align 8
  store i64 %131, i64* %14, align 8
  br label %132

132:                                              ; preds = %130, %120
  %133 = load i64, i64* %14, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %144

135:                                              ; preds = %132
  %136 = load i32*, i32** %12, align 8
  %137 = load i32, i32* @ZPOOL_CONFIG_IS_SPARE, align 4
  %138 = call i64 @nvlist_lookup_uint64(i32* %136, i32 %137, i32* %20)
  %139 = icmp eq i64 %138, 0
  br i1 %139, label %140, label %144

140:                                              ; preds = %135
  %141 = load i32, i32* %20, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %140
  store i32 128, i32* %19, align 4
  br label %144

144:                                              ; preds = %143, %140, %135, %132
  %145 = load i32*, i32** %17, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %150

147:                                              ; preds = %144
  %148 = load i32*, i32** %17, align 8
  %149 = call i32 @zpool_close(i32* %148)
  br label %150

150:                                              ; preds = %147, %144
  br label %154

151:                                              ; preds = %108
  %152 = load i32, i32* @POOL_STATE_POTENTIALLY_ACTIVE, align 4
  store i32 %152, i32* %19, align 4
  %153 = load i64, i64* @B_TRUE, align 8
  store i64 %153, i64* %14, align 8
  br label %154

154:                                              ; preds = %151, %150
  br label %195

155:                                              ; preds = %72
  %156 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32* null, i32** %156, align 8
  %157 = load i32, i32* %16, align 4
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %157, i32* %158, align 8
  %159 = load i32, i32* @ZPOOL_CONFIG_SPARES, align 4
  %160 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %159, i32* %160, align 8
  %161 = load i32*, i32** %7, align 8
  %162 = load i32, i32* @find_aux, align 4
  %163 = call i32 @zpool_iter(i32* %161, i32 %162, %struct.TYPE_3__* %21)
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %165, label %171

165:                                              ; preds = %155
  %166 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %167 = load i32*, i32** %166, align 8
  %168 = call i64 @zpool_get_name(i32* %167)
  %169 = inttoptr i64 %168 to i8*
  store i8* %169, i8** %13, align 8
  %170 = load i64, i64* @B_TRUE, align 8
  store i64 %170, i64* %14, align 8
  br label %173

171:                                              ; preds = %155
  %172 = load i64, i64* @B_FALSE, align 8
  store i64 %172, i64* %14, align 8
  br label %173

173:                                              ; preds = %171, %165
  br label %195

174:                                              ; preds = %72
  %175 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  store i32* null, i32** %175, align 8
  %176 = load i32, i32* %16, align 4
  %177 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store i32 %176, i32* %177, align 8
  %178 = load i32, i32* @ZPOOL_CONFIG_L2CACHE, align 4
  %179 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 2
  store i32 %178, i32* %179, align 8
  %180 = load i32*, i32** %7, align 8
  %181 = load i32, i32* @find_aux, align 4
  %182 = call i32 @zpool_iter(i32* %180, i32 %181, %struct.TYPE_3__* %21)
  %183 = icmp eq i32 %182, 1
  br i1 %183, label %184, label %190

184:                                              ; preds = %174
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = call i64 @zpool_get_name(i32* %186)
  %188 = inttoptr i64 %187 to i8*
  store i8* %188, i8** %13, align 8
  %189 = load i64, i64* @B_TRUE, align 8
  store i64 %189, i64* %14, align 8
  br label %192

190:                                              ; preds = %174
  %191 = load i64, i64* @B_FALSE, align 8
  store i64 %191, i64* %14, align 8
  br label %192

192:                                              ; preds = %190, %184
  br label %195

193:                                              ; preds = %72
  %194 = load i64, i64* @B_FALSE, align 8
  store i64 %194, i64* %14, align 8
  br label %195

195:                                              ; preds = %193, %192, %173, %154, %97
  %196 = load i64, i64* %14, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %219

198:                                              ; preds = %195
  %199 = load i32*, i32** %7, align 8
  %200 = load i8*, i8** %13, align 8
  %201 = call i8* @zfs_strdup(i32* %199, i8* %200)
  %202 = load i8**, i8*** %10, align 8
  store i8* %201, i8** %202, align 8
  %203 = icmp eq i8* %201, null
  br i1 %203, label %204, label %215

204:                                              ; preds = %198
  %205 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %206 = load i32*, i32** %205, align 8
  %207 = icmp ne i32* %206, null
  br i1 %207, label %208, label %212

208:                                              ; preds = %204
  %209 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %210 = load i32*, i32** %209, align 8
  %211 = call i32 @zpool_close(i32* %210)
  br label %212

212:                                              ; preds = %208, %204
  %213 = load i32*, i32** %12, align 8
  %214 = call i32 @nvlist_free(i32* %213)
  store i32 -1, i32* %6, align 4
  br label %232

215:                                              ; preds = %198
  %216 = load i32, i32* %19, align 4
  %217 = sext i32 %216 to i64
  %218 = load i64*, i64** %9, align 8
  store i64 %217, i64* %218, align 8
  br label %219

219:                                              ; preds = %215, %195
  %220 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = icmp ne i32* %221, null
  br i1 %222, label %223, label %227

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %225 = load i32*, i32** %224, align 8
  %226 = call i32 @zpool_close(i32* %225)
  br label %227

227:                                              ; preds = %223, %219
  %228 = load i32*, i32** %12, align 8
  %229 = call i32 @nvlist_free(i32* %228)
  %230 = load i64, i64* %14, align 8
  %231 = load i64*, i64** %11, align 8
  store i64 %230, i64* %231, align 8
  store i32 0, i32* %6, align 4
  br label %232

232:                                              ; preds = %227, %212, %105, %40, %34
  %233 = load i32, i32* %6, align 4
  ret i32 %233
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @zpool_read_label(i32, i32**) #2

declare dso_local i32 @no_memory(i32*) #2

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32*, i32, i32*) #2

declare dso_local i64 @nvlist_lookup_string(i32*, i32, i8**) #2

declare dso_local i32 @pool_active(i32*, i8*, i32, i64*) #2

declare dso_local i32* @zpool_open_canfail(i32*, i8*) #2

declare dso_local i32 @zpool_get_prop_int(i32*, i32, i32*) #2

declare dso_local i32 @zpool_close(i32*) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i32* @zpool_get_config(i32*, i32*) #2

declare dso_local i32 @nvlist_lookup_nvlist(i32*, i32, i32**) #2

declare dso_local i64 @find_guid(i32*, i32) #2

declare dso_local i32 @zpool_iter(i32*, i32, %struct.TYPE_3__*) #2

declare dso_local i64 @zpool_get_name(i32*) #2

declare dso_local i8* @zfs_strdup(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
