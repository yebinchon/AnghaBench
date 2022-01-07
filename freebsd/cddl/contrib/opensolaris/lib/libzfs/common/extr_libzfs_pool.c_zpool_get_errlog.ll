; ModuleID = '/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_errlog.c'
source_filename = "/home/carl/AnghaBench/freebsd/cddl/contrib/opensolaris/lib/libzfs/common/extr_libzfs_pool.c_zpool_get_errlog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_12__*, i32, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32, i32 }
%struct.TYPE_11__ = type { i64, i64 }

@ZPOOL_CONFIG_ERRCOUNT = common dso_local global i32 0, align 4
@ZFS_IOC_ERROR_LOG = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@zbookmark_mem_compare = common dso_local global i32 0, align 4
@KM_SLEEP = common dso_local global i32 0, align 4
@NV_UNIQUE_NAME = common dso_local global i32 0, align 4
@ZPOOL_ERR_DATASET = common dso_local global i32 0, align 4
@ZPOOL_ERR_OBJECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ejk\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zpool_get_errlog(%struct.TYPE_9__* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca %struct.TYPE_10__, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store i32** %1, i32*** %5, align 8
  %12 = bitcast %struct.TYPE_10__* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %8, align 8
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @ZPOOL_CONFIG_ERRCOUNT, align 4
  %17 = call i64 @nvlist_lookup_uint64(i32 %15, i32 %16, i32* %7)
  %18 = icmp eq i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i32 @verify(i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %208

24:                                               ; preds = %2
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %29, 16
  %31 = trunc i64 %30 to i32
  %32 = call i8* @zfs_alloc(%struct.TYPE_12__* %27, i32 %31)
  %33 = ptrtoint i8* %32 to i64
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %33, i64* %34, align 8
  %35 = icmp eq i64 %33, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %208

37:                                               ; preds = %24
  %38 = load i32, i32* %7, align 4
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  store i32 %38, i32* %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strcpy(i32 %41, i32 %44)
  br label %46

46:                                               ; preds = %84, %37
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ZFS_IOC_ERROR_LOG, align 4
  %53 = call i64 @ioctl(i32 %51, i32 %52, %struct.TYPE_10__* %6)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %83

55:                                               ; preds = %46
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @free(i8* %58)
  %60 = load i64, i64* @errno, align 8
  %61 = load i64, i64* @ENOMEM, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %81

63:                                               ; preds = %55
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  store i32 %65, i32* %7, align 4
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = mul i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = call i8* @zfs_alloc(%struct.TYPE_12__* %68, i32 %72)
  store i8* %73, i8** %10, align 8
  %74 = load i8*, i8** %10, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %63
  store i32 -1, i32* %3, align 4
  br label %208

77:                                               ; preds = %63
  %78 = load i8*, i8** %10, align 8
  %79 = ptrtoint i8* %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  store i64 %79, i64* %80, align 8
  br label %82

81:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %208

82:                                               ; preds = %77
  br label %84

83:                                               ; preds = %46
  br label %85

84:                                               ; preds = %82
  br label %46

85:                                               ; preds = %83
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to %struct.TYPE_11__*
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i64 %91
  store %struct.TYPE_11__* %92, %struct.TYPE_11__** %8, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sub nsw i32 %95, %94
  store i32 %96, i32* %7, align 4
  %97 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @zbookmark_mem_compare, align 4
  %100 = call i32 @qsort(%struct.TYPE_11__* %97, i32 %98, i32 16, i32 %99)
  %101 = load i32**, i32*** %5, align 8
  %102 = load i32, i32* @KM_SLEEP, align 4
  %103 = call i64 @nvlist_alloc(i32** %101, i32 0, i32 %102)
  %104 = icmp eq i64 %103, 0
  %105 = zext i1 %104 to i32
  %106 = call i32 @verify(i32 %105)
  store i32 0, i32* %9, align 4
  br label %107

107:                                              ; preds = %191, %85
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp slt i32 %108, %109
  br i1 %110, label %111, label %194

111:                                              ; preds = %107
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %116 = load i32, i32* %9, align 4
  %117 = sub nsw i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %123 = load i32, i32* %9, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = icmp eq i64 %121, %127
  br i1 %128, label %129, label %145

129:                                              ; preds = %114
  %130 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %131 = load i32, i32* %9, align 4
  %132 = sub nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %130, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %136, %142
  br i1 %143, label %144, label %145

144:                                              ; preds = %129
  br label %191

145:                                              ; preds = %129, %114, %111
  %146 = load i32, i32* @NV_UNIQUE_NAME, align 4
  %147 = load i32, i32* @KM_SLEEP, align 4
  %148 = call i64 @nvlist_alloc(i32** %11, i32 %146, i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %145
  br label %199

151:                                              ; preds = %145
  %152 = load i32*, i32** %11, align 8
  %153 = load i32, i32* @ZPOOL_ERR_DATASET, align 4
  %154 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %155 = load i32, i32* %9, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %154, i64 %156
  %158 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = call i64 @nvlist_add_uint64(i32* %152, i32 %153, i64 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %165

162:                                              ; preds = %151
  %163 = load i32*, i32** %11, align 8
  %164 = call i32 @nvlist_free(i32* %163)
  br label %199

165:                                              ; preds = %151
  %166 = load i32*, i32** %11, align 8
  %167 = load i32, i32* @ZPOOL_ERR_OBJECT, align 4
  %168 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %169 = load i32, i32* %9, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %168, i64 %170
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i64, i64* %172, align 8
  %174 = call i64 @nvlist_add_uint64(i32* %166, i32 %167, i64 %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %165
  %177 = load i32*, i32** %11, align 8
  %178 = call i32 @nvlist_free(i32* %177)
  br label %199

179:                                              ; preds = %165
  %180 = load i32**, i32*** %5, align 8
  %181 = load i32*, i32** %180, align 8
  %182 = load i32*, i32** %11, align 8
  %183 = call i64 @nvlist_add_nvlist(i32* %181, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* %182)
  %184 = icmp ne i64 %183, 0
  br i1 %184, label %185, label %188

185:                                              ; preds = %179
  %186 = load i32*, i32** %11, align 8
  %187 = call i32 @nvlist_free(i32* %186)
  br label %199

188:                                              ; preds = %179
  %189 = load i32*, i32** %11, align 8
  %190 = call i32 @nvlist_free(i32* %189)
  br label %191

191:                                              ; preds = %188, %144
  %192 = load i32, i32* %9, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %9, align 4
  br label %107

194:                                              ; preds = %107
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = call i32 @free(i8* %197)
  store i32 0, i32* %3, align 4
  br label %208

199:                                              ; preds = %185, %176, %162, %150
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %6, i32 0, i32 0
  %201 = load i64, i64* %200, align 8
  %202 = inttoptr i64 %201 to i8*
  %203 = call i32 @free(i8* %202)
  %204 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %205 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %204, i32 0, i32 0
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %205, align 8
  %207 = call i32 @no_memory(%struct.TYPE_12__* %206)
  store i32 %207, i32* %3, align 4
  br label %208

208:                                              ; preds = %199, %194, %81, %76, %36, %23
  %209 = load i32, i32* %3, align 4
  ret i32 %209
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @verify(i32) #2

declare dso_local i64 @nvlist_lookup_uint64(i32, i32, i32*) #2

declare dso_local i8* @zfs_alloc(%struct.TYPE_12__*, i32) #2

declare dso_local i32 @strcpy(i32, i32) #2

declare dso_local i64 @ioctl(i32, i32, %struct.TYPE_10__*) #2

declare dso_local i32 @free(i8*) #2

declare dso_local i32 @qsort(%struct.TYPE_11__*, i32, i32, i32) #2

declare dso_local i64 @nvlist_alloc(i32**, i32, i32) #2

declare dso_local i64 @nvlist_add_uint64(i32*, i32, i64) #2

declare dso_local i32 @nvlist_free(i32*) #2

declare dso_local i64 @nvlist_add_nvlist(i32*, i8*, i32*) #2

declare dso_local i32 @no_memory(%struct.TYPE_12__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
